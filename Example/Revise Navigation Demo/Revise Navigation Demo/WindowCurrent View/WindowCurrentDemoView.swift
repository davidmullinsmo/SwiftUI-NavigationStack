//
//  WindowCurrentDemoView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct WindowCurrentDemoView: View {
    @EnvironmentObject var Navigation:WindowNavigateCurrentView
    let Title:String
    init(_ title: String) {
        self.Title = title
    }
    var body: some View {
        VStack {
            Text(" \(Title)")
            Button(action: {
                Navigation.ChangeCurrentView("Demo View Two") {
                   WindowCurrentDemoView("Sample Demo Window View")
                }
            }) {
                Text("Change View")
            }
            Button(action: {
                Navigation.HomeView()
            }) {
                Text("Home View")
            }
        }.padding()
    }
}

struct WindowCurrentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        WindowCurrentDemoView("Sample View")
    }
}
