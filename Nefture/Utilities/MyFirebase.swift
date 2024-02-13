//
//  MyFirebase.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/10/23.
//
import SwiftUI
import Firebase
import FirebaseStorage

class FireImageLoader: ObservableObject {
    @Published var images: [UIImage] = []
    private var storage = Storage.storage()

    func fetchAllImages(from folderPath: String) {
        let reference = storage.reference(withPath: folderPath)
        fetchReferences(from: reference)
    }

    private func fetchReferences(from reference: StorageReference) {
        reference.listAll { [weak self] (result, error) in
            guard let self = self else { return }

            if let error = error {
                print("Error fetching references: \(error)")
                return
            }

            guard let items = result?.items else {
                print("Error: could not unwrap the result items.")
                return
            }

            let group = DispatchGroup()
            var loadedImages: [UIImage] = []

            items.forEach { ref in
                group.enter()
                self.loadImage(from: ref) { image in
                    if let image = image {
                        loadedImages.append(image)
                    }
                    group.leave()
                }
            }

            group.notify(queue: .main) {
                self.images = loadedImages
            }
        }
    }

    private func loadImage(from reference: StorageReference, completion: @escaping (UIImage?) -> Void) {
        reference.getData(maxSize: 10 * 1024 * 1024) { data, error in
            if let error = error {
                print("Error fetching image: \(error)")
                completion(nil)
                return
            }

            guard let data = data, let image = UIImage(data: data) else {
                print("Image creation error")
                completion(nil)
                return
            }

            completion(image)
        }
    }
}
