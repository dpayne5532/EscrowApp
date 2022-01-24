//
//  PersonalDocuments.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/25/21.
//

import SwiftUI





struct PersonalDocuments: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var buyOne = "Buyer 1"
    var buyOneDone = false
    var buyTwo = "Buyer 2"
    var buyTwoDone = false
   
    @StateObject var steve = doneButtons()
    
    var body: some View {
        ZStack {
            
            Color("rahDarkRed")
                .ignoresSafeArea()
            
            VStack {
              
                
                HStack {
                    Button {steve.isDone1 = true}
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                        .padding(.horizontal)
                        .frame(width: 380, height: 70)
                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                        .overlay(HStack {
                            Text(buyOne)
                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                .foregroundColor(.white)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        })
                }
                .padding()
                    Spacer()
                    
                    Button {}
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                        .padding(.horizontal)
                        .frame(width: 380, height: 70)
                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                        .overlay(HStack {
                            Text(buyTwo)
                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                .foregroundColor(.white)
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
                        .foregroundColor(.white)
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
