//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 22/07/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    // Incomplete done Video Bootcamp #32
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text("\(fruit)".capitalized)
                    }
                    .onDelete { indexSet in
                        delete(indexSet: indexSet)
                    }
                    //.onDelete(perform: delete) // It's not working don't know at my end
                    
                    .onMove(perform: move)
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
