//
//  ContentView.swift
//  PhotoPicker
//
//  Created by Veaceslav Chirita on 24.07.2022.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)], spacing: 3) {
                ForEach(1..<11) { index in
                    Image("beach_\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity)
                        .clipped()
                        .aspectRatio(1, contentMode: .fit)
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        PhotosView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
