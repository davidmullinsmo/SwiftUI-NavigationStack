//
//  ReviseNewWindow.swift
//  ReviseNavigation
//
//  Created by David Mullins on 12/6/20.
//

import Foundation
import SwiftUI

public class ReviseNewWindow<Element:View> : NSWindow {
    let Content:Element
    /* This class uses the AppKit framework to open a new Window I just called it popup window. We might add more to this one day but not right now
       I would like to build a framework to track the open Windows, like the current view. This will be a new part of the framework that I am working on right
       now. But for now we will settle for this!
       
       */
     
      //This declaration silence the compiler about warring of init unused
      @discardableResult
    init(enableMiniaturizable:Bool = false, enableResizable:Bool = false, enableFullScreen:Bool = false, newTitle:String,  @ViewBuilder element: () -> Element) {
        self.Content = element()
          var styleWindows:NSWindow.StyleMask = [.titled, .closable]
          
          super.init(contentRect: NSRect(x: 0, y: 0, width: 480, height: 300), styleMask: [], backing: .buffered, defer: false)
            makeKeyAndOrderFront(nil)
            isReleasedWhenClosed = false
          if enableMiniaturizable {
              styleWindows.update(with: .miniaturizable)
          }
          if enableResizable {
              styleWindows.update(with: .resizable)
          }
          if enableFullScreen {
              styleWindows.update(with: .fullSizeContentView)
              styleMask.insert(NSWindow.StyleMask.fullSizeContentView)
          }
          styleMask = styleWindows
        title = newTitle
        contentView = NSHostingView(rootView: self.Content.padding())
          
        center()
      }
   
    
}
