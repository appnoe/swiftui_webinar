//
//  ContentView.swift
//  Webinar-Watch Watch App
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct Workout: Identifiable {
  var id: String { name }
  let name: String
  let symbolName: String
}

struct WorkoutCellView: View {
  let workout: Workout
  var body: some View {
    VStack (alignment: .leading, spacing: 8) {
      HStack(alignment: .top) {
        // The workout symbol
        Image(systemName: workout.symbolName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 96, height: 40, alignment: .leading)
          .foregroundColor(.green)
        Spacer()
        // The ellipsis
        Image(systemName: "ellipsis.circle.fill")
          .resizable()
          .frame(width: 24, height: 24)
          .foregroundColor(.gray)
      }
      // The name of the workout
      Text(workout.name)
    }
    .padding(16)
  }
}

let workouts = [
  Workout(name: "Outdoor Walk", symbolName: "figure.walk"),
  Workout(name: "Outdoor Bike", symbolName: "bicycle"),
  Workout(name: "Fencing", symbolName: "figure.fencing")
]

struct WorkoutSetupView: View {
  let workout: Workout

  var body: some View {
    Text(workout.name)
  }
}

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                ForEach(workouts) { workout in
                    NavigationLink(destination: WorkoutSetupView(workout: workout)) {
                        WorkoutCellView(workout: workout)
                    }
                }
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WorkoutCellView_Previews: PreviewProvider {
      static var previews: some View {
        WorkoutCellView(workout: workouts[0])
      }
}

