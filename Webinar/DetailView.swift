//
//  DetailView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct DetailView: View {

    @State private var counter = 0

    var body: some View {
        NavigationView {
            VStack {
                Text("\(counter)")
                    .navigationTitle("Ich brauche mehr ...")
                Button("Increment", action: {
                    counter = counter + 1
                })
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
