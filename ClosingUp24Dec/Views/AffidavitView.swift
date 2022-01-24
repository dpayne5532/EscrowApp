//
//  AffidavitView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/31/21.
//

import SwiftUI

struct AffidavitView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        
        ZStack {
            Color("rahRed")
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("BUYER INDEMNITY HERE EVENTUALLY!")
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

struct AffidavitView_Previews: PreviewProvider {
    static var previews: some View {
        AffidavitView()
    }
}
