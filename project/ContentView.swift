//
//  ContentView.swift
//  project
//
//  Created by Пользователь on 24.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Привет мир!")
            .padding()
            .background(LinearGradient(gradient:
                                        Gradient (colors:[.pink, .green]),startPoint: .center, endPoint: .bottomTrailing))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}