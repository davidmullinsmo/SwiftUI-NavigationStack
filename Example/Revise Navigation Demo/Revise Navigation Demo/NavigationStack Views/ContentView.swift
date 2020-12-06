//
//  ContentView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct ContentView: View {
    @EnvironmentObject var Navigation:NavigationStack
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button(action: {
                Navigation.PushView("This is a Demo of Push") {
                    DemoView(text: "New Demo View")
                }
            }) {
                Text("Push New View onto The Stack")
            }
            //Open New Window with the Current View
            Button(action: {
                PopNewWindow()
            }) {
                Text("Open New Window")
            }
        }.padding()
        
    }
    func PopNewWindow() {
        ReviseWindowRootView("Sample Testing") {
            Text("Testing Something").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
