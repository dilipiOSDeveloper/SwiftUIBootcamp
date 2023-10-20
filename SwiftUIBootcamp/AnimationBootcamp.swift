//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 20/07/23.
//

import SwiftUI

@available(*, introduced: 13.0, deprecated: 15.0, message: "Use AnimationUpdatedBootcamp instead.")
struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        /*
         VStack {
             Button("Button") {
                 withAnimation(Animation
                     .default
                     //.delay(2.0)
                     //.repeatCount(5, autoreverses: false)
                     .repeatForever(autoreverses: true)
                 ) {  // withAnimation(.default)
                     isAnimated.toggle()
                 }
             }
             
             Spacer()
             RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                 .fill(isAnimated ? Color.red : Color.green)
                 .frame(
                     width: isAnimated ? 100 : 300,
                     height: isAnimated ? 100 : 300
                 )
                 .rotationEffect(Angle.degrees(isAnimated ? 360 : 0))
                 .offset(y: isAnimated ? 300 : 0)
             Spacer()
         }
         */
        
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(Animation
                    .default
                    //.delay(2.0)
                    //.repeatCount(5, autoreverses: false)
                    .repeatForever(autoreverses: true))
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
