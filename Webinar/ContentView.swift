//
//  ContentView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form{
            Section{
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            } header: {
                Text("First header")
                    .fontWeight(.bold)
            }

            Section{
                Text("11")
                Text("12")
            } header: {
                Text("Second header")
                    .fontWeight(.bold)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
