//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 05/08/23.
//

import SwiftUI

// Bootcamp #55
/*
 n this video we will quickly look at the new Materials that Apple has added to SwiftUI in iOS 15. These System Materials are very commonly used as backgrounds for a subtle, yet professional look to your apps. As you'll see, the colors are not totally opaque and allow some natural color to bleed through.

 ** I forgot to mention in the video that these Materials also automatically adapt for light and dark mode!

 */
struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("2")
                .resizable()
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
