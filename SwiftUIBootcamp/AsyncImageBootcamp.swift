//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 04/08/23.
//

import SwiftUI

// Bootcamp #54
/*
 Apple introduced a whole bunch of really powerful SwiftUI features in iOS 15, with one of the most important being the new AsyncImage component. With Async Image, we can asynchonrously download images from a URL with only a few lines of code. This is a HUGE time saver for SwiftUI applications and simplifies one of the most complicated of making any app. In this video we will learn a few different implementations and how to you can easily customize the downloaded image to fit your app's UI design.
 */
struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/seed/picsumx/300/300")
    
    var body: some View {
        /*
         AsyncImage(url: url, content: { returnedImage in
             returnedImage
                 .resizable()
                 .scaledToFit()
                 .frame(width: 100, height: 100)
                 .cornerRadius(20)
         }, placeholder: {
             ProgressView()
         })
         */
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure: // case .failure(let error):
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
