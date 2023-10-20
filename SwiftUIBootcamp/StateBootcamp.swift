//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 19/07/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var mytitle: String = "Ny Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor //Color.red
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(mytitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        mytitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        mytitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(Color.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
