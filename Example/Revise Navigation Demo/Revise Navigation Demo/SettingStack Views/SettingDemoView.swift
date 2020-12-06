//
//  SettingDemoView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct SettingDemoView: View {
    @EnvironmentObject var Navigation:SettingsNavigationStack
    let Title:String
    @State var count:Int = 0
    init(_ title:String) {
        self.Title = title
    }
    var body: some View {
       
        Text("The Current View Stack Count \(count.description)")
        Button(action: {
            countViews()
            //Sample of Push Navigation
            Navigation.PushView("Hello World")
            {
                SettingDemoView("View \(count.description)")
            }
        }) {
            Text("Go Forward")
        }
        Button(action: {
            Navigation.PopView()
            countViews()
        }) {
            Text("Go Backward")
        }
        Button(action: {
            Navigation.HomeView()
        }) {
            Text("Go Home")
        }
        Button(action: {
            Navigation.RootView()
            
        }) {
            Text("Go Root View (Same a Home View But Clears the Stack)")
        }
    }
    func countViews() {
        self.count = Navigation.ViewStackCount()
    }
}

struct SettingDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SettingDemoView("Hello World")
    }
}
