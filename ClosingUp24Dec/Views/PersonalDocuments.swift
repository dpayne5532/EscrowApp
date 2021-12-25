//
//  PersonalDocuments.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/25/21.
//

import SwiftUI

struct PersonalDocuments: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            Color("rahRed")
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("PUT DL PARSER HERE!")
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
