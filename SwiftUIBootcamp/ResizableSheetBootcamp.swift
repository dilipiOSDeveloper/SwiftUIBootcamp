//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 08/08/23.
//

import SwiftUI

// Bootcamp #64
/*
 Master SwiftUI's Toolbar in this tutorial and take your app's navigation to the next level! Learn how to create custom toolbars, add buttons, and customize appearance with ease. Enhance your iOS app development skills and deliver a seamless user experience with SwiftUI's powerful Toolbar.
 */

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
                //.presentationDetents([.medium])
                //.presentationDetents([.fraction(0.5)])
                //.presentationDetents([.fraction(0.1), .medium, .large]) // prefer this one
                //.presentationDetents([.fraction(0.1),.height(300), .medium, .large])
                //.presentationDetents([.height(200)])
                //.presentationDetents([.medium, .large])
                //.presentationDragIndicator(.hidden)
                //.interactiveDismissDisabled()  // Didn't allow to dismiss down
                //.presentationDetents([.medium, .large], selection: $detents)
                //.presentationDetents([.fraction(0.5), .medium, .large], selection: $detents)
            
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("20%") {
                    detents = .fraction(0.2)
                }
                .foregroundColor(.blue)
                
                Button("MEDIUM") {
                    //detents = .medium
                    detents = .fraction(0.5)
                }
                .foregroundColor(.blue)
                
                Button("600 PX") {
                    detents = .height(600)
                }
                .foregroundColor(.blue)
                
                
                Button("LARGE") {
                    detents = .large
                }
                .foregroundColor(.blue)
            }
        }
        .presentationDetents([.fraction(0.2), .fraction(0.5), .height(600), .medium, .large], selection: $detents)
        .presentationDragIndicator(.hidden)

    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
