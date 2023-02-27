//
//  DetailView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            Text("Details")
                .navigationTitle("Ich brauche mehr ...")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
