//
//  VideoPlayerView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 1/23/22.
//

import AVKit
import SwiftUI

struct VideoPlayerView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let documentURL = Bundle.main.url(forResource: "reDocs", withExtension: "pdf")!
    let url: URL

    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("rahRed"), Color("rahDarkRed")]), startPoint: .leading, endPoint: .bottom)
            .ignoresSafeArea()
            
        
            VStack {
            
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                }
            label: {
                
                HStack {
                
                    Spacer()
                Image(systemName: "xmark")
                        .foregroundColor(.black)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    
               
                
            }
            }
                 
            
            VideoPlayer(player: AVPlayer(url: url))
            .frame(height: 275)
        
                PDFKitView(url: documentURL)
                    
        
            }
            .navigationBarBackButtonHidden(true)
        
        }
        
        
    }
    
}

