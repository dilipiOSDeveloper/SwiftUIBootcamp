//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 02/08/23.
//

import SwiftUI

// Bootcamp #51
/*
 The @EnvironmentObject is a super-useful property wrapper that lets us put an observable object into the environment of our SwiftUI application. By doing this, all of these views in the view hierarchy will then have access to this object. This is the perfect solution for any case where you have a class that needs to be accessed by multiple views, but you don't want to manually bind it from view to view to view with initializers.
 */
// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    // when this ViewModel gets created it will call its init() function
    init() {
        getDta()
    }
    
    func getDta() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @State var viewModel: EnvironmentViewModel = EnvironmentViewModel() // Initialization EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
//                    NavigationLink(destination: DetailView(selectedString: item, viewModel: viewModel)) {
//                        Text(item)
//                    }
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    //@ObservedObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            // Foreground
//            NavigationLink(destination: FinalView(viewModel: viewModel)) {
//                Text(selectedString)
//                    .font(.headline)
//                    .foregroundColor(.orange)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(.white)
//                    .cornerRadius(30)
//            }
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // Background
            LinearGradient(
                gradient: Gradient(colors: [.purple, .red]),
                startPoint: .leading,
                endPoint: .trailing)
                .ignoresSafeArea()
            
            // Foreground
            ScrollView {
                VStack(spacing: 20) {
                    
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
//                    Text("Item 1")
//                    Text("Item 2")
//                    Text("Item 3")
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}


struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedString: "iPhone")
        //FinalView()
    }
}
