//
//  ReviseWindowView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

struct ReviseWindowView: View {
    @EnvironmentObject var Navigation:WindowNavigationStack
    var body: some View {
        self.Navigation.currentView.View.navigationTitle(self.Navigation.currentView.Title)
    }
}

struct ReviseWindowView_Previews: PreviewProvider {
    static var previews: some View {
        ReviseWindowView()
    }
}
