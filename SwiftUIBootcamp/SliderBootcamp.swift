//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 28/07/23.
//

import SwiftUI

//Bootcamp #42
struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                //"\(sliderValue)"
                //String(format: "%.2f", sliderValue)
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue, in: 1...5,
                step: 1.0, onEditingChanged: {_ in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel:
                    Text("5")
                ,
                label: {
                    Text("Title")
            })
            .accentColor(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
