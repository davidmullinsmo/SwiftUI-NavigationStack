//
//  Revise_Navigation_DemoApp.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

@main
struct Revise_Navigation_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            
            /* Settings with a NavigationStack to Change Views*/
             
           // ReviseNavigationRootView {
           //     ContentView()
           // } sideBar: {
           //     SideBarDemo()
           // }.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)
            
            /* Main Content without a NavigationStack but you still can change a View with this. Just don't keep track of the past View besides the rootView
                As you can see the navigationStack varible passed to initilizer has a default value of True.
             */
           // ReviseNavigationRootView("Hello World", navigationStack: false) {
           //     CurrentContentView()
           // } sideBar: {
           //     CurrentSideBar()
           // }
            //.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)
            ReviseRootView("Hello App", navigationStack: false) {
                CurrentContentView()
            }
            
        }
        Settings {
            /* Settings with a NavigationStack to Change Views*/
            ReviseSettingRootView("Settings Demo") {
                SettingsStackContentView().padding()
            }.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)
            
            /* Settings without a NavigationStack but you still can change a View with this. Just don't keep track of the past View besides the rootView
                As you can see the navigationStack varible passed to initilizer has a default value of True.
             */
            
           // ReviseSettingRootView("Settings Demo", navigationStack: false) {
           //     SettingMainView()
           // }.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)
        }
    }
}
