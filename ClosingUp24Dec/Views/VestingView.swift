//
//  VestingView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/31/21.
//

import SwiftUI

struct VestingView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let documentURL = Bundle.main.url(forResource: "reDocs", withExtension: "pdf")!
    var body: some View {
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
                .font(.largeTitle)
            
            
     
            
            
            
            
            
            
//            HStack(alignment: .top) {
//                Text("Made with ❤ at WWDC19")
//                    .font(.title)
//            }
            PDFKitView(url: documentURL)
        }
        
        .foregroundColor(.black)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}
        
      

struct VestingView_Previews: PreviewProvider {
    static var previews: some View {
        VestingView()
    }
}
