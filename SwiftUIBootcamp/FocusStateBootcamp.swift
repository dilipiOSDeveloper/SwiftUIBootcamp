//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 07/08/23.
//

import SwiftUI

// Bootcamp #60
/*
 The @FocusState property wrapper is an extremely powerful new feature that allows us to programmatically manage whether or not a view is in focus. In practice, this will most often be associated with users clicking on TextFields. In this video, we will first learn what Focus State is and then review a few real-world implementations! As a bonus, we will also check out Apple's documentation on this new feature.
 */
struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
    @FocusState private var usernameInFocus: Bool
    @State private var password: String = ""
    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            
            Button("SIGN UP 😍") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//            Button("TOOGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
