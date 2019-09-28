//
//  MotionService.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 24/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import Foundation
import CoreMotion
import os

class MotionService {
    
    let coordinator: AppCoordinator
    let appState: AppStateKit
    let queue: OperationQueue = OperationQueue()
    let motionManager: CMMotionManager
    let pedometer: CMPedometer = CMPedometer()
    var delegate: MotionServiceDelegate?
    
    init(coordinator: AppCoordinator, appState: AppStateKit, motionManager: CMMotionManager) {
        self.coordinator = coordinator
        self.appState = appState
        self.motionManager = motionManager
    }
    
    func start() {
        logServiceAvailability()
        queue.name = "PedalzDeviceMotionQueue"
        queue.maxConcurrentOperationCount = 2
        
//        motionManager.startDeviceMotionUpdates(to: queue) { deviceMotion, error in
//            print("XPTO \(String(describing: deviceMotion.debugDescription)) || \(String(describing: error.debugDescription))")
//        }
        
        motionManager.startDeviceMotionUpdates()
        let xpto = motionManager.deviceMotion?.userAcceleration
        let deviceMotion = motionManager.deviceMotion
//        deviceMotion.pedo
        
        let isCadenceAvailable = CMPedometer.isCadenceAvailable()
        os_log(.info, log: .pedalzCore, "is Cadence Available -> %@", isCadenceAvailable.description)
        pedometer.startUpdates(from: Date()) { pedometerData, error in
            print("JM: XXXX -> \(String(describing: pedometerData)) || Error: \(String(describing: error))")
            print("JM: Current Cadence: \(String(describing: pedometerData?.currentCadence))")
        }
        
        let trend = CadenceTrend(realtime: Cadence(frequency: 54), lastTenSeconds: [], lastThirtySeconds: [], lastSixtySeconds: [])
        let data = PedalzData(cadence: Cadence(frequency: 23), trend: trend, altitude: "324")
        delegate?.motionServiceUpdated(data: data)
    }
    
    func stop() {
        motionManager.stopDeviceMotionUpdates()
    }
    
    // MARK: Private Methods
    func logServiceAvailability() {
        os_log(.info, log: .pedalzCore, "is Device Motion Available -> %@", motionManager.isDeviceMotionAvailable.description)
        os_log(.info, log: .pedalzCore, "is Device Motion Active -> %@", motionManager.isDeviceMotionActive.description)
        os_log(.info, log: .pedalzCore, "is Gyro Available -> %@", motionManager.isGyroAvailable.description)
        os_log(.info, log: .pedalzCore, "is Gyro Active -> %@", motionManager.isGyroActive.description)
        os_log(.info, log: .pedalzCore, "is Magnometer Available -> %@", motionManager.isMagnetometerAvailable.description)
        os_log(.info, log: .pedalzCore, "is Magnometer Active -> %@", motionManager.isMagnetometerActive.description)
        os_log(.info, log: .pedalzCore, "is Accelerometer Available -> %@", motionManager.isAccelerometerAvailable.description)
        os_log(.info, log: .pedalzCore, "is Accelerometer Active -> %@", motionManager.isAccelerometerActive.description)
    }
}
