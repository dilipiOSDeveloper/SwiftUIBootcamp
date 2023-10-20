//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 10/07/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit) // It will keep space from top and bottom of the image
            //.scaledToFit()
            //.scaledToFill()
            //.font(.title)
            //.font(.system(size: 200))
            //.foregroundColor(Color.red)
            //.frame(width: 300, height: 300)
            //.clipped()
        
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
