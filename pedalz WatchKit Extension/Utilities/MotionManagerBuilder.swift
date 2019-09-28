//
//  MotionManagerBuilder.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 26/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import Foundation
import CoreMotion

struct MotionManagerBuilder {
    
    static func build() -> CMMotionManager {
        let motionManager = CMMotionManager()
        motionManager.deviceMotionUpdateInterval = 1.0
        return motionManager
    }
}
