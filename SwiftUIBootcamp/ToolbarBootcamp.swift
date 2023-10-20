//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 08/08/23.
//

import SwiftUI

// Bootcamp #63
/*
 Unlock the full potential of your SwiftUI app with Toolbar! In this comprehensive tutorial, dive deep into the world of SwiftUI's Toolbar and learn how to create custom toolbars, add buttons, and customize appearance. Enhance your app's functionality and user experience with SwiftUI's powerful Toolbar capabilities.
 */

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
//                    Text("Hey 😊")
//                        .foregroundColor(.white)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
                
                
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
//                    HStack {
//                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
//                    }
                }
            }
            //.navigationBarHidden(true)
            //.toolbar(.hidden, for: .navigationBar)
            //.toolbarBackground(.hidden, for: .navigationBar)
            //.toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
