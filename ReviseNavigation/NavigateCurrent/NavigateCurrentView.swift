//
//  NavigateCurrentView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
/*
 
    This is a Navigation View without the Navigation Stack. It just let's you change the current Views and not store them into a Stack.
    If you would like to store your view in a Stack Please Look at NavigationStack to do this. 
 */

import Foundation
import SwiftUI

public final class NavigateCurrentView : ObservableObject {
    let rootView:NavigationItem
    @Published var currentView:NavigationItem
    @Published public var MenuButtonShown:Bool = true
    
    /* This is set to private because you should never have to Initialze this Class*/
     init(_ currentView:NavigationItem) {
        self.currentView = NavigationItem(currentView)
        self.rootView = NavigationItem(currentView)
    }
    
    /* This function just changes the current View without adding the current view to the Navigation Stack */
    public func ChangeCurrentView<Content:View>(_ title:String = "", @ViewBuilder view: () -> Content ) {
        self.currentView = NavigationItem(title: title, view: AnyView( view() ))
    }
    /* This just takes to you the RootView of the Application, but keeps the all views in the Navigation Stack */
    public func HomeView() {
        self.currentView = self.rootView
    }
    /* Returns the Current View */
    public func GetCurrentView() -> NavigationItem {
        return self.currentView
    }
}
