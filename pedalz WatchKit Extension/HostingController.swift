//
//  HostingController.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 22/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI
import CoreMotion
import os

// CadenceContentView
class HostingController : WKHostingController<CadenceContentView> {
    
    var appCore: AppCore
    
    override init() {
        print("JM: HostingController -> init")
        
        // app Startup
        appCore = AppCore()
        appCore.startup()
    }
    
    deinit {
        print("JM: HostingController -> deinit")
    }
    
    override var body: CadenceContentView {
        os_log("ZDN Pedalz -> HostingController -> body")
        
        // init CoreMotion
        let motionService = buildMotionService(appCore: appCore)
        
        // setup CoreMotion
        
        
        // setup callbacks
//        motionService.start()
        
        //init Initial View and inject model/viewModel
        let motionDataViewModel = MotionDataViewModel(motionService: motionService)
        
        return CadenceContentView(viewModel: motionDataViewModel)
    }
    
    private func buildMotionService(appCore: AppCore) -> MotionService {
        guard let coordinator = appCore.coordinator else { fatalError("fhfdshdhdfhkjdfkjdfjdfs") }
        guard let appState = appCore.appStateKit else { fatalError("fhfdshdhdfhkjdfkjdfjdfs") }
        
        return MotionService(coordinator: coordinator, appState: appState, motionManager: MotionManagerBuilder.build())
    }
}
