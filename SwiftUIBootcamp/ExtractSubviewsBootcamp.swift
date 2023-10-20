//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 20/07/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            
            // When content is dynamic then use extracting the views otherwise create a new view
                //extract subviews
            /*
             This is a very common practice that allows us to create reusable subviews that can have custom initializers. If you ever have an item in a view that will be repeated, but each time it requires different data (such as different text or colors), then you can make that item it's own subview.
             */
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: Color.red)
            MyItem(title: "Oranges", count: 5, color: Color.orange)
            MyItem(title: "Bananas", count: 5, color: Color.yellow)
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
