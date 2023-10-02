//
//  TabBarButton.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct TabBarButton: View {
    
    var icon: String
    var text: String
    var isSelected: Bool
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Text(text)
                    .font(.footnote)
                    .foregroundColor(Color.white)
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .shadow(color: .white, radius: isSelected ? 0.2 : 0)
            .opacity(isSelected ? 1 : 0.5)
        }
    }
}
