//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 10/07/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        // Text - It is component and we can use modifiers using . with modifiers option
        Text("Hello, World!".capitalized)
            //.font(.body)
            //.fontWeight(.heavy)
            //.bold()
            //.underline()
//            .underline(true, color: Color.red)
//            .italic()
//            //.strikethrough()
//            .strikethrough(true, color: Color.red)
            //.font(.system(size: 24,weight: .semibold,design: .serif))
            .baselineOffset(8.0) // Spacing b/w two lines from top/ Between
            .kerning(1.0)// Spacing b/w the characters
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.blue)
            .frame(width: 200, height: 200, alignment: .center)
            .minimumScaleFactor(1.0)
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
