//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 20/07/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            /*
             RoundedRectangle(cornerRadius: 20.0)
                 .frame(width: isAnimating ? 350 : 50, height: 100)
                 .animation(Animation.linear(duration: timing)) //'animation' was deprecated in iOS 15.0: Use withAnimation or animation(_:value:) instead.
             
             RoundedRectangle(cornerRadius: 20.0)
                 .frame(width: isAnimating ? 350 : 50, height: 100)
                 .animation(Animation.easeIn(duration: timing))
             
             
             RoundedRectangle(cornerRadius: 20.0)
                 .frame(width: isAnimating ? 350 : 50, height: 100)
                 .animation(Animation.easeInOut(duration: timing))
             
             RoundedRectangle(cornerRadius: 20.0)
                 .frame(width: isAnimating ? 350 : 50, height: 100)
                 .animation(Animation.easeOut(duration: timing))
                 //.animation(Animation.default, value: isAnimating)
             */
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(.spring())
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
