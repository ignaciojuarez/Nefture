//
//  Extras.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/6/23.
//

import UIKit

class Extras {
    
    static func generateHapticFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}
