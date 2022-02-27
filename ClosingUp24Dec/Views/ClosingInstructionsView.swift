//
//  ClosingInstructionsView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/31/21.
//
import AVKit
import SwiftUI



struct ClosingInstructionsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let documentURL = Bundle.main.url(forResource: "RE03", withExtension: "pdf")!
    
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
            
            
            
            Text("Closing Instructions")
                .font(.largeTitle)
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
struct ClosingInstructionsView_Previews: PreviewProvider {
    
    static var previews: some View {
        ClosingInstructionsView(url: URL(fileURLWithPath: Bundle.main.path(forResource: "RE04", ofType: "mp4")!))
    }
}
