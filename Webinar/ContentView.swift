//
//  ContentView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct ContentView: View {

    @State private var count = 0

    private var sizes = [0.3, 0.5, 0.7, 1.0]
    @State var currentSize = 1.0

    var body: some View {
        NavigationView {
            Form{
                Section{
                    NavigationLink("Details ..."){
                        DetailView()
                    }
                    NavigationCoordinator.showWorkOuts()
                    NavigationCoordinator.textEntry()
                } header: {
                    Text("First header")
                        .sectionHeaderStyle()
                }
                Section{
                    Picker("Größe:", selection: $currentSize) {
                        ForEach(sizes, id: \.self) {
                            Text($0, format: .number)
                        }
                    }
                    .pickerStyle(.segmented)
                    Text(String(format: "Size: %.1fl", currentSize))
                } header: {
                    Text("Second header")
                        .sectionHeaderStyle()
                }

                Section{
                    Picker("Count", selection: $count) {
                            ForEach(0 ..< 99) {
                                Text("\($0) bottles")
                            }
                        }
                    Text("\(count)")
                } header: {
                    Text("Third header")
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
