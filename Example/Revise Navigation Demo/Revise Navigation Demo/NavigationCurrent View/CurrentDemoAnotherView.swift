//
//  CurrentDemoAnotherView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct CurrentDemoAnotherView: View {
    @EnvironmentObject var Navigation: NavigateCurrentView
    var body: some View {
        VStack {
            Text("This is Just Another View")
            Button(action: {
                Navigation.ChangeCurrentView("Demo View One") {
                    CurrentDemoView()
                }
            }) {
                Text("Change View")
            }
            Button(action: {
                Navigation.HomeView()
            }) {
                Text("Home View")
            }
        }
        
    }
}

struct CurrentDemoAnotherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentDemoAnotherView()
    }
}
