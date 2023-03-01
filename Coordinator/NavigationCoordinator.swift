//
//  NavigationCoordinator.swift
//  Webinar
//
//  Created by Klaus Rodewig on 28.02.23.
//

import SwiftUI

struct NavigationCoordinator {

    static func showDetailView() -> some View {

        return NavigationLink("Show details"){
            DetailView()
        }

    }

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

    static func customView() -> some View {

        return NavigationLink("Custom view"){
            CustomView()
        }

    }

    static func animationView() -> some View {

        return NavigationLink("Animation view"){
            AnimationView()
        }

    }

    static func transitionView() -> some View {

        return NavigationLink("Transition view"){
            TransitionView()
        }

    }

}
