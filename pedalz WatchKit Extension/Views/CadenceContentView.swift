//
//  CadenceContentView.swift
//  pedalz WatchKit Extension
//
//  Created by Jorge Moura on 22/06/2019.
//  Copyright © 2019 Jorge Moura. All rights reserved.
//

import SwiftUI

struct CadenceContentView : View {
    let viewModel: MotionDataViewModel
    
    var body: some View {
        Text("180")
            .fontWeight(.heavy)
            .color(.primary)
    }
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        CadenceContentView(viewModel: MotionDataViewModel(motionService: MotionS))
//    }
//}
//#endif
