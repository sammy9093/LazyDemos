//
//  ContentView.swift
//  LazyDemos
//
//  Created by Sammy on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var columns = [
//        GridItem(.fixed(100), spacing: 1),
        GridItem(.flexible(maximum: 45)),
        GridItem()
    
    ]
    
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: columns) {
                ForEach(0..<100) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }
            }
        }
        .padding()
    }
}



//Struct made for a View
struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
