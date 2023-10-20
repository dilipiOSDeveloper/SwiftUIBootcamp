//
//  ButtonStylesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 05/08/23.
//

import SwiftUI

// UI is in Dark-Mode
// Bootcamp #57
/*
 Let's take a look at a few more view modifiers Apple has provided us in iOS 15 for SwiftUI. Specifically, we are looking at modifiers that help us to size and shape Buttons in our SwiftUI applications. In this video we will learn how to use new .buttonStyle to add pre-made backgrounds to our buttons. We will also learn how to use the .buttonBorderShape to control the shape and corner radius of the button. Lastly, we will look at the new .controlSize modifier which can help us automatically resize our Buttons to a pre-set sizes!
 */
struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)

            
            Button("Button Title") {
                                                                                                                        
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.bordered)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.borderedProminent)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            //.buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
