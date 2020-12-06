//
//  CurrentDemoView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct CurrentDemoView: View {
    @EnvironmentObject var Navigation: NavigateCurrentView
    var body: some View {
        VStack {
            Text("Demo View ")
            Button(action: {
                Navigation.ChangeCurrentView("Demo View Two") {
                    CurrentDemoAnotherView()
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

struct CurrentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentDemoView()
    }
}
