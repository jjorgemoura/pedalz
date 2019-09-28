//
//  AppState.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 07/07/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import Foundation

struct AppState: Equatable {
    
    let beginDate: Date?
    let finishDate: Date?
    
    static func emptyLaunchState() -> AppState {
        return AppState(beginDate: nil, finishDate: nil)
    }
}
