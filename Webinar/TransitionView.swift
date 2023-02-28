//
//  TransitionView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct TransitionView: View {

    @State private var imageIsVisible = true

    var body: some View {
        VStack {
            if imageIsVisible {
                CircleImage()
                    .transition(.scale)
            }

            Button("Push", action: {
                withAnimation{
                    imageIsVisible.toggle()
                }

            })
        }
    }

}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
