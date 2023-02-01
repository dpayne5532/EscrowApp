//
//  TransferDecView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 1/31/22.
//

import Foundation
import SwiftUI

struct TransferDecView: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
  var body: some View {
    
    
    ZStack {
      LinearGradient(gradient: Gradient(colors: [Color("rahRed"), Color("rahDarkRed")]), startPoint: .leading, endPoint: .bottom)
        .ignoresSafeArea()
      
      VStack {
        Button(action: {
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Text("TRANSFER DEC HERE EVENTUALLY!")
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

struct TransferDecView_Previews: PreviewProvider {
  static var previews: some View {
    TransferDecView()
  }
}
