//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 01/08/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    // MARK: @Published is Same as @State in Struct but @Published is used in Class. @Published is just pushed and update the entire object
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

// Bootcamp #50
/*
 As a SwiftUI developer, you are probably well aware of the @State property wrapper. We use this to tell the View that it will need to update if a @State variable changes. This is create for basic data types, but unfortunately, does not work for other classes in our application. Thankfully, the SwiftUI framework includes the @ObservableObject and @StateObject property wrappers for this purpose. In this video we will create "view model" which is a custom class that will manage the data for our View and then implement both of these new property wrappers into our iOS application.
 */

struct ViewModelBootcamp: View {
    // MARK: We can use @State when we were in a Struct or View
    // MARK: @State is a single variable
    //@State var fruitArray: [FruitModel] = []
    
    // MARK: @ObservedObject is whole object/class
    // MARK:  @ObservedObject is same as @StateObject but @StateObject will persist (It will not reaload) the date even if the View reloads for whatever reason but in case of @ObservedObject it will also reload the data
    // MARK: @StateObject -> USE THIS ON CREATION / INIT (If we want to pass data from ONE View to Another View use ObservedObject)
    // MARK: @StateObject -> USE THIS FOR SUBVIEWS
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                /*
                 ForEach(fruitArray) { fruit in
                     HStack {
                         Text("\(fruit.count)")
                             .foregroundColor(.red)
                         Text(fruit.name)
                             .font(.headline)
                             .bold()
                     }
                 }
                 */
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
    //                .onDelete { indexSet in
    //                    deleteFruit(index: indexSet)
    //                }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                NavigationLink(
                                    destination: RandomScreen(fruitViewModel: fruitViewModel),
                                    label: {
                                        Image(systemName: "arrow.right")
                                            .font(.title)
                                    })
            )
//            .onAppear { // MARK:  .onAppear will be called Multiple times when going back it works like a viewWillAppear in Swift.
//                fruitViewModel.getFruits()
//            }
        }
    }
    
    /*
     func getFruits() {
         let fruit1 = FruitModel(name: "Orange", count: 1)
         let fruit2 = FruitModel(name: "Banana", count: 2)
         let fruit3 = FruitModel(name: "Watermelon", count: 88)

         fruitViewModel.fruitArray.append(fruit1)
         fruitViewModel.fruitArray.append(fruit2)
         fruitViewModel.fruitArray.append(fruit3)
     }
     
     func deleteFruit(index: IndexSet) {
         fruitViewModel.fruitArray.remove(atOffsets: index)
     }
     */

}



struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("GO BACK")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}


struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        //RandomScreen()
    }
}
