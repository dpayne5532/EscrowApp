//
//  LoanDocs.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/24/21.
//

import SwiftUI

struct LoanDocs: View {
    var Taco = "Sing you bastard" 
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    
        
    var body: some View {
        
        
        
            
        
        
        ZStack {
            Color("rahRed")
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("LOAN DOCS HERE EVENTUALLY!")
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

struct LoanDocs_Previews: PreviewProvider {
    static var previews: some View {
        LoanDocs()
    }
}
