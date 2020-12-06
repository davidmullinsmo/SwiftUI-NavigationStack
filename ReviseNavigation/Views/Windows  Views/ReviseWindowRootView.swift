//
//  ReviseWindowView.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI

public struct ReviseWindowRootView<Element:View> : View {
    @State private var IsLoaded:Bool = false
        let HasNavigationStack:Bool
        let Content:Element
        let Title:String
    @discardableResult  public init (_ title:String = "Home", navigationStack:Bool = true, @ViewBuilder content: () -> Element) {
        self.HasNavigationStack = navigationStack
        self.Title = title
        self.Content = content()
  
        ReviseNewWindow(enableMiniaturizable: true, enableResizable:  true, enableFullScreen: true, newTitle: self.Title) {
            ReturnCurrentView()
        }
    }
   public var body: some View {
     
            if(HasNavigationStack) {
                let model = WindowNavigationStack(NavigationItem(title: self.Title, view: AnyView(Content) ))
                ReviseWindowView().padding() .environmentObject(model)
            }
            else
            {
                let model = WindowNavigateCurrentView(NavigationItem(title: self.Title, view: AnyView(Content)))
                ReviseWindowCurrentView().padding().environmentObject(model)
            }
        
    }
    func ReturnCurrentView() -> some View {
        return body
    }
}


