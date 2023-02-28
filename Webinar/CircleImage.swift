//
//  CircleImage.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("ThisIsFine")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
