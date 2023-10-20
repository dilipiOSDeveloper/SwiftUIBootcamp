//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 24/07/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        /*
         Button("Click Me") {
             showActionSheet.toggle()
         }
         .actionSheet(isPresented: $showActionSheet) {
             getActionSheet()
         }
         */

        
        VStack {
            //Color.red
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.black)
            }
            .padding(.horizontal)

            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    
    func getActionSheet() -> ActionSheet {
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report this post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
            
            //return ActionSheet(title: Text("This is the title!"))
            
            //        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
            //        let button2: ActionSheet.Button = .destructive(Text("DESCTRUCTIVE"))
            //        let button3: ActionSheet.Button = .cancel()
            //
            //        return ActionSheet(
            //            title: Text("This is the title!"),
            //            message: Text("This is the message."),
            //            buttons: [button1, button1, button1, button2, button3])
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
