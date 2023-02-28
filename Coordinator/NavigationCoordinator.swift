//
//  NavigationCoordinator.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct NavigationCoordinator {

    static func showWorkOuts() -> some View {

        return NavigationLink("Workouts"){
            WorkoutDashboardView()
        }

    }

    static func textEntry() -> some View {

        return NavigationLink("TextEntry"){
            TextEntryForm()
        }

    }

}