//
//  FruitListRow.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct FruitListRow: View {

    let fruit : Fruit

    var body: some View {
        HStack{
            Text(fruit.icon)
                .frame(alignment: .leading)
            Text(fruit.name).foregroundColor(fruit.color)
            Text(fruit.price)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
    
}

struct FruitListRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitListRow(fruit: .banana)
    }
}
