//
//  Model.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import Foundation


struct Workout: Identifiable {
  var id: String { name }
  let name: String
  let symbolName: String
}


let workouts = [
  Workout(name: "Outdoor Walk", symbolName: "figure.walk"),
  Workout(name: "Outdoor Bike", symbolName: "bicycle"),
  Workout(name: "Fencing", symbolName: "figure.fencing")
]
