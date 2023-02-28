//
//  CustomView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        StarView()
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}

struct ScaledBezier: Shape {
    let bezierPath: UIBezierPath

    func path(in rect: CGRect) -> Path {
        let path = Path(bezierPath.cgPath)

        // Figure out how much bigger we need to make our path in order for it to fill the available space without clipping.
        let multiplier = min(rect.width, rect.height)

        // Create an affine transform that uses the multiplier for both dimensions equally.
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)

        // Apply that scale and send back the result.
        return path.applying(transform)
    }
}

struct StarView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 2))
            path.addLine(to: CGPoint(x: 27.05, y: 11.78))
            path.addLine(to: CGPoint(x: 39.02, y: 15.13))
            path.addLine(to: CGPoint(x: 31.41, y: 24.52))
            path.addLine(to: CGPoint(x: 31.76, y: 36.37))
            path.addLine(to: CGPoint(x: 20, y: 32.4))
            path.addLine(to: CGPoint(x: 8.24, y: 36.37))
            path.addLine(to: CGPoint(x: 8.59, y: 24.52))
            path.addLine(to: CGPoint(x: 0.98, y: 15.13))
            path.addLine(to: CGPoint(x: 12.95, y: 11.78))
            path.closeSubpath()
        }
        .fill(Color.red) // Ändern Sie den Pfadstil, um ihn sichtbar zu machen
    }
}

extension Path {
    func scaled(for rect: CGRect) -> Path {
        let scaleX = rect.width/boundingRect.width
        let scaleY = rect.height/boundingRect.height
        let scale = min(scaleX, scaleY)
        return applying(CGAffineTransform(scaleX: scale, y: scale))
    }
}
