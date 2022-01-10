import SwiftUI
import AVFoundation


struct ContentView: View {
    
    @State var isDone = true
    
    var body: some View {
        NavigationView {
            ZStack {
                PlayerView()
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        HStack {
                            
                            
                            
                            
                            
                            
                            
                            
                            VStack {
                                Spacer()
                                NavigationLink(destination: PersonalDocuments()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: self.isDone ? "checkmark.square" : "square")
                                                .foregroundColor(.black)
                                            Text("Personal Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                NavigationLink(destination: RealEstateOne()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "checkmark.square")
                                                .foregroundColor(.black)
                                            Text("Real Estate Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                NavigationLink(destination: LoanDocs()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "checkmark.square")
                                                .foregroundColor(.black)
                                            
                                            Text("Mortgage Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                                
                                Spacer()
                                Spacer()
                                Spacer()
                                Image("logobozo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300)
                                    .padding()
                                
                                    .opacity(0.8)
                            }
                            Spacer()
                            
                            VStack {
                                Spacer()
                                Spacer()
                                NavigationLink(destination: HelpView()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.all)
                                        .frame(width: 130, height: 80)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "questionmark.circle.fill")
                                                .foregroundColor(.black)
                                            Text("Help")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                        })
                                }
                            }
                        })
                
                
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


