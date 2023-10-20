//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 12/07/23.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        /*
         Text("Hello, World!")
             //.frame(width: 100, height: 100)
             .background(Color.yellow)
             //.padding() // default padding is 10 i think
             .padding(.all, 10)
             .padding(.leading, 20)
             .background(Color.blue)
         */
        
        
        /*
         Text("Hello, World!")
             .font(.largeTitle)
             .fontWeight(.semibold)
             .frame(maxWidth: .infinity)
             .frame(maxWidth: .infinity, alignment: .leading)
             .background(Color.red)
             .padding(.leading, 20)
         */
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            //
            .padding(.bottom, 20)
            
            Text("This is description of what we will do on the screen. It is multiple lines we will align the text to leading edge. ")
                //.multilineTextAlignment(.center)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color    .gray.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 10.0)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
