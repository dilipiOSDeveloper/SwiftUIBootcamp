//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 11/07/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        /* MARK: For Background
         Text("Hello, World!")
         //.frame(width: 100, height: 100, alignment: .center)
         .background(
         //Color.red
         //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
         Circle()
         //.fill(Color.blue)
         .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
         .frame(width: 100, height: 100, alignment: .center)
         )
         //.frame(width: 120, height: 120, alignment: .center)
         .background(
         Circle()
         //.fill(Color.red)
         .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
         .frame(width: 120, height: 120, alignment: .center)
         )
         */
        
        /* MARK: For Circle
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 120, height: 110)
            )
         */
        
        /* MARK: For Rectangle
         Rectangle()
             .frame(width: 100, height: 100)
             .overlay(
                 Rectangle()
                     .fill(Color.blue)
                     .frame(width: 50, height: 50, alignment: .topLeading)
             )
             .background(
                 Rectangle()
                     .fill(Color.red)
                     .frame(width: 150, height: 150, alignment: .bottomTrailing)
             )
         */
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.green, Color.green]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.purple.opacity(0.5), radius: 10, x: 0.0, y: 10.0)
                    .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35, alignment: .center)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                    )
                                .shadow(color: Color.purple.opacity(0.3), radius: 10, x: 5.0, y: 5.0)
                            ,alignment: .bottomTrailing
                    )
            )
        
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
