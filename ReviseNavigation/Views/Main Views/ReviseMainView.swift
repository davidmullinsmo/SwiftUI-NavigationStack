//
//  ReviseMainView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

struct ReviseMainView: View {
    @EnvironmentObject var Navigation:NavigationStack
    var body: some View {
        self.Navigation.currentView.View.navigationTitle(self.Navigation.currentView.Title)
    }
}

struct ReviseMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReviseMainView()
    }
}
