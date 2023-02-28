//
//  APIClient.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import Foundation

struct APIData {
    var id = UUID().uuidString
    var name = UUID().uuidString
    var amount = Int.random(in: 0..<100)
}

struct APIClient {

    static func getData(url: URL) -> [APIData] {

        var data : [APIData] = []
        for _ in 1...100 {
            data.append(APIData())
        }
        return data
    }

}
