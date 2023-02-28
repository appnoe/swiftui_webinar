//
//  WorkoutView.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct WorkoutCellView: View {
  let workout: Workout
  var body: some View {
    VStack (alignment: .leading, spacing: 8) {
      HStack(alignment: .top) {
        Image(systemName: workout.symbolName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 96, height: 40, alignment: .leading)
          .foregroundColor(.green)
        Spacer()
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


struct WorkoutCellView_Previews: PreviewProvider {
      static var previews: some View {
        WorkoutCellView(workout: workouts[0])
      }
}

// MARK: -

struct WorkoutView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


// MARK: -

struct WorkoutSetupView: View {
  let workout: Workout

  var body: some View {
    Text(workout.name)
  }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
