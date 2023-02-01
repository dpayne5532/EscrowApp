//
//  LoanDocs.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/24/21.
//

import SwiftUI

struct LoanDocs: View {
  
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
  
  
  
  var body: some View {
    
    
    
    
    
    
    ZStack {
      LinearGradient(gradient: Gradient(colors: [Color("rahRed"), Color("rahDarkRed")]), startPoint: .leading, endPoint: .bottom)
        .ignoresSafeArea()
      
      VStack {
        Button(action: {
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Text("LOAN DOCS HERE EVENTUALLY!")
            .foregroundColor(.white)
            .font(Font.custom("MarcellusSC-Regular", size: 40))
          
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
