//
//  AppKitPrincipal.swift
//  AppKitBundle
//
//  Created by Noah Gilmore on 7/28/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

import Foundation
import AppKit

class AppKitPrincipal: NSObject {
    override init() {
        super.init()
        NotificationCenter.default.addObserver(forName: Notification.Name(rawValue: "tileWindowRight"), object: nil, queue: nil) { [weak self] _ in
            self?.tileWindowRight()
        }
    }

    func tileWindowRight() {
        let screen = NSScreen.main!
        let bounds = screen.frame
        let rightHalf = NSRect(x: bounds.width / 2, y: bounds.height / 2, width: bounds.width / 2, height: bounds.height)
        NSApplication.shared.windows.first?.setFrame(rightHalf, display: true, animate: true)
    }
}
