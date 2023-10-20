//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 14/07/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    //let backgroundColor: Color = .red // Color.red
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
            
        /*
        if title == "Apples" {
            self.backgroundColor = .red
        }
        else {
            self.backgroundColor = .orange
        }
       */
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //InitializerBootcamp(count: 100, fruit: .apple)
        
        HStack {
            InitializerBootcamp(count: 100, fruit: .apple)
            InitializerBootcamp(count: 500, fruit: .orange)
        }
    }
}
