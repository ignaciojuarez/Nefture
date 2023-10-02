//
//  NeftureView.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct NeftureTab: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{  
                    NavigationBar(icon: "simon-icon", title: "Nefture+", description: "Take your security your the next level")
                }
            }
        }
    }
}
