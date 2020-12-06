//
//  ReviseSettingRootView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

public struct ReviseSettingRootView<Element:View> : View {
    @State private var IsLoaded:Bool = false
       let HasNavigationStack:Bool
       let Content:Element
       let Title:String
    public init (_ title:String = "Home", navigationStack:Bool = true, @ViewBuilder content: () -> Element) {
        self.HasNavigationStack = navigationStack
        self.Title = title
        self.Content = content()
    }
   public var body: some View {
        if(IsLoaded) {
            if(HasNavigationStack) {
                let model = SettingsNavigationStack(NavigationItem(title: self.Title, view: AnyView(Content) ))
                ReviseSettingView().padding() .environmentObject(model)
            }
            else
            {
                let model = SettingsNavigateCurrentView(NavigationItem(title: self.Title, view: AnyView(Content)))
                ReviseSettingCurrentView().padding().environmentObject(model)
            }
        } else {
            Text("Framework Error!!! *****Root View in Framework ****").onAppear() {
                self.IsLoaded = true
            }.onHover(perform: { hovering in
                self.IsLoaded = true
            })
        }
    }
}


