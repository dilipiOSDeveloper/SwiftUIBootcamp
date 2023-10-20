//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 30/07/23.
//

import SwiftUI

// Bootcamp #47
struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "TEST123"//= nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practising safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT USE ! EVER !!!!!!
                // DO NOT FORCE UNWRAP VALUES
//                Text(displayText!)
//                    .font(.title)
                
                
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .onAppear {
                //loadData()
                loadData2()
            }
            .navigationTitle("Safe Coding")
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
