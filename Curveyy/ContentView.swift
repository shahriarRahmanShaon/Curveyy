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
    var body: some View{
        GeometryReader { geometry in
            VStack{
                ZStack (alignment: .top){
                    VStack{
                        Image("lamp1")
                            .resizable()
                            .frame(height: geometry.size.height*0.4)
                        HStack(spacing: 10){
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .fill(Color.yellow)
                                    .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(Color.orange, lineWidth: 3)
                                        .frame(width: 30, height: 30)
                                }
                                    
                            })
                            Button(action: {
                                
                            }, label: {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            })
                        }
                    }
                    
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
                .background(Color.yellow)
                
                    
            }
            .statusBar(hidden: true)
            .edgesIgnoringSafeArea(.all)
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
