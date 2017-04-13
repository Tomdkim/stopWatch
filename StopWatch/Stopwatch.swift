//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Tom Kim on 2/16/17.
//  Copyright © 2017 Tom Kim. All rights reserved.
//

import Foundation

// takes in a string
// calculate the current time
// sends an input to viewcontroller

class StopWatch {

    var timeStarted: Date?
    var min: Double = 0.0
    var sec: Double = 0.0
    var milis: Double = 0.0
    var timeString: String? = nil
    
    func start() {
        timeStarted = Date() // the current time
    }
    func convertToString() -> String {
        let lapse = -timeStarted!.timeIntervalSinceNow
        milis = lapse.truncatingRemainder(dividingBy: 1)
        sec = lapse.truncatingRemainder(dividingBy: 60)
        sec = sec - milis
        min = lapse - sec - milis
        milis = milis * 100
        timeString = String(format: "%02d:%02d.%02d", Int(min), Int(sec), Int(milis))
        
        return timeString!
    }
}
