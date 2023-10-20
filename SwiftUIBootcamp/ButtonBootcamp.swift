//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 18/07/23.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    // MARK: We use --- @State var ---- It can change as in Swift.
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                self.title = "Button Pressed!"
            }
            //.accentColor(Color.red) // Deprecated Version
            .tint(Color.red) // New Version
            
            // Dynamic
            Button {
                self.title = "Button 2 Pressed!"
            } label: {
                // we can add image, htstack,vstack,view etc here
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background {
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    }
            }
            
            
            Button {
                self.title = "Button 3 Pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.green)
                    )
            }
            
            
            Button {
                self.title = "Button 4 Pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding() // padding before background color added
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }


        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
