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
       
        
        
        
        
        ZStack {
            
            
            
            
            Color("rahRed")
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("REAL ESTATE DOCS SOON!")
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
struct RealEstateOne_Previews: PreviewProvider {
    static var previews: some View {
        RealEstateOne()
    }
}
