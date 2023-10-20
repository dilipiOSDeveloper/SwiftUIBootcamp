//
//  TextSelectionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 05/08/23.
//

import SwiftUI

// Bootcamp #56
/*
 One of the most underrated features released in iOS 15 is the ability to let users select and copy text in SwiftUI. In this quick video, we will learn how to use the .textSelection modifier! This feature probably did not need it's own video, but I think it's a pretty important feature to know about. This is great for chat apps or any content-based app where users might want to share some text with a friend. Sharing is not only a great feature for your users, but will help drive organic growth as users share with others.
 */
struct TextSelectionBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .textSelection(.enabled)
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
