//
//  CryptoWallet.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/6/23.
//

import SwiftUI

struct CryptoWallet: View {
    
    var text: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.bottom)
                .frame(width: 100, height: 25)
            
            Text(text)
                .font(.footnote)
                .foregroundColor(Color.white)
        }
    }
}
