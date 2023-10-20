//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 09/08/23.
//

import SwiftUI

// Bootcamp #66
/*
 Discover the power of Group in SwiftUI and level up your app's layout and organization! In this tutorial, learn how to use Group to efficiently group and manage views, allowing for better organization and enhanced UI design. Supercharge your SwiftUI skills and create visually stunning iOS apps with the help of Group.
 */

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
