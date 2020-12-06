//
//  SettingsDemoView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct SettingsDemoView: View {
    @EnvironmentObject var Navigation: SettingsNavigateCurrentView
    
    var body: some View {
        VStack {
            Text("Settings Demo View")
            Button(action: {
                Navigation.ChangeCurrentView("Demo View Two") {
                   SettingMainView()
                }
            }) {
                Text("Change View")
            }
        }.padding()
    }
}


