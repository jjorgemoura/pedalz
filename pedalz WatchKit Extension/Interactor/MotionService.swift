//
//  MotionService.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 24/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import Foundation
import CoreMotion

class MotionService {
    
    let motionManager: CMMotionManager
    let pedometer: CMPedometer
    
    init(motionManager: CMMotionManager, pedometer: CMPedometer) {
        self.motionManager = motionManager
        self.pedometer = pedometer
    }
    
    func start() {
//        motionManager.startDeviceMotionUpdates()
    }
    
    func stop() {
        
    }
}
