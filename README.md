# SwiftUI-NavigationStack
This is a custom NavigationStack working with MacOS and SwiftUI. I didn't like the current NavigationStack with SwiftUI so I started to build my own. I just hope this helps someone else one day. I think we have build everything that someone would need whether or not they want a NavigationStack. We have Six main NavigationView within this framework. Feel Free to Look through it to see if it is going to fit your needs. 

## For the Main Application we use two Navigation Stack
If you want to use the Side Bar in your Application use the ReviseNavigationRootView otherwise use ReviseRootView
* NavigationStack - This class has a NavigationStack
* NavigateCurrentView - This class just let's you Navigate different view with keeping track on the rootView

### Application with a Navigation Stack with a SideBar <h3>
```swift
 ReviseNavigationRootView {
    ContentView()
} sideBar: {
    SideBarDemo()
}.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)    
```
### Application without a Navigation Stack with a SideBar <h3>
```swift 
ReviseNavigationRootView("Hello World", navigationStack: false) {
    CurrentContentView()
 } sideBar: {
      CurrentSideBar()
 }.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)
```
### Application with a Navigation Stack without SideBar <h3>
```swift
ReviseRootView("Hello App") {
  ContentView()
}
```
### Application with a Navigation Stack without SideBar <h3>
```swift
 ReviseRootView("Hello App", navigationStack: false) {
   CurrentContentView()
}
```
## Adding EnvironmentObject 
 
 ### Adding EnvironmentObject for the NavigationStack <h3>
 ```swift
 struct CurrentDemoView: View {
    @EnvironmentObject var Navigation: NavigationStack
    var body: some View {      
    }
}
 ```
 ### Adding EnvironmentObject without a NavigationStack <h3>
 ```swift
 struct CurrentDemoView: View {
    @EnvironmentObject var Navigation: NavigateCurrentView
    var body: some View {      
    }
}
 ```
