//
//  VestingView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/31/21.
//

import SwiftUI
import AVKit

struct VestingView: View {
  
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
  let documentURL = Bundle.main.url(forResource: "RE01", withExtension: "pdf")!
  let url: URL
  
  var body: some View {
    
    ZStack {
      
      LinearGradient(gradient: Gradient(colors: [Color("rahRed"), Color("rahDarkRed")]), startPoint: .leading, endPoint: .bottom)
        .ignoresSafeArea()
      
      
      
      VStack(alignment: .center) {
        
        
        Button {
          self.presentationMode.wrappedValue.dismiss()
        }
      label: {
        
        HStack {
          
          Spacer()
          Image(systemName: "xmark")
            .foregroundColor(Color(.label))
            .imageScale(.large)
            .frame(width: 44, height: 44)
          
        }
        
      }
        
        
        
        Text("Notice of Vesting")
          .font(Font.custom("MarcellusSC-Regular", size: 60))
          .foregroundColor(.white)
          .bold()
        
        
        
        
        VideoPlayer(player: AVPlayer(url: url))
        
          .frame(width: 575, height: 275)
          .cornerRadius(20)
          .shadow(color: .black, radius: 20)
          .padding()
        Spacer()
        
        
         
        
        
        PDFKitView(url: documentURL)
      }
      .navigationBarBackButtonHidden(true)
      .foregroundColor(.black)
      .navigationBarTitle("")
      .navigationBarHidden(true)
    }
  }
  
}


