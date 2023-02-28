//
//  AnimationView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct AnimationView: View {

    @State private var scaleFactor = 1.0
    @State private var odd = true

    var body: some View {
        Button("Do not push!") {
            if odd == true {
                scaleFactor += 1
            } else {
                scaleFactor -= 1
            }
            odd = !odd
        }
        .padding(60)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(scaleFactor)
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
