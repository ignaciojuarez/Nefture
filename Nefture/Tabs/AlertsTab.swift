//
//  ProfileView.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct AlertsTab: View {
    
    @State var selectedFilter = 0
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .gray
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .normal)
    }
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    
                    NavigationBar(icon: "simon-icon", title: "Alerts", description: "Your real-time Web3 protection")
                    
                    Picker(selection: $selectedFilter, label: Text("Filter")) {
                        Text("High Risk").tag(0)
                        Text("Transactions").tag(1)
                        Text("Reports").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.vertical, 2.0)
                    
                        
                    
                    // Wallets
                    ZStack{
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.bottom)
                            .frame(height: 320)
                        
                        VStack{
                            
                            // first row (Icon, Title, Date)
                            HStack{
                                ZStack{
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width: 38, height: 38)
                                        .shadow(color: .red, radius: 4)
                                    
                                    
                                    Image("danger-icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                        
                                }.padding(.trailing, 5.0)
                                
                                Text("High Risk Transaction")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing) {
                                    Text("Today")
                                        .font(.caption2)
                                        .opacity(0.6)
                                        .foregroundColor(Color.white)
                                    
                                    Text("7:32 AM")
                                        .font(.caption2)
                                        .opacity(0.6)
                                        .foregroundColor(Color.white)
                                }
                            }
                            Spacer()
                            
                            
                            //Wallets
                            HStack{
                                ZStack{
                                    HStack{
                                        Image("metamask-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 22, height: 22)
                                        
                                        Text("Simon's Wallet")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                            .lineLimit(1)
                                    }
                                    .padding(.trailing, 175.0)
                                         
                                    Image("yellowrightarrow-icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 22, height: 22)
                                        .shadow(color: .yellow, radius: 8)
                                    
                                    HStack{
                                        Image("anonymous-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 22, height: 22)
                                        
                                        Text("4782....4829")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                            .lineLimit(1)
                                    }
                                    .padding(.leading, 175.0)
                                }
                            }.padding(.horizontal, 5.0)
                            
                            
                            
                            //BTC
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.2))
                                        .cornerRadius(20)
                                        .edgesIgnoringSafeArea(.bottom)
                                        .frame(width: 120, height: 30)
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
                                
                                //Gas
                                ZStack{
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.2))
                                        .cornerRadius(20)
                                        .edgesIgnoringSafeArea(.bottom)
                                        .frame(width: 120, height: 30)
                                    HStack{
                                        Image("gas-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 18, height: 18)
                                        
                                        Text("0.0039 BTC")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }.padding(.horizontal, 5.0)
                            
                            HStack{
                                
                                Text("If you confirm this transaction, this address can access and withdraw all your funds and NFTs.")
                                    .font(.caption)
                                    .foregroundColor(Color.white)
                                    .padding(.vertical, 8.0)
                                    .opacity(0.8)
                            }
                            
                            HStack{
                                
                                Button {
                                    Extras.generateHapticFeedback(style: .light)
                                } label: {
                                    ZStack{
                                        
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.2))
                                            .cornerRadius(10)
                                            .edgesIgnoringSafeArea(.bottom)
                                            .frame(height: 45)
                                        
                                        HStack{
                                            
                                            Image("lock-icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                            
                                            Text("Reject (recommended)")
                                                .font(.subheadline)
                                                .foregroundColor(Color.white)
                                        }
                                        
                                    }
                                }
                            }
                            
                            
                            HStack{
                                
                                Button {
                                    Extras.generateHapticFeedback(style: .light)
                                } label: {
                                    ZStack{
                                        
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.2))
                                            .cornerRadius(10)
                                            .edgesIgnoringSafeArea(.bottom)
                                            .frame(height: 45)
                                        
                                        HStack{
                                            
                                            Image("shieldslash-icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                            
                                            Text("Accept")
                                                .font(.subheadline)
                                                .foregroundColor(Color.white)
                                        }
                                    }
                                }
                                
                                Button {
                                    Extras.generateHapticFeedback(style: .light)
                                } label: {
                                    ZStack{
                                        
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.2))
                                            .cornerRadius(10)
                                            .edgesIgnoringSafeArea(.bottom)
                                            .frame(height: 45)
                                        HStack{
                                            
                                            Image("messages-icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                            
                                            Text("Assistance")
                                                .font(.subheadline)
                                                .foregroundColor(Color.white)
                                        }
                                        
                                    }
                                }
                            }
                        }.padding()
                    }.padding(.bottom)
                    
                    // Alert 2
                    ZStack{
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.bottom)
                            .frame(height: 150)
                        
                        VStack{
                            
                            // first row (Icon, Title, Date)
                            HStack{
                                ZStack{
                                    Circle()
                                        .fill(Color.blue)
                                        .frame(width: 38, height: 38)
                                        .shadow(color: .blue, radius: 4)
                                    
                                    
                                    Image("flash-icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                        
                                }.padding(.trailing, 5.0)
                                
                                Text("Automatic Transaction")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing) {
                                    Text("Yesterday")
                                        .font(.caption2)
                                        .opacity(0.6)
                                        .foregroundColor(Color.white)
                                    
                                    Text("9:21 AM")
                                        .font(.caption2)
                                        .opacity(0.6)
                                        .foregroundColor(Color.white)
                                }
                            }
                            Spacer()
                            
                            
                            //Wallets
                            HStack{
                                ZStack{
                                    HStack{
                                        Image("nicehash-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 18, height: 18)
                                        
                                        Text("BTCMiner2")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                            .lineLimit(1)
                                    }
                                    .padding(.trailing, 175.0)
                                         
                                    Image("yellowrightarrow-icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 22, height: 22)
                                        .shadow(color: .yellow, radius: 8)
                                    
                                    HStack{
                                        Image("metamask-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 22, height: 22)
                                        
                                        Text("Simon's Wallet")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                            .lineLimit(1)
                                    }
                                    .padding(.leading, 175.0)
                                }
                            }.padding(.horizontal, 5.0)
                            
                            
                            
                            //BTC
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.2))
                                        .cornerRadius(20)
                                        .edgesIgnoringSafeArea(.bottom)
                                        .frame(width: 120, height: 30)
                                    HStack{
                                        Image("bitcoin-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 18, height: 18)
                                        
                                        Text("0.8372 BTC")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                    }
                                }
                                
                                //Gas
                                ZStack{
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.2))
                                        .cornerRadius(20)
                                        .edgesIgnoringSafeArea(.bottom)
                                        .frame(width: 120, height: 30)
                                    HStack{
                                        Image("gas-icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 18, height: 18)
                                        
                                        Text("0.0091 BTC")
                                            .font(.footnote)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }.padding(.horizontal, 5.0)
                        }.padding()
                    }.padding(.bottom)
                    
                    //Alert 3
                    ZStack{
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.bottom)
                            .frame(height: 130)
                        
                        VStack{
                            
                            // first row (Icon, Title, Date)
                            HStack{
                                ZStack{
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 38, height: 38)
                                        .shadow(color: .green, radius: 4)
                                    
                                    
                                    Image("receipt-icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                        
                                }.padding(.trailing, 5.0)
                                
                                Text("May 2023 Report ")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing) {
                                    Text("Aug 1st 2023")
                                        .font(.caption2)
                                        .opacity(0.6)
                                        .foregroundColor(Color.white)
                                    
                                    Text("12:00 AM")
                                        .font(.caption2)
                                        .opacity(0.6)
                                        .foregroundColor(Color.white)
                                }
                            }
                            Spacer()
                            
                            HStack{
                                
                                Button {
                                    Extras.generateHapticFeedback(style: .light)
                                } label: {
                                    ZStack{
                                        
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.2))
                                            .cornerRadius(10)
                                            .edgesIgnoringSafeArea(.bottom)
                                            .frame(height: 45)
                                        
                                        HStack{
                                            
                                            Image("download-icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                            
                                            Text("Download")
                                                .font(.subheadline)
                                                .foregroundColor(Color.white)
                                        }
                                    }
                                }
                                
                                Button {
                                    Extras.generateHapticFeedback(style: .light)
                                } label: {
                                    ZStack{
                                        
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.2))
                                            .cornerRadius(10)
                                            .edgesIgnoringSafeArea(.bottom)
                                            .frame(height: 45)
                                        HStack{
                                            
                                            Image("eye-icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                            
                                            Text("View")
                                                .font(.subheadline)
                                                .foregroundColor(Color.white)
                                        }
                                        
                                    }
                                }
                            }
        
                        }.padding()
                    }.padding(.bottom)
                }
            }
        }
    }
}
