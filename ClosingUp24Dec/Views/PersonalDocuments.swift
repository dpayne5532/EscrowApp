//
//  PersonalDocuments.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/25/21.
//

import SwiftUI


var buyOne = "Buyer 1"
var buyOneDone = false
var buyTwo = "Buyer 2"
var buyTwoDone = false


struct PersonalDocuments: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let steve = ContentView()
    
    var body: some View {
        ZStack {
            
            Color("rahDarkRed")
                .ignoresSafeArea()
            
            VStack {
                
                
                HStack {
                    Button {steve.isDone = true}
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color("rahRed"))
                        .padding(.horizontal)
                        .frame(width: 380, height: 70)
                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                        .overlay(HStack {
                            Text(buyOne)
                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                .foregroundColor(.black)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        })
                }
                .padding()
                    Spacer()
                    
                    Button {}
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color("rahRed"))
                        .padding(.horizontal)
                        .frame(width: 380, height: 70)
                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                        .overlay(HStack {
                            Text(buyTwo)
                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                .foregroundColor(.black)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        })
                }
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Tap Here When Complete")
                        .foregroundColor(.black)
                        .font(Font.custom("PaytoneOne-Regular", size: 40))
                    
                }
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        }
        
    }
}

struct PersonalDocuments_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDocuments()
    }
}
