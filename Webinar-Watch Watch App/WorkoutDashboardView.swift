//
//  ContentView.swift
//  Webinar-Watch Watch App
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI


struct WorkoutDashboardView: View {

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

struct WorkoutDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDashboardView()
    }
}
