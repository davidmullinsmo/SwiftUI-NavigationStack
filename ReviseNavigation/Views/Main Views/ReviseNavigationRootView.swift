//
//  ReviseNavigationRootView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

public struct ReviseNavigationRootView<Element: View, SideBarElement: View> : View {
    let HasNavigationStack:Bool
    let Content:Element
    let SideBar:SideBarElement
    let Title:String
    public init( _ title:String = "Home", navigationStack:Bool = true, @ViewBuilder content: () -> Element, @ViewBuilder sideBar: () -> SideBarElement) {
        self.HasNavigationStack = navigationStack
        self.Title = title
        self.Content = content()
        self.SideBar = sideBar()
    }
    
    
   public var body: some View {
        if(HasNavigationStack) {
            let stack = NavigationStack(NavigationItem(title: self.Title, view: AnyView(Content) ))
                NavigationView {
                    SideBar.environmentObject(stack)
                    ReviseMainView().padding() .environmentObject(stack)
                }
            
        } else {
            let stack = NavigateCurrentView(NavigationItem(title: self.Title, view: AnyView(Content) ))
                NavigationView {
                    SideBar.environmentObject(stack)
                    ReviseMainCurrentView().padding() .environmentObject(stack)
                }
        }
    }
}

