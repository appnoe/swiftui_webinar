//
//  MyTableView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct MyTableView: View {

    private let fruits = ["Apfel", "Banane", "Tomate", "Erdbeere"]
    
    var body: some View {
        List{
            ForEach(0..<fruits.count, id: \.self) { fruit in
                Text(fruits[fruit])
            }
        }
    }
}

struct MyTableView_Previews: PreviewProvider {
    static var previews: some View {
        MyTableView()
    }
}
