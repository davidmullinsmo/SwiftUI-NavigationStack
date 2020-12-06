//
//  SettingMainView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct SettingMainView: View {
    @EnvironmentObject var Navigation: SettingsNavigateCurrentView
    var body: some View {
        VStack {
            Text("Settings Main View")
            Button(action: {
                Navigation.ChangeCurrentView("Demo View Two") {
                    SettingsDemoView()
                }
            }) {
                Text("Change View")
            }
        }.padding()
        
    }
}

struct SettingMainView_Previews: PreviewProvider {
    static var previews: some View {
        SettingMainView()
    }
}
