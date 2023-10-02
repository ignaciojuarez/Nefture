//
//  NeftureApp.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/4/23.
//

import SwiftUI
import Firebase

@main
struct NeftureApp: App {
    var body: some Scene {
        WindowGroup {
            AppView()
        }
    }
    
    init() {
        FirebaseApp.configure()
    }
}
