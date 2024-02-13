//
//  HomeView.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct HomeTab: View {
    var body: some View {
        ZStack{
            ScrollView {
                NavigationBar(icon: "simon-icon", title: "Nefture", description: "Your real-time Web3 protection")
                
                Text("Lazy-Loaded Firebase HStack ScrollVew (SwiftUI) ")
                    .foregroundColor(.white)
                    .padding()
                
                HorizontalImagesView("News")
                
                Text("test notifications through firebase call")
                    .foregroundColor(.white)
                    .padding()
                
                Button("Send Notification in 3 seconds") {
                    dispatchNotification()
                }
                .padding()
                .onAppear(){
                    requestNotificationPermission()
                }
            }
        }
    }
}

struct HorizontalImagesView: View {
    @StateObject private var fireimageLoader = FireImageLoader()
    
    var fetchPath: String

    init(_ fetchPath: String) {
        self.fetchPath = fetchPath
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(fireimageLoader.images, id: \.self) { image in
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                }
            }
        }
        .onAppear {
            fireimageLoader.fetchAllImages(from: fetchPath)
        }
    }
}
