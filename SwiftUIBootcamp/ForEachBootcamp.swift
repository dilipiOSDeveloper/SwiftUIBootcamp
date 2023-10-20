//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 14/07/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi","Hello","Hey Everyone"] //[]
    let myString: String = "Hello"
    
    var body: some View {
        
        /*
         VStack {
             /*
              Text("One")
              Text("Two")
              Text("Three")
              */
             ForEach(0..<10) { index in
                 //Text("Hi: \(index)")
                 HStack {
                     Circle()
                         .frame(width: 30, height: 30)
                     Text("Index is: \(index)")
                 }
             }
         }
         */
        
        VStack {
            ForEach(data.indices) { index in
                //Text("New Item: \(index)")
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
