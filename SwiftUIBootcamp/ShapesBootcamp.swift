//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 10/07/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.green)
            //.foregroundColor(Color.green)
            //.stroke()
            //.stroke(Color.green, lineWidth: 20)
            //.stroke(Color.green, style: StrokeStyle(lineWidth: 20, lineCap: .butt,dash: [5]))
            //.trim(from: 0.2, to: 1.0) // use option key to add all parameters
            //.stroke(Color.purple, lineWidth: 50.0)
            .frame(width: 200, height: 150)
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
