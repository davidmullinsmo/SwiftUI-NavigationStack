//
//  WindowStackContentView.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct WindowStackContentView: View {
    @EnvironmentObject var Navigation:WindowNavigationStack
    var Count:Int = 0
    
    var body: some View {
        VStack {
            Text("Root View today")
            Button(action: {
                Navigation.PushView("Demo View \(Count.description)") {
                    WindowsStackDemoView()
                }
            }) {
                Text("Next View")
            }
        }.padding()
     
    }
    mutating func GetCount() {
        self.Count = Navigation.ViewStackCount()
    }
}

struct WindowStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        WindowStackContentView()
    }
}
