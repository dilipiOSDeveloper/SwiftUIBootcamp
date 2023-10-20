//
//  SpaceBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 13/07/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        /*
         HStack(spacing: nil) {
         Rectangle()
         .frame(width: 100, height: 100)
         
         Spacer()
         .frame(height: 10)
         .background(Color.orange)
         
         Rectangle()
         .fill(Color.red)
         .frame(width: 100, height: 100)
         }
         .background(Color.blue)
         */
        
        
        /*
         HStack(spacing: 0) {
         Spacer(minLength:  0)
         .frame(height: 10)
         .background(Color.orange)
         
         Rectangle()
         .frame(width: 50, height: 50)
         
         Spacer()
         .frame(height: 10)
         .background(Color.orange)
         
         Rectangle()
         .fill(Color.red)
         .frame(width: 50, height: 50)
         
         Spacer()
         .frame(height: 10)
         .background(Color.orange)
         
         Rectangle()
         .fill(Color.green)
         .frame(width: 50, height: 50)
         
         Spacer(minLength: 0)
         .frame(height: 10)
         .background(Color.orange)
         }
         .background(Color.orange)
         //.padding(.horizontal, 200)
         .background(Color.blue)
         */
        
        // MARK: If we want to have same font inside HStack for then we can place .font on HStaCK instead of each element
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                //.font(.title)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Image(systemName: "gear")
                //.font(.title)
            }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()
            
            Rectangle()
                .frame(height: 50)
        }
        //.background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
