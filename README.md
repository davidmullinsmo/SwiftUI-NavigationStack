# SwiftUI-NavigationStack
This is a custom NavigationStack working with MacOS and SwiftUI. I didn't like the current NavigationStack with SwiftUI so I started to build my own. I just hope this helps someone else one day. I think we have build everything that someone would need whether or not they want a NavigationStack. We have Six main NavigationView within this framework. Feel Free to Look through it to see if it is going to fit your needs. 

## For the Main Application we use to Navigation Stack
If you want to use the Side Bar in your Application use the ReviseNavigationRootView
* NavigationStack - This class has a NavigationStack
```swift
 ReviseNavigationRootView {
    ContentView()
} sideBar: {
    SideBarDemo()
}.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)    
```
* NavigateCurrentView - This class just let's you Navigate different view with keeping track on the rootView

```swift 
ReviseNavigationRootView("Hello World", navigationStack: false) {
    CurrentContentView()
 } sideBar: {
      CurrentSideBar()
 }.frame(minWidth: 550, idealWidth: 650, maxWidth: .infinity)
```
If you don't want to use the Side Bar in your Application you can use ReviseRootView. 
