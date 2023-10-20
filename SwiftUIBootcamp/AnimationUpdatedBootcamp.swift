//
//  AnimationUpdatedBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 11/08/23.
//

import SwiftUI

// Bootcamp #67
/*
 Unleash the full potential of animation with value in SwiftUI and bring your iOS app to life! In this tutorial, learn how to leverage animation with value to create engaging and interactive user experiences. Dive into the world of SwiftUI animation and master the art of adding motion and dynamism to your app's UI.
 */

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStackLayout(spacing: 20) {
                Button("Action 1") {
                    animate1.toggle()
                }
                
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                
            }
        }
        .animation(.spring(), value: animate1)
        //.animation(.spring(), value: animate2)
        .animation(.linear(duration: 2.0), value: animate2)
        
        // deprecated!
        //.animation(.spring())
        
    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
