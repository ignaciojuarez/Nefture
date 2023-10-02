//
//  ScanNowButton.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/7/23.
//

import SwiftUI

struct ScanButton: View {
    
    @State var score: Float = 0
    @State var isAnalyzing = false
    @State var scanCompleted = false
    @State var pulsate = false
    
    var body: some View {
        VStack {
            if scanCompleted {
                //Score
                ZStack {
                    Circle()
                        .stroke(lineWidth: 15)
                        .fill(Color.gray)
                        .frame(width: 180, height: 180)
                        .opacity(0.3)
                    
                    Circle()
                        .trim(from: 0.0, to: CGFloat (min(self.score, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap:.round, lineJoin: .round))
                        .foregroundColor(.green)
                        .rotationEffect (Angle (degrees: 270))
                        .animation(.easeInOut, value: score)
                        .onAppear() {
                            self.score = 0.72
                            Extras.generateHapticFeedback(style: .rigid)
                        }
                        .frame(width: 180, height: 180)
                    
                    Text("72%")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .opacity(0.8)
                }
                .padding()
            }
            
            if !scanCompleted {
                
                // Scan Wallet Button
                Button(action: startScanning) {
                    
                    ZStack {
                        Circle()
                            .fill(Color.blue)
                            .scaleEffect(pulsate ? 1.1 : 0.9)
                            .frame(width: 220, height: 220)
                            .opacity(0.3)
                            .animation(isAnalyzing ? Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true) : .default)
                        
                        Circle()
                            .fill(Color.blue)
                            .scaleEffect(pulsate ? 1.1 : 0.9)
                            .frame(width: 180, height: 180)
                            .opacity(0.3)
                            .animation(isAnalyzing ? Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true) : .default)
                        
                        Circle()
                            .fill(Color.blue)
                            .scaleEffect(pulsate ? 1.1 : 0.9)
                            .frame(width: 140, height: 140)
                            .opacity(0.5)
                            .animation(isAnalyzing ? Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true) : .default)
                        
                        Text(isAnalyzing ? "Analyzing" : "Scan Wallet")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .opacity(0.8)
                    }
                }
            }
        }
    }
    
    func startScanning() {
        
        Extras.generateHapticFeedback(style: .rigid)
        isAnalyzing = true
        pulsate.toggle()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.isAnalyzing = false
            self.scanCompleted = true
            self.pulsate = false
        }
    }
}
