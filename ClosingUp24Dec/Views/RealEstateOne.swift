//
//  RealEstateOne.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/24/21.
//

import SwiftUI

struct RealEstateOne: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    
    let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "RE04", ofType: "mp4")!)
    let reVideo04 = URL(fileURLWithPath: Bundle.main.path(forResource: "Pexels Sea", ofType: "mp4")!)
    let reVideo03 = URL(fileURLWithPath: Bundle.main.path(forResource: "hartIntro", ofType: "mp4")!)
    var body: some View {
        
       
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("rahRed"), Color("rahDarkRed")]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
            HStack {
                VStack {
                    Spacer()
                    NavigationLink(destination: VestingView(url: reVideo04)) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                            .padding(.horizontal)
                            .frame(width: 280, height: 70)
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                            .overlay(HStack {
                                Image(systemName: "square")
                                    .foregroundColor(.white)
                                Text("Notice of Vesting")
                                    .font(Font.custom("PaytoneOne-Regular", size: 16))
                                    .foregroundColor(.white)
                                    .navigationBarTitle("")
                                    .navigationBarHidden(true)
                            })
                    }
                    
                    
                    NavigationLink(destination: TransferDecView()) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                            .padding(.horizontal)
                            .frame(width: 280, height: 70)
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                            .overlay(HStack {
                                Image(systemName: "square")
                                    .foregroundColor(.white)
                                
                                Text("Transfer Declaration")
                                    .font(Font.custom("PaytoneOne-Regular", size: 16))
                                    .foregroundColor(.white)
                                    .navigationBarTitle("")
                                    .navigationBarHidden(true)
                            })
                    }
                    NavigationLink(destination: ClosingInstructionsView(url: reVideo03)) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                            .padding(.horizontal)
                            .frame(width: 280, height: 70)
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                            .overlay(HStack {
                                Image(systemName: "square")
                                    .foregroundColor(.white)
                                
                                Text("Closing Instructions")
                                    .font(Font.custom("PaytoneOne-Regular", size: 16))
                                    .foregroundColor(.white)
                                    .navigationBarTitle("")
                                    .navigationBarHidden(true)
                            })
                    }
                    NavigationLink(destination: VideoPlayerView(url: videoUrl)) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                            .padding(.horizontal)
                            .frame(width: 280, height: 70)
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                            .overlay(HStack {
                                Image(systemName: "square")
                                    .foregroundColor(.white)
                                
                                Text("Affidavit/Indemnity")
                                    .font(Font.custom("PaytoneOne-Regular", size: 16))
                                    .foregroundColor(.white)
                                    .navigationBarTitle("")
                                    .navigationBarHidden(true)
                            })
                    }
                    
                    
                    
                    Spacer()
                    Image("logobozo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .padding()
                    
                        .opacity(0.8)
                }
                
                
                Spacer()
                
                VStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                label: {
                    
                    HStack {
                        
                        Spacer()
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                        
                        
                        
                    }
                }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: HelpView()) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                            .padding(.all)
                            .frame(width: 130, height: 80)
                            .shadow(color: .black, radius: 10, x: 3, y: 3   )
                            .overlay(HStack {
                                Image(systemName: "questionmark.circle.fill")
                                    .foregroundColor(.white)
                                Text("Help")
                                    .font(Font.custom("PaytoneOne-Regular", size: 16))
                                    .foregroundColor(.white)
                                    .navigationBarTitle("")
                                    .navigationBarHidden(true)
                            })
                    }
                }
            }
        }
    }
}
struct RealEstateOne_Previews: PreviewProvider {
    static var previews: some View {
        RealEstateOne()
    }
}

struct ExtractedView: View {
    var body: some View {
        NavigationLink(destination: RealEstateOne()) {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("rahRed"))
                .padding(.horizontal)
                .frame(width: 280, height: 70)
                .shadow(color: .black, radius: 10, x: 3, y: 3   )
                .overlay(HStack {
                    Image(systemName: "square")
                        .foregroundColor(.black)
                    Text("Transfer Declaration")
                        .font(Font.custom("PaytoneOne-Regular", size: 16))
                        .foregroundColor(.black)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                })
        }
    }
}
