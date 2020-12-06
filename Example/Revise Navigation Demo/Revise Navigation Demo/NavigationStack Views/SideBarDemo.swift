//
//  SideBarDemo.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct SideBarDemo: View {
    @EnvironmentObject var Navigation:NavigationStack
   @State var count:Int = 0
    var body: some View {
        List {
            Label("Home", systemImage: "house.circle").onTapGesture {
                Navigation.RootView()
            }
            //You can place a Labe in the header
            Section(header: Text("Sample Links")){
                Label("Main View", systemImage: "house.circle").onTapGesture {
                    countViews()
                    Navigation.HomeView()
                }
                Label("Weather", systemImage: "cloud.sun").onTapGesture {
                    countViews()
                   Navigation.PushView("View Stack Count: \(count.description)") {
                        DemoView(text: count.description)
                    }
                }
               
            }
            
            Spacer()
            Divider()
            Label("Settings", systemImage: "gear").onTapGesture {
                countViews()
               Navigation.PushView("View Stack Count: \(count.description)") {
                    DemoView(text: count.description)
                }
            }
        }.listStyle(SidebarListStyle()).presentedWindowToolbarStyle(ExpandedWindowToolbarStyle())
        .navigationTitle("Explore")
        /* The frame on the side bar does two things
         1) if allows for the Toolbar Item to be placed where it is supposed to be
         2) Give the UI the correct Layout of the sidebar*/
            .frame(minWidth: 150, idealWidth: 250, maxWidth: 250)
        .toolbar{
          //This puts the Navigation icon in the sidebar were it is //supposed to go.
            ToolbarItem(placement: .primaryAction) {
                
                if Navigation.MenuButtonShown {
                    
                    Button(action: toggleSidebar) {
                        Image(systemName: "sidebar.left")
                    }

                } else {
                    Button(action: toggleSidebar) {
                        Image(systemName: "sidebar.left")
                    }.hidden()
                }
                
            }
           
        }
    }
    // Toggle Sidebar Function
    func toggleSidebar() {
       NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
       
   }
    func countViews() {
        self.count = Navigation.ViewStackCount() + 1
   }

}

struct SideBarDemo_Previews: PreviewProvider {
    static var previews: some View {
        SideBarDemo()
    }
}
