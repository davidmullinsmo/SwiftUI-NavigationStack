//
//  ReviseWindowCurrentView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

struct ReviseWindowCurrentView: View {
    @EnvironmentObject var Navigation:WindowNavigateCurrentView
    var body: some View {
        self.Navigation.currentView.View.navigationTitle(self.Navigation.currentView.Title)
    }
}

struct ReviseWindowCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        ReviseWindowCurrentView()
    }
}
