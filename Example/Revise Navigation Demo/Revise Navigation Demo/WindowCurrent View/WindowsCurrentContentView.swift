//
//  WindowsCurrentContentView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct WindowsCurrentContentView: View {
    @EnvironmentObject var Navigation:WindowNavigateCurrentView
    var body: some View {
        VStack {
            Text("Setting Main View!")
                .padding()
            Button(action: {
                Navigation.ChangeCurrentView("This is a Demo of Push") {
                    WindowCurrentDemoView("Window Demo View Today")
                }
            }) {
                Text("Push New View onto The Stack")
            }
           
        }.padding()
    }
}

struct WindowsCurrentContentView_Previews: PreviewProvider {
    static var previews: some View {
        WindowsCurrentContentView()
    }
}
