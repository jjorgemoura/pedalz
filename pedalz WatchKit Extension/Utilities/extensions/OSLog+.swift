//
//  OSLog+.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 30/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import os
import Foundation

extension OSLog {
    static let pedalzUI = OSLog(subsystem: Bundle.main.bundleIdentifier ?? "com.jjorgemoura.xxx", category: "PEDALZ: UI")
    static let pedalzCore = OSLog(subsystem: Bundle.main.bundleIdentifier ?? "com.jjorgemoura.xxx", category: "PEDALZ: Model and Services")
}

