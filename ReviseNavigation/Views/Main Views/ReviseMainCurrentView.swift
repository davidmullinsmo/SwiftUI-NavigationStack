//
//  ReviseMainCurrentView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

struct ReviseMainCurrentView: View {
    @EnvironmentObject var Navigation:NavigateCurrentView
    var body: some View {
        self.Navigation.currentView.View.navigationTitle(self.Navigation.currentView.Title)
    }
}

struct ReviseMainCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        ReviseMainCurrentView()
    }
}
