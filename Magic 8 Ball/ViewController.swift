//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Chris J W Walker on 02/07/2018.
//  Copyright © 2018 CJWW Development. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var magicEightBall: UIImageView!
    
    @IBAction func askButton(_ sender: Any) {
        shakeEightBall()
    }
    
    func shakeEightBall() {
        let selectedBall = Int(arc4random_uniform(5)) + 1
        magicEightBall.image = UIImage(named: "ball\(selectedBall)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shakeEightBall()
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shakeEightBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

