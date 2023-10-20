//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 07/08/23.
//

import SwiftUI

// Bootcamp #61
/*
 As of iOS 15, we can use the new .submitLabel modifier to change the color and text of the submit button on the keyboard. Even more importantly, we can also use .onSubmit to run custom functions when users click on the submit button! These features were not available before iOS 15 in SwiftUI.
 */

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Something to be console!")
            }
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.next)
            .onSubmit {
                print("Something to be console!")
            }
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Something to be console!")
            }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
