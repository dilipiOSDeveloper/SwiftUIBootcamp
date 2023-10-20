//
//  SafeAreaInsetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 09/08/23.
//

import SwiftUI

// Bootcamp #65
/*
 Discover how to utilize SafeAreaInsets in SwiftUI and create visually appealing and user-friendly iOS apps! In this tutorial, learn how to handle safe area insets to ensure your app's content adapts perfectly to different screen sizes and orientations. Enhance your SwiftUI skills and deliver a polished user experience with SafeAreaInsets.
 */

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//
//                ,alignment: .bottom
//            )
            
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                    //.clipShape(Circle())
                    //.padding()
            }
            
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                    //.clipShape(Circle())
                    //.padding()
            }
        }
    }
}

struct SafeAreaInsetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetsBootcamp()
    }
}
