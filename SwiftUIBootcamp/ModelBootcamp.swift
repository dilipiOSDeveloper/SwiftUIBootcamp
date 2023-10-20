//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 31/07/23.
//

import SwiftUI


//struct UserModel {
//    let displayName: String
//    let userName: String
//    let followeCount: Int
//}
struct UserModel: Identifiable {
    let id: String = UUID().uuidString // It creates a random user id as a String
    let displayName: String
    let userName: String
    let followeCount: Int
    let isVerified: Bool
}

// Bootcamp #49
struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        //"Dilip", "Srikant", "Riya", "Ankit"
        UserModel(displayName: "Dilip", userName: "dilip123", followeCount: 100, isVerified: true),
        UserModel(displayName: "Srikant", userName: "srikant123", followeCount: 55, isVerified: false),
        UserModel(displayName: "Riya", userName: "riya123", followeCount: 243, isVerified: true),
        UserModel(displayName: "Ankit", userName: "ankit123", followeCount: 200, isVerified: false)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                            
                        VStack {
                            Text("\(user.followeCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
//                ForEach(users, id: \.self) { name in
//                    HStack(spacing: 15.0) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                    .padding(.vertical, 10)
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
