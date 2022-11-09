//
//  ViewController.swift
//  AlarmCounter
//
//  Created by Michael Hornung on 09.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    

    
    
    @IBOutlet weak var zeiteingabe: UITextField!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var second: Int
    var timer = Timer()
    var isTimerRunning = false
    
    
    @IBAction func startButton(_ sender: UIButton) {
       
        runTimer()
    }
    func runTimer(){
        second = Int(second.text)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.updateTimer)),
        userInfo: nil, repeats: true)
    }
    @objc func updateTimer() {
       
        if second < 1 {
                  timer.invalidate()
        } else {
                  second -= 1
                  timerLabel.text = timeString(time: TimeInterval(second))
             }
    }
    
    func timeString(time:TimeInterval) -> String {
   
    
    let seconds = Int(time) % 60
    return String(format:"%02i",seconds)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


}

