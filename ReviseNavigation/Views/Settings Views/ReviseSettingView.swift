//
//  ReviseSettingView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

struct ReviseSettingView: View {
    @EnvironmentObject var Navigation:SettingsNavigationStack
    var body: some View {
        self.Navigation.currentView.View.navigationTitle(self.Navigation.currentView.Title)
    }
}

struct ReviseSettingView_Previews: PreviewProvider {
    static var previews: some View {
        ReviseSettingView()
    }
}
