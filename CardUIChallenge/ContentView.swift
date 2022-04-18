//
//  ContentView.swift
//  CardUIChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader {
            geo in
            
            TabView {
                ForEach(0..<50) {
                    numIndex in
                    
                    let redNum = Double.random(in: 0...1)
                    let greenNum = Double.random(in: 0...1)
                    let blueNum = Double.random(in: 0...1)
                    let randomColor = Color(.sRGB, red: redNum, green: greenNum, blue: blueNum, opacity: 1)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: geo.size.width*0.9, height: geo.size.height*0.9, alignment: .center)
                            .foregroundColor(randomColor)
                            .cornerRadius(20)
                            .shadow(color: .black, radius: 10, x: 5, y: 5)
                        
                        Circle()
                            .frame(width: geo.size.width*0.8, height: geo.size.height*0.8, alignment: .center)
                            .padding(.all)
                        
                        Circle()
                            .frame(width: geo.size.width*0.65, height: geo.size.height*0.65, alignment: .center)
                            .padding(.all)
                            .foregroundColor(randomColor)
                        
                        Text("\(numIndex)")
                            .font(.system(size: geo.size.width*0.3))
                            .fontWeight(.bold)
                        
                    }
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
