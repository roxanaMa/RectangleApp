//
//  ContentView.swift
//  Rectangles
//
//  Created by Roxy Mardare on 01.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        GeometryReader{geo in
            
        ScrollView{
            LazyVStack (spacing: 0){
                ForEach(0..<60){index in
                        Rectangle()
                            .fill(RadialGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), center: .center, startRadius: 100, endRadius: 700))
                            .padding([.leading,.trailing])
                            .padding(.bottom,10)
                            .frame(width: geo.size.width, height: (pow(1.1, CGFloat(index))))
                            
                }
            }
        }
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
