//
//  ViewController.swift
//  Magic Ball
//
//  Created by Dante on 11/29/17.
//  Copyright © 2017 Dante Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var magicBallImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeBall()
    }
    
    private func randomizeBall() {
        let index = Int(arc4random_uniform(4)) + 1
        DispatchQueue.main.async {
            self.magicBallImageView.image = UIImage(named: "ball\(index)")
        }
    }
    
    @IBAction func askBall() {
        randomizeBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizeBall()
    }
    
    
}

