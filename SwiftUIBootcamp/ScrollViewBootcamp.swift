//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 14/07/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        /*
         ScrollView(.horizontal, showsIndicators: true) {

             /*
              VStack {
                  ForEach(0..<10) { index in
                      Rectangle()
                          .fill(Color.blue)
                          .frame(height: 300)
                  }
              }
              */
             
             /*
              HStack {
                  ForEach(0..<10) { index in
                      Rectangle()
                          .fill(Color.blue)
                          .frame(width: 300,height: 300)
                  }
              }
              */
             
         }
         */
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                   
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
