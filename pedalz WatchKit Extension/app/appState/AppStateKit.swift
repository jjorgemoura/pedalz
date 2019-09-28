//
//  AppStateKit.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 07/07/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

class AppStateKit {

    private var state: AppState
    
    init(startupState: AppState) {
        self.state = startupState
    }
    
    func update(with newState: AppState) {
        if state != newState {
            state = newState
        }
    }
}
