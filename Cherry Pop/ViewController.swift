//
//  ViewController.swift
//  Cherry Pop
//
//  Created by Justin Grunwald on 2023-10-01.
//

import UIKit


var cherryAmount = 1;

var timer: Timer?

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cherryImageView: UIImageView!
    
    // Start a timer to increment cherryAmount until it reaches 3
    func startTimer() { Timer.scheduledTimer(timeInterval: 1.0, target: ViewController.self, selector: #selector(incrementCherry), userInfo: nil, repeats: true)
    }
    
    @objc func incrementCherry() {
        print("Timer is working.")
        
        cherryImageView.image =
        [UIImage(imageLiteralResourceName: "oneCherry"),
         UIImage(imageLiteralResourceName: "twoCherry"),
         UIImage(imageLiteralResourceName: "threeCherry")][cherryAmount]
        
        if cherryAmount == 0
        { cherryAmount += 1;
            cherryImageView.isHidden = true}
        
        if cherryAmount == 1
        { cherryAmount += 1;
            }
        
        if cherryAmount == 2
        { cherryAmount += 1;
        }
        
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    @IBAction func pressPopButton(_ sender: UIButton) {
        
        cherryImageView.image =
        [UIImage(imageLiteralResourceName: "oneCherry"),
         UIImage(imageLiteralResourceName: "twoCherry"),
         UIImage(imageLiteralResourceName: "threeCherry")][cherryAmount]
        
        cherryAmount = cherryAmount - 1;
        
    }
}
    

