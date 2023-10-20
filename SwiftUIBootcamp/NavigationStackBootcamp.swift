//
//  NavigationStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 07/08/23.
//

import SwiftUI

// Bootcamp #62
/*
 Learn all about NavigationStack in SwiftUI, the powerful tool for managing navigation and transitions in your iOS app development. Discover how to create seamless user experiences, handle navigation hierarchies, and implement transitions with ease. Master SwiftUI's NavigationStack and take your app's navigation to the next level!
 */

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        
        NavigationStack {

//        NavigationStack { // NavigationView
            ScrollView {
                VStack(spacing: 40) {
                        
//                    Button("Super Segue!") {
//                        stackPath.append("Coconut")
//                    }
                    Button("Super Segue!") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    
                        ForEach(fruits, id: \.self) { fruit in
                            NavigationLink(value: fruit) {
                                Text(fruit)
                            }
                        }
                        
                        // this should be used for lazy loading of navigation link which is highly recommended
                        
                        ForEach(0..<10) { x in
                            NavigationLink(value: x) {
                                Text("Click me: \(x)")
                            }
                        }
                    
                    .navigationTitle("Nav Bootcamp")
                    .navigationDestination(for: Int.self) { value in
                        MySecondScreen(value: value)
                    }
                    .navigationDestination(for: String.self) { value in
                        Text("ANOTHER SCREEN: \(value)")
                    }
                }
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
