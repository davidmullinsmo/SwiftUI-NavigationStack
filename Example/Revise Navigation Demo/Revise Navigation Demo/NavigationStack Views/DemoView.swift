//
//  DemoView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct DemoView: View {
    @EnvironmentObject var Navigation:NavigationStack
    var text:String
    @State var count:Int = 0
  
    var body: some View {
        VStack {
            Text("The Current View Stack Count \(count.description)")
            Button(action: {
                countViews()
                //Sample of Push Navigation
                Navigation.PushView("Hello World")
                {
                    DemoView(text: "View \(count.description)")
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
            
        }.onAppear() {
          countViews()
        }
        
    }
    func countViews() {
        self.count = Navigation.ViewStackCount()
    }
    func newView() {
       
    }
}


