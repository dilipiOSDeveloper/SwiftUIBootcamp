//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 05/08/23.
//

import SwiftUI

// Bootcamp #59
/*
 Another quick video here. Today, we are looking at the new .badge modifier in SwiftUI as of iOS 15. Again, this feature probably didn't need a full video, but the feature was not available in iOS 14 (when I first made this playlist). Badges can be a crucial part of your application, especially if you are using the native SwiftUI TabView. By adding a badge to a tab, you can notify user's that they have a new alert/notification on that screen!
 */
// List
// TabView
struct BadgesBootcamp: View {
    var body: some View {
        
//        List {
//            Text("Hello, world!")
//                //.badge("New Items!")
//                .badge(5)
//            Text("Hello, world!")
//            Text("Hello, world!")
//            Text("Hello, world!")
//            Text("Hello, world!")
//        }
//
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "hear.fill")
                    Text("Hello")
                }
                //.badge(5)
                .badge("New")
            
            Color.green
                .tabItem {
                    Image(systemName: "hear.fill")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "hear.fill")
                }
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
