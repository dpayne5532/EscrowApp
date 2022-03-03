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
                                            Text("Button 1")
                                                .font(Font.custom("MarcellusSC-Regular", size: 16))
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
                                            Text("Button 2")
                                                .font(Font.custom("MarcellusSC-Regular", size: 16))
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
                                            
                                            Text("Button 3")
                                                .font(Font.custom("MarcellusSC-Regular", size: 16))
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
                            

                        }
                
                
            }
           
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(false)
        .navigationBarHidden(true)
    }
        
}
        


struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
