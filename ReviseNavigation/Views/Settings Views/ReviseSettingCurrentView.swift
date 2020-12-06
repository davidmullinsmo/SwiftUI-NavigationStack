//
//  ReviseSettingCurrentView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

struct ReviseSettingCurrentView: View {
    @EnvironmentObject var Navigation:SettingsNavigateCurrentView
    var body: some View {
        self.Navigation.currentView.View.navigationTitle(self.Navigation.currentView.Title)
    }
}

struct ReviseSettingCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        ReviseSettingCurrentView()
    }
}
