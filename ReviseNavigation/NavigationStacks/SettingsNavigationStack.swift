//
//  MainNavigationStack.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.

/*
 Once you Settings Panel loads this will be the NavigationStack you should be working with.
 If you follow our directions, this is the stack that should be loaded as an EnvironmentObject to the RootView of your Settings Panel.

 We have tried to make this framework better to work with then the Current NavigationStack built into Swift UI. I have full control over what happens in this Navigation Stack. */
import Foundation
import SwiftUI

public final class SettingsNavigationStack : ObservableObject {
    let rootView:NavigationItem
    @Published var viewStack:[NavigationItem] = []
    @Published var currentView:NavigationItem
    @Published public var MenuButtonShown:Bool = true
    
    /* This is set to private because you should never have to Initialze this Class*/
     init(_ currentView:NavigationItem) {
        self.currentView = NavigationItem(currentView)
        self.rootView = NavigationItem(currentView)
    }
    
    /* This let's you Put a New View as the current View and takes the old view and Pushes it to the NavigationStack to be Refernced Later*/
    public func PushView<Content:View>( _ title:String = "", @ViewBuilder view: () -> Content) {
        AddNewView(NavigationItem(title: title, view: AnyView( view() )))
    }
    /* This is just the code to work with PushView Function */
    private func AddNewView(_ view:NavigationItem) {
        if viewStack.count > 1 && currentView.ID == rootView.ID {
            currentView = view
        } else {
            viewStack.append(currentView)
            currentView = view
        }
    }
    /* This lets you go Back to the previous view. Note this does not add the currentView to the View Stack. It also subtracts the previous view from the Navigation Stack */
    public func PopView() {
        RemoveView()
    }
    /* This is just the code to work with PopView Function */
    private func RemoveView() {
        if viewStack.count == 0 { return }
      
        let last = viewStack.count - 1
        currentView = viewStack[last]
        viewStack.remove(at: last)
    }
    /* This just takes to you the RootView of the Application, but keeps the all views in the Navigation Stack */
    public func HomeView() {
        self.currentView = self.rootView
    }
    /* This just takes to you the RootView of the Application, but removes the all views in the Navigation Stack */
    public func RootView() {
        self.currentView = self.rootView
        ClearStack()
    }
    /* Clears the Navigation Stack */
    private func ClearStack() {
        
        viewStack.removeAll()
    }
    /* Returns the Current Count of the Navigation Stack*/
    public func ViewStackCount() -> Int {
        return self.viewStack.count
    }
    /* Returns the Current View */
    public func GetCurrentView() -> NavigationItem {
        return self.currentView
    }
    /* Returns the complete Navigation Stack*/
    public func GetViewStack() -> [NavigationItem] {
        return self.viewStack
    }
    /* This function just changes the current View without adding the current view to the Navigation Stack */
    public func ChangeCurrentView<Content:View>( _ title:String = "", @ViewBuilder view: () -> Content) {
        self.currentView = NavigationItem(title: title, view: AnyView( view() ))
    }
    /* This Removes all views from the Navigation Stack*/
    public func RemoveAllView() {
        ClearStack()
    }
    /* This searches the Navigation Stack from the Title of views. It returns an array of NavigationItem  */
    public func FindView(title:String) -> [NavigationItem] {
        var list: [NavigationItem] = []
        for item in viewStack where item.Title == title {
            list.append(item)
        }
        return list
    }
    /* This searches the Navigation Stack and returns the searched view.*/
    public func FindView(id:UUID) -> NavigationItem {
        var list: [NavigationItem] = []
        for item in viewStack where item.ID == id {
            list.append(item)
        }
        return list[0]
    }
}
