//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 05/08/23.
//

import SwiftUI

// Bootcamp #58
/*
 Another great feature coming from the iOS 15 updates for SwiftUI is the .swipeActions() modifier! Previously, we List rows were limited to only 1 swipe action - swipe to delete. Now, however, we can totally customize these rows and add a whole bunch of buttons to them. In this video we will implement a few different variations of list row actions, each with different colors, titles, and swiping from both the leading and the trailing edge.
 */
struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
            //.onDelete(perform: delete)
            //.onDelete(perform: delete(indexSet:))
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
