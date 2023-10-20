//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 10/07/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("2")
            .renderingMode(.template)
            .resizable()
            //  .aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
            //.foregroundColor(Color.red)
            //.clipped() // we do not need fit if we use clipped
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25)
                //Ellipse()
            //)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
