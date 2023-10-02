//
//  HomeView.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct HomeTab: View {
    
    @StateObject private var imageLoader = ImageLoader()
    
    var body: some View {
        ZStack{
            ScrollView {
                
                Text("some news? explainer videos?")
                    .foregroundColor(.white)
                    .padding()
                
                HorizontalImagesView("News")
                
                Text("some recap, info, scores? minimized alerts on top?, nfts?")
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
    @StateObject private var imageLoader = ImageLoader()
    
    var fetchPath: String

    init(_ fetchPath: String) {
        self.fetchPath = fetchPath
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(imageLoader.images, id: \.self) { image in
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                }
            }
        }
        .onAppear {
            imageLoader.fetchAllImages(from: fetchPath)
        }
    }
}
