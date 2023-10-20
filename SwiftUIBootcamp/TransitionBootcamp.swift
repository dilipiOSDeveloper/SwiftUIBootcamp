//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 21/07/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                
                /*
                 RoundedRectangle(cornerRadius: 30)
                     .frame(height: UIScreen.main.bounds.height * 0.5)
                     //.opacity(showView ? 1.0 : 0.0)
                     //.transition(.slide)
                     .transition(.move(edge: .bottom))
                     .animation(.easeInOut)
                     //.animation(.spring())
                 */
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    //.transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
