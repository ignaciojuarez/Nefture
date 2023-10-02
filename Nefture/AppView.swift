//
//  ContentView.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/4/23.
//

import SwiftUI

struct AppView: View {
    
    @State private var selectedTab: Tabs = .home
    
    var body: some View {
            
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack {
                tabContent(selectedTab)
                    .padding([.top, .leading, .trailing])

                Spacer()
                TabBar(selectedTab: $selectedTab)
                
            }
        }
    }
    
    private func tabContent(_ tab: Tabs) -> some View {
        switch tab {
        case .home: return AnyView(HomeTab())
        case .alerts: return AnyView(AlertsTab())
        case .wallet: return AnyView(WalletTab())
        case .nefture: return AnyView(NeftureTab())
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
