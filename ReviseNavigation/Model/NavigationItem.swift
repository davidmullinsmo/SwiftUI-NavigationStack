//
//  NavigationContentItem.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
/*
    This Class is the Main Class to work with all Navigation View Stack Today
    
    ID is an Unique Idenifier to find the View in the View Stack
    Title either Sets the Window Title or the Navigation Title on each Windows
    View is the Content that you want to show in your Application
 */

import Foundation
import SwiftUI

public struct NavigationItem {
    let ID:UUID
    let Title:String
    let View:AnyView
    
    init(title:String, view:AnyView) {
        self.ID = UUID()
        self.Title = title
        self.View = view
    }
    init(_ view: NavigationItem) {
        self.ID = view.ID
        self.Title = view.Title
        self.View = view.View
    }
}

