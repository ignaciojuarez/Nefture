//
//  Extras.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/6/23.
//

import SwiftUI

class Extras {
    
    static func generateHapticFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: style).impactOccurred()
    }
}
