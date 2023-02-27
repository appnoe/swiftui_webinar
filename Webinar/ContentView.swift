//
//  ContentView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form{
                Section{
                    NavigationLink("Details ..."){
                        DetailView()
                    }
                    NavigationLink("Texteingabe"){
                        TextEntryForm()
                    }
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
                        .sectionHeaderStyle()
                }

                Section{
                    Text("11")
                    Text("12")
                } header: {
                    Text("Second header")
                        .sectionHeaderStyle()
                }
            }
            .navigationTitle("Einstellungen")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}

public extension Text {
    func sectionHeaderStyle() -> some View {
        self
            .font(.system(.title3))
            .fontWeight(.bold)
            .foregroundColor(.primary)
            .textCase(nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
