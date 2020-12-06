//
//  CurrentContentView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct CurrentContentView: View {
    //Single View Without a NavigationStack
    @EnvironmentObject var Navigation: NavigateCurrentView
    var body: some View {
        VStack {
            Text("Main View")
            Button(action: {
                Navigation.ChangeCurrentView("Demo View One") {
                    CurrentDemoView()
                }
            }) {
                Text("Change View")
            }
            
            Button(action: {
                PopNewWindow()
            }) {
                Text("Open New Window")
            }
        }
    }
    func PopNewWindow() {
        /* This is a New Window with a Navigation Stack with it*/
        ReviseWindowRootView("Sampe Navigation Stack") {
                WindowStackContentView()
        }
        
        /* Main Content without a NavigationStack but you still can change a View with this. Just don't keep track of the past View besides the rootView.
            As you can see the navigationStack varible passed to initilizer has a default value of True.
         */
        
       // ReviseWindowRootView("Sample Testing", navigationStack: false) {
       //     WindowsCurrentContentView() .padding()
       // }
    }
}

struct CurrentContentView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentContentView()
    }
}
