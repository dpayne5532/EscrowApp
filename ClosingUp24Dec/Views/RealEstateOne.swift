//
//  RealEstateOne.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/24/21.
//

import SwiftUI

struct RealEstateOne: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
   
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("rahDarkRed")
                .ignoresSafeArea()
                        HStack {
                            VStack {
                                Spacer()
                                NavigationLink(destination: VestingView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            Text("Notice of Vesting")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                
                                NavigationLink(destination: TransferDecView()) {
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
                                NavigationLink(destination: ClosingInstructionsView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            
                                            Text("Closing Instructions")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                NavigationLink(destination: AffidavitView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            
                                            Text("Affidavit/Indemnity")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                NavigationLink(destination: AffidavitView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            
                                            Text("Affidavit/Indemnity")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                NavigationLink(destination: AffidavitView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            
                                            Text("Affidavit/Indemnity")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                NavigationLink(destination: AffidavitView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            
                                            Text("Affidavit/Indemnity")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
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
                                Spacer()
                                Spacer()
                                NavigationLink(destination: HelpView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.all)
                                        .frame(width: 130, height: 80)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "questionmark.circle.fill")
                                                .foregroundColor(.black)
                                            Text("Help")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                            }
                        }
                
                
            }
            
          
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .foregroundColor(.black)
        .navigationBarTitle("")
        .navigationBarHidden(true)
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
