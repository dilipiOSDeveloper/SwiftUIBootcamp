//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 26/07/23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    // Bootcamp #38

    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        /*
         VStack {
             HStack {
                 Text("Age:")
                 Text(selection)
             }
             
             Picker("Picker", selection: $selection) {
                 
                 /*
                  Text("1").tag("1")
                  Text("2").tag("2")
                  Text("3").tag("3")
                  Text("4").tag("4")
                  Text("5").tag("5")
                  */
                 
                 ForEach(18..<100) { number in
                     Text("\(number)")
                         .font(.title)
                         .foregroundColor(.red)
                         .tag("\(number)")
                 }
             }
             //.pickerStyle(WheelPickerStyle())
             //.background(Color.gray.opacity(0.3))
         }
         */
        

        /*
         Picker("Picker", selection: $selection) {
             ForEach(filterOptions, id: \.self) {option in
                 HStack {
                     Text(option)
                     Image(systemName: "heart.fill")
                 }
                 .tag(option)
             }
         }
         .pickerStyle(MenuPickerStyle())
         .frame(width: 200)
         .font(.headline)
         .accentColor(.white)
         .padding()
         .padding(.horizontal)
         .frame(width: 200)
         .background(.blue)
         .cornerRadius(10)
         .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
         */
        
        Picker("Picker", selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        //.background(.red)
        
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
