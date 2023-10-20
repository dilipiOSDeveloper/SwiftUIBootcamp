//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 21/07/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            
            .sheet(isPresented: $showSheet) {
                // DO NOT ADD CONDITIONAL LOGIC HERE
                SecondScreen()
            }
            
            /*
             * Keep One Sheet Per view multiple sheets not possible
             * Don't add conditional Logic inside .sheet like if else statement or mutiple Sheets it will not update and we will get the errors
             * Same above things is for .fullScreenCover
             * Don't use .sheet or .fullScreenCover on same View
             */
            
            
            /*
             To Dismiss a screen we need two things
             1) @Environment(\.presentationMode) var presentationMode
             2) presentationMode.wrappedValue.dismiss()
             */
        }
    }
}

struct SecondScreen: View {
 
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                
//                Text("Button")
//                    .foregroundColor(Color.red)
//                    .font(.headline)
//                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
            }
            
        }
    }
    
}


struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //SecondScreen()
    }
}
