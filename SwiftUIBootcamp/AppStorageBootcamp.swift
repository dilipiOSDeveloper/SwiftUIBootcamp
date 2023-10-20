//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 02/08/23.
//

import SwiftUI

// Bootcamp #52
/*
 In iOS applications, we can use App Storage / User Defaults to save small pieces of information that will persist between sessions. This means that if a user closes the app and re-opens it, these values will still be saved! The @AppStorage property wrappers lets us easily add and save data into UserDefaults. In this video we will first understand how UserDefaults work and then look at the subtle advantages that the App Storage property wrapper gives us.
 */

struct AppStorageBootcamp: View {
    
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Dilip Tiwari"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
