import SwiftUI



struct ContentView: View {
    
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                
                
                PlayerView()
                
                    .blur(radius: 0.5)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        
                        HStack {
                            
                            
                            VStack {
                                Spacer()
                                NavigationLink(destination: RealEstateOne()) {
                                    Text("Real Estate Documents")
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                        .padding(.all)
                                    
                                }
                                Spacer()
                                
                                NavigationLink(destination: LoanDocs()) {
                                    Text("Mortgage Documents")
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                        .padding(.all)
                                }
                                Spacer()
                            }
                            Spacer()
                            
                            
                            
                            
                        })
                
                
                
                
                
                //                            Text("Real Estate Documents")
                //                                .navigationBarTitle("")
                //                                .navigationBarHidden(true)
                //                                .padding(.all)
                
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}











//
//                    Button(action: {
//
//                    }, label: {
//                        Text("Lender Documents").font(.headline).fontWeight(.heavy).foregroundColor(Color.black).padding().frame(width: 200.0, height: 100.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(10)
//                    })
//                        .padding()
//                        .background(LinearGradient(gradient: Gradient(colors: [.green, .red]), startPoint: .leading, endPoint: .trailing))
//                        .foregroundColor(.red).cornerRadius(10)
//


