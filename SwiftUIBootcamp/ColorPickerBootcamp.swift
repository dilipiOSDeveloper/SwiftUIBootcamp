//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 26/07/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    //Bootcamp #39
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a Color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
            .cornerRadius(10)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
