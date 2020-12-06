//
//  SettingsStackContentView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct SettingsStackContentView: View {
    @EnvironmentObject var Navigation:SettingsNavigationStack
    var body: some View {
        VStack {
            Text("Setting Main View!")
                .padding()
            Button(action: {
                Navigation.PushView("This is a Demo of Push") {
                    SettingDemoView("New Demo View")
                }
            }) {
                Text("Push New View onto The Stack")
            }
            //Open New Window with the Current View
            Button(action: {
                PopNewWindow()
            }) {
                Text("Open New Window")
            }
        }.padding()
        
    }
    func PopNewWindow() {
        ReviseWindowRootView("Sample Testing") {
            Text("Testing Something").padding()
        }
    }
}

struct SettingsStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsStackContentView()
    }
}
