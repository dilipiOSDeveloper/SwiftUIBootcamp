//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 20/07/23.
//

import SwiftUI


/*
 The @Binding property wrapper helps us to connect a @State variable between the parent view and a child or secondary view. This is useful for any situation when we want to update a parent view from within the child view. In this video, you will understand the difference between the two property wrappers and when to implement each.
 */

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .red
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}


struct ButtonView: View {
    
    @Binding var backgroundColor: Color  // Use the same property same as in parent view generally
    @State var buttonColor: Color = .blue
    @Binding var title: String
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor =  .pink
            title = "New Title"
        } label: {
            Text("Button")
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
