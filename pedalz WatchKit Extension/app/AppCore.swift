//
//  AppCore.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 07/07/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

class AppCore {
    
    var coordinator: AppCoordinator?
    var appStateKit: AppStateKit?
    
    func startup() {
        
        let cloudService: String
        
        coordinator = AppCoordinator()
        appStateKit = AppStateKit(startupState: AppState.emptyLaunchState())
    }
}
