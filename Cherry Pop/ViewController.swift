//
//  ViewController.swift
//  Cherry Pop
//
//  Created by Justin Grunwald on 2023-10-01.
//

import UIKit


var cherryAmount = 1;

var cherryArray =
[UIImage(imageLiteralResourceName: "oneCherry"),
 UIImage(imageLiteralResourceName: "twoCherry"),
 UIImage(imageLiteralResourceName: "threeCherry")]


var timer: Timer?

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cherryImageView: UIImageView!
    
    // Start a timer to increment cherryAmount until it reaches 3
    func startTimer() { Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(incrementCherry), userInfo: nil, repeats: true)
    }
    
    @objc func incrementCherry() {
        print("Timer is working.")
        
        if cherryAmount == 0
        { cherryAmount += 1;
            cherryImageView.isHidden = true}
        
        if cherryAmount == 1
        { cherryAmount += 1;
            }
        
        if cherryAmount == 2
        { cherryAmount += 1;
        }
        
        cherryImageView.image =
        cherryArray[cherryAmount]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer();
    }
    
    
    @IBAction func pressPopButton(_ sender: UIButton) {
        
        cherryImageView.image =
        cherryArray[cherryAmount]
        
        if (cherryAmount >= 1){
            cherryAmount = cherryAmount - 1;
        }
    }
}
    

