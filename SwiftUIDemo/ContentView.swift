//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Kenneth Carroll on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // VStack holds a vertical stack of elements
        // optional parameters, like alignment
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
             
                // Text element that accepts a string
                Text("Turtle Rock")
                    .font(.title)
                
                // Stacks can be embedded
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
