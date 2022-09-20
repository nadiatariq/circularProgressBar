//
//  ViewController.swift
//  circularProgressBar
//
//  Created by sameeltariq on 16/06/2022.
//

import UIKit
import MBCircularProgressBar
class ViewController: UIViewController {
    var timer : Timer!
    var maxTime = 0
    
    @IBOutlet weak var progressView: MBCircularProgressBarView!
    
    @IBOutlet weak var answerButtonPressed: UIButton!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
//        progressView.value = CGFloat(self.maxTime)
        progressView.maxValue = CGFloat(1)
        
        timer = Timer.scheduledTimer(timeInterval: 1 , target: self, selector: #selector(timerCode), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerCode(){
        
         maxTime  =  maxTime  + 1

        let newtime = Double(maxTime) / 60.0
   
        let finaltime = 1.0 -  newtime
        
        UIView.animate(withDuration: 1.0) {
            self.progressView.value  = CGFloat(finaltime)
        }
        if finaltime == 0.0 {
            timer.invalidate()
        }
        
    }
    
}



