//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ojas Kale on 7/10/17.
//  Copyright © 2017 Ojas Kale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBOutlet var timerCounter: UILabel!
    @IBAction func startTimer(_ sender: Any) {
       
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func subTenTimer(_ sender: Any) {
        if let time = timerCounter.text{
            if let eggTime = Int(time){
                if eggTime == 0 || eggTime - 10 <= 0 {
                    timerCounter.text = "0"
                    timer.invalidate()
                }else{
                timerCounter.text = String(eggTime - 10)
                }
            }
        }

    }
    @IBAction func addTenTimer(_ sender: Any) {
        if let time = timerCounter.text{
            if let eggTime = Int(time){
                
                timerCounter.text = String(eggTime + 10)
                
            }
        }

    }
    @IBAction func resetTimer(_ sender: Any) {
        
        timerCounter.text = String(210)
    }
    
    func processTimer(){
        if let time = timerCounter.text{
            if let eggTime = Int(time){
                if eggTime == 0{
                    timer.invalidate()
                }else{
                    timerCounter.text = String(eggTime - 1)
                }
            }
        }
        //timerCount = timerCount! - 1
        //timerCounter.text = String( describing: timerCount)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

