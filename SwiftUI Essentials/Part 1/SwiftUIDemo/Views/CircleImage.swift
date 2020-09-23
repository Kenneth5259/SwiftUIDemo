//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Kenneth Carroll on 9/20/20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
        // image accepts strings, and can associate any files by name from Assets
        Image("turtlerock")
            // adds a clip shape, accepts a shap object
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            // adds an overlay of the given shape, with a type of stroke, white 4 width
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            // adds a shadow with a radius, similar to spread on box-shadow css
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
