//
//  WindowsStackDemoView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct WindowsStackDemoView: View {
    @EnvironmentObject var Navigation:WindowNavigationStack
   @State var Count:Int = 0
  
    var body: some View {
        VStack {
            Text("Demo # \(Count.description)")
            Button(action: {
                GetCurrentCount()
                Navigation.PushView("Demo View \(Count.description)") {
                    WindowsStackDemoView()
                }
            }) {
                Text("Next View")
            }
            Button(action: {
                GetCurrentCount()
                Navigation.PopView()
            }) {
                Text("Go Back")
            }
            Button(action: {
                GetCurrentCount()
                Navigation.HomeView()
            }) {
                Text("Home View")
            }
            Button(action: {
                GetCurrentCount()
                Navigation.RootView()
            }) {
                Text("Root View")
            }
        }
        
    }
     func GetCurrentCount() {
        self.Count = Navigation.ViewStackCount() + 1
    }
}

struct WindowsStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        WindowsStackDemoView()
    }
}
