//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 29/07/23.
//

import SwiftUI

// Bootcamp #45
// OPTION + COMMAND + LEFT ARROW -- Fold the code
struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES // Use Upper case for marks
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Working copy - things to do:
    /*
     1) Fix Title
     2) Fix Title
     3) Fix somethings else
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea(.all)
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        
                Button("Alert", action: {
                    showAlert.toggle()
                    })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the Alert")
            }
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLVIEW
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLVIEW
    }
    
    
    // Hold and command button on getAlert Func and add Documentation
    // MARK: FUNCTIONS
    /// Gets an alert with a specific title.
    ///
    /// This function creates  and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEWS
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
