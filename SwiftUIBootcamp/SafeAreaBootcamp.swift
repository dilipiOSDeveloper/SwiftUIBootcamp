//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 18/07/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        /*
        ZStack {

            // Background
            Color.blue
                .ignoresSafeArea(.all)

            // Foreground
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
        */
        
        /*
        ZStack {
            
            Color.green
                .ignoresSafeArea(.all)
            
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            //.background(Color.red)
        }
        */
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(.blue)
        .background(
            Color.red
                .ignoresSafeArea(.all) // New Version
                //.ignoresSafeArea(edges: .top)
                //.edgesIgnoringSafeArea(.all) // Old version
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
