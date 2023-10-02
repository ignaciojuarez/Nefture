//
//  TabBar.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/4/23.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case alerts = 1
    case wallet = 2
    case nefture = 3
}

struct TabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.bottom)
            
            HStack{
                
                // Home Button
                Button {
                    selectedTab = .home
                    Extras.generateHapticFeedback(style: .light)
                } label: {
                    TabBarButton(icon: "home-icon", text: "Home", isSelected: selectedTab == .home)
                }
                
                // Wallet Button
                Button {
                    selectedTab = .alerts
                    Extras.generateHapticFeedback(style: .light)
                } label: {
                    TabBarButton(icon: "radar-icon", text: "Alerts", isSelected: selectedTab == .alerts)
                }
                
                // Nefture+ Button
                Button {
                    selectedTab = .wallet
                    Extras.generateHapticFeedback(style: .light)
                } label: {
                    TabBarButton(icon: "wallet-icon", text: "Wallet", isSelected: selectedTab == .wallet)
                }
                
                // Profile Button
                Button {
                    selectedTab = .nefture
                    Extras.generateHapticFeedback(style: .light)
                } label: {
                    TabBarButton(icon: "security-icon", text: "Nefture+", isSelected: selectedTab == .nefture)
                }
            }
        }
        .frame(height: 75.0)
    }
}
