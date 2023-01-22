//
//  ContentView.swift
//  LazyDemos
//
//  Created by Sammy on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    //@State private var columns = [
    var body: some View {
        VStack {
            ExtractedView()
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

struct ExtractedView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}
