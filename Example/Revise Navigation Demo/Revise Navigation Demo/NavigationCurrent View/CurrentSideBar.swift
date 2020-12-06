//
//  CurrentSideBar.swift
//  Revise Navigation Demo
//
//  Created by David Mullins on 12/6/20.
//

import SwiftUI
import ReviseNavigation

struct CurrentSideBar: View {
        @EnvironmentObject var Navigation:NavigateCurrentView
     
        var body: some View {
            List {
                //You can place a Labe in the header
                Section(header: Text("Sample Links")){
                    Label("Home View", systemImage: "house.circle").onTapGesture {
                       
                        Navigation.HomeView()
                    }
                    Label("Demo View Two", systemImage: "cloud.sun").onTapGesture {
                        
                        Navigation.ChangeCurrentView("Sample Demo Two") {
                             CurrentDemoAnotherView()
                         }
                    }
                   
                }
                
                Spacer()
                Divider()
                Label("Demo View", systemImage: "gear").onTapGesture {
                    
                   Navigation.ChangeCurrentView("Sample View") {
                        CurrentDemoView()
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
      
    }


struct CurrentSideBar_Previews: PreviewProvider {
    static var previews: some View {
        CurrentSideBar()
    }
}
