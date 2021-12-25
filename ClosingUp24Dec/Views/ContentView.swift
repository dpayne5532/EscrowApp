import SwiftUI

struct ContentView: View {
    
    @State var done = "butt"
    @State var reBa = 0
    @State var reBb = 0
    @State var reBc = 0
    @State var reBd = 0
    
    var body: some View {
       
        
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            PlayerView()
                .overlay(Color.black.opacity(0.4))
                .blur(radius: 1)
                .edgesIgnoringSafeArea(.all)
            HStack {
                
                VStack {
                    
                    Spacer()
                    Image(done + String(reBa))
                    Spacer()
                    
                    Image(done + String(reBb))
                    Spacer()
                    
                    Image(done + String(reBc))
                    Spacer()
                    Image(done + String(reBd))
                    Spacer()
                    
                    
                }
                
                    
                
                VStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: RealEstateOne()) {
                                        Text("Awesome Button")
                                        .frame(minWidth: 0, maxWidth: 300)
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(40)
                                        .font(.title)
                                }
                    
                    
                    Button(action: {
                        if reBa == 0 {
                            reBa += 1
                        }
                        else if reBa == 1 {
                            reBa -= 1
                        }
                        
                        
                    }, label: {
                        Text("Real Estate 1of2").font(.headline).fontWeight(.heavy).foregroundColor(Color.black).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: 200.0, height: 100.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(10)
                    })
                    
                    
                    Spacer()
                    
                    
                    Button(action: {
                        if reBb == 0 {
                            reBb += 1
                        }
                        else if reBb == 1 {
                            reBb -= 1
                        }
                        
                        
                    }, label: {
                        Text("Real Estate 2of2").font(.headline).fontWeight(.heavy).foregroundColor(Color.black).padding().frame(width: 200.0, height: 100.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(10)
                    })
                    
                    
                    Spacer()
                    
                    Button(action: {
                        if reBc == 0 {
                            reBc += 1
                        }
                        else if reBc == 1 {
                            reBc -= 1
                        }
                        
                        
                    }, label: {
                        Text("Loan Package 1of2").font(.headline).fontWeight(.heavy).foregroundColor(Color.black).padding().frame(width: 200.0, height: 100.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(10)
                    })
                    
                    
                    Spacer()
                    
                    Button(action: {
                        if reBd == 0 {
                            reBd += 1
                        }
                        else if reBd == 1 {
                            reBd -= 1
                        }
                        
                        
                    }, label: {
                        Text("Loan Package 2of2").font(.headline).fontWeight(.heavy).foregroundColor(Color.black).padding().frame(width: 200.0, height: 100.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(10)
                    })
                    
                    
                    Spacer()
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                Spacer()
            
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
