//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Andrea Camacho on 11/17/17.
//  Copyright © 2017 Andrea Camacho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ballAnswer(_ sender: UIButton) {
        
        updateAnswer()
    }
   
    func updateAnswer(){
        
        randomBallNumber = Int (arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateAnswer()
    }
}

