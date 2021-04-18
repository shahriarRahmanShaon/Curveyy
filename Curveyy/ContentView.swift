//
//  ContentView.swift
//  Curveyy
//
//  Created by sergio shaon on 14/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

//MARK:- home view
struct Home: View {
    @State var color = 0
    var body: some View{
        GeometryReader { geometry in
            VStack{
                ZStack (alignment: .top){
                    
                        Image(color == 0 ?"lamp1" : "lamp2")
                            .resizable()
                            .frame(height: geometry.size.height*0.4)
                        HStack(spacing: 10){
                            Button(action: {
                                self.color = 0
                            }, label: {
                                ZStack {
                                    Circle()
                                        .fill(Color.yellow)
                                    .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 0 ? Color.orange: Color.white, lineWidth: 3)
                                        .frame(width: 30, height: 30)
                                }
                                    
                            })
                            Button(action: {
                                color = 1
                            }, label: {
                                ZStack {
                                    Circle()
                                        .fill(Color.orange)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 1 ? Color.orange: Color.white, lineWidth: 3)
                                        .frame(width: 30, height: 30)
                                }
                            })
                        }
                        .padding(.bottom, 10)
                    
                    
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image("back")
                                .renderingMode(.original)
                                .padding()
                        })
                        .padding()
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image("cart")
                                .renderingMode(.original)
                                .padding()
                            
                                
                                
                        })
                        .padding(.horizontal, 10)
                        .padding(.vertical, 25)
                        .background(Color.white)
                        .clipShape(customShape(corner: .bottomLeft, raddi: 35))
                        
                        
                    }
                }
                .background(self.color == 0 ? Color.yellow : Color.orange)
                .clipShape(customShape(corner: .bottomLeft, raddi: 55))
                
                HStack{
                    Text("Melodi Lamp")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image("heart")
                            .renderingMode(.original)
                            .padding()
                    })
                    .background(self.color == 0 ? Color.yellow : Color.orange)
                    .clipShape(Circle())
                }
                .padding(.horizontal, 40)
                .padding(.top)
                
                Text(names.talkAboutLamp)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .padding(.top, 25)
                
            }
            
            .statusBar(hidden: true)
            .edgesIgnoringSafeArea(.all)
            .animation(.default)
            
        }
    }
}

//MARK:- shaping
struct customShape: Shape {
    var corner: UIRectCorner
    var raddi: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: raddi, height: raddi))
        return Path(path.cgPath)
    }
    
    
}









//MARK:- content view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
