//
//  TextEntryForm.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct TextEntryForm: View {

    @State private var name = ""

    var body: some View {
        VStack(alignment: .center){
            Text(displayString(name:name))
            TextField("Bitte geben Sie hier hren Namen ein", text: $name)
                .multilineTextAlignment(.center)
        }
        .padding()
    }

    private func displayString(name: String) -> String {
        if name.isEmpty {
            return "Hallo"
        } else {
            return "Hallo, \(name)"
        }
    }
}

struct TextEntryForm_Previews: PreviewProvider {
    static var previews: some View {
        TextEntryForm()
    }
}
