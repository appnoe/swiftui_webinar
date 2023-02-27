//
//  MyTableView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

struct Fruit {
    let name: String
    let image: String
    let color: Color
}

struct MyTableView: View {

    private let fruits = [
        Fruit(name: "Apfel", image: "🍏", color: .green),
        Fruit(name: "Banane", image: "🍌", color: .yellow),
        Fruit(name: "Tomate", image: "🍅", color: .red),
        Fruit(name: "Erdbeere", image: "🍓", color: .cyan)
    ]

    var body: some View {
        List(fruits, id: \.name){ fruit in
            HStack{
                Text(fruit.image)
                Text(fruit.name).foregroundColor(fruit.color)
            }
        }
    }
}

struct MyTableView_Previews: PreviewProvider {
    static var previews: some View {
        MyTableView()
    }
}
