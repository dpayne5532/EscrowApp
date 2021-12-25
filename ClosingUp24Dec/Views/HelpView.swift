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
        ZStack {
            Color("rahRed")
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("HELP!!!!")
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

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
