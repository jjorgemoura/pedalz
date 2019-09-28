//
//  CadenceTrend.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 24/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

struct CadenceTrend {
    let realtime: Cadence
    var lastTenSeconds: [Cadence]
    var lastThirtySeconds: [Cadence]
    var lastSixtySeconds: [Cadence]
}

