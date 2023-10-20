//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 20/07/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            /*
             RoundedRectangle(cornerRadius: 25)
                 //.fill(isStartingState == true ? Color.red : Color.blue)
                 .fill(isStartingState ? Color.red : Color.blue)
                 .frame(width: 200, height: 100)
             */
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                //.fill(isStartingState == true ? Color.red : Color.blue)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
