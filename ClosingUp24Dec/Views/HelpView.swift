//
//  HelpView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/25/21.
//

import SwiftUI

struct HelpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("rahDarkRed")
                .ignoresSafeArea()
                        HStack {
                            VStack {
                                Spacer()
                                NavigationLink(destination: PersonalDocuments()) {
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
                                NavigationLink(destination: RealEstateOne()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                            Text("Real Estate Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                NavigationLink(destination: LoanDocs()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "checkmark.square")
                                                .foregroundColor(.black)
                                            
                                            Text("Mortgage Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                Spacer()
                                Spacer()
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
    }
        
}
        
//        ZStack {
//            Color("rahRed")
//                .ignoresSafeArea()
//
//            VStack {
//
//
//
//
//                Button(action: {
//                    self.presentationMode.wrappedValue.dismiss()
//                }) {
//                    Text("This will be the help menu")
//                        .foregroundColor(.black)
//                        .font(Font.custom("PaytoneOne-Regular", size: 40))
//
//                }
//            }
//            .navigationBarTitle("")
//            .navigationBarBackButtonHidden(true)
//            .navigationBarHidden(true)
//
//        }
//    }
//}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
