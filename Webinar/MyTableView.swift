//
//  MyTableView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 27.02.23.
//

import SwiftUI

enum Fruit {
    case banana
    case apple
    case tomato
    case strawberry

    var name : String {
        switch self {
        case .banana:
            return "Banane"
        case .apple:
            return "Apfel"
        case .strawberry:
            return "Erdbeere"
        case .tomato:
            return "Tomate"
        }
    }

    var icon : String {
        switch self {
        case .banana:
            return "🍌"
        case .apple:
            return "🍏"
        case .strawberry:
            return "🍓"
        case .tomato:
            return "🍅"
        }
    }

    var color: Color {
        switch self {
        case .banana:
            return .yellow
        case .apple:
            return .green
        case .strawberry:
            return .red
        case .tomato:
            return .cyan
        }
    }

    var price: String {
        switch self {
        case .banana:
            return "3,49 €"
        case .apple:
            return "2,64 €"
        case .strawberry:
            return "5,60 €"
        case .tomato:
            return "4,50 €"
        }
    }
}

struct MyTableView: View {

    private let fruits = [
        Fruit.banana,
        Fruit.tomato,
        Fruit.strawberry,
        Fruit.apple
    ]

    var body: some View {
        List(fruits, id: \.name){ fruit in
            FruitListRow(fruit: fruit)
        }
    }
}

struct MyTableView_Previews: PreviewProvider {
    static var previews: some View {
        MyTableView()
    }
}
