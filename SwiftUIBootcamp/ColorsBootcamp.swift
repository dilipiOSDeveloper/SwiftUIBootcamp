//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 10/07/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(#colorLiteral(red: 0.267323643, green: 0.6667889358, blue: 0.5308187008, alpha: 1))
                //Color(UIColor.systemRed)
                Color("CustomColor")
            ) // before the fram all fill()
            .frame(width: 300, height: 200)
            //.shadow(radius: 10.0)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
