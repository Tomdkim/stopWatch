//
//  ViewController.swift
//  StopWatch
//
//  Created by Tom Kim on 2/16/17.
//  Copyright © 2017 Tom Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time_Tracker: Timer?
    let stopWatch = StopWatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var updateTime: UILabel!
    
    @IBAction func startButtonWasPressed(_ sender: UIButton) {
        stopWatch.start()
        time_Tracker = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                             selector: #selector(callSomeMethodWithParams(_:)),
                             userInfo: nil,
                             repeats: true)
    }
    
    @IBAction func stopButtonWasPressed(_ sender: UIButton) {
        time_Tracker!.invalidate()
    }
    
    func callSomeMethodWithParams(_ timer: Timer) {
        self.updateTime.text = stopWatch.convertToString()
    }
}
