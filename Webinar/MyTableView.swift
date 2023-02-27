//
//  MyTableView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct MyTableView: View {
    
    var body: some View {
        List{
            ForEach(0..<50) { _ in
                Text("Text")
            }
        }
    }
}

struct MyTableView_Previews: PreviewProvider {
    static var previews: some View {
        MyTableView()
    }
}
