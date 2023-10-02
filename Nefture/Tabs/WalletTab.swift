//
//  WalletView.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct WalletTab: View {
    
    @State private var monthlyReport = false
    @State private var riskyApprovalsAlert = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    
                    NavigationBar(icon: "simon-icon", title: "Wallet", description: "Check your wallet security")
                    
                    
                    // Wallets
                    ZStack{
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.bottom)
                            .frame(height: 100)
                        
                        VStack{
                            HStack{
                                
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: 8, height: 8)
                                    .shadow(color: .green, radius: 5)
                                    .opacity(0.9)
                                
                                Image("metamask-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 28)
                                
                                Text("Simon's Wallet")
                                    .font(.callout)
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                                
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.2))
                                        .cornerRadius(10)
                                        .edgesIgnoringSafeArea(.bottom)
                                        .frame(width: 40, height: 40)
                                    
                                    Image("downarrow-icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 18, height: 18)
                                }
                                
                            }
                            
                            HStack{
                                
                                CryptoWallet(text: "0X32...9483")
                                
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.2))
                                        .cornerRadius(20)
                                        .edgesIgnoringSafeArea(.bottom)
                                        .frame(width: 120, height: 25)
                                    HStack{
                                        Image("bitcoin-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 18, height: 18)
                                        
                                        Text("0.3932 BTC")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                        }.padding()
                    }.padding(.bottom)
                    
                    ScanButton()
                    
                    // Report
                    ZStack{
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.bottom)
                            .frame(height: 110)
                        
                        VStack{
                            HStack{
                                Toggle("Monthly Report", isOn: $monthlyReport)
                                    .font(.callout)
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                            }
                            
                            Spacer()
                            
                            HStack{
                                Toggle("High Risk Authorization", isOn: $riskyApprovalsAlert)
                                    .font(.callout)
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                            }
                        }.padding()
                    }
                }
            }
        }
    }
}
