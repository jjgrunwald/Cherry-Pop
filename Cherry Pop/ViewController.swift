//
//  ViewController.swift
//  Cherry Pop
//
//  Created by Justin Grunwald on 2023-10-01.
//

import UIKit


var cherryAmount = 3;

var cherryArray =
[UIImage(imageLiteralResourceName: "zeroCherry"),
 UIImage(imageLiteralResourceName: "oneCherry"),
 UIImage(imageLiteralResourceName: "twoCherry"),
 UIImage(imageLiteralResourceName: "threeCherry")]


var timer: Timer?

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cherryImageView: UIImageView!
    
    // Start a timer to increment cherryAmount until it reaches 3
    func startTimer() { Timer.scheduledTimer(timeInterval: 4.5, target: self, selector: #selector(incrementCherry), userInfo: nil, repeats: true)
    }
    
    @objc func incrementCherry() {
        print("Timer is working.")
        
        if cherryAmount == 0
        { cherryAmount = 1;
            print("Cherry = 0")}
        else
        if cherryAmount == 1
        { cherryAmount = 2;
            print("Cherry = 1")}
        else
        if cherryAmount == 2
        { cherryAmount = 3;
            print("Cherry = 2")}
        else
        if cherryAmount == 3
        { cherryAmount = 3;
            print("Cherry = 3")}
        
        cherryImageView.image =
        cherryArray[cherryAmount]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer();
    }
    
    
    @IBAction func pressPopButton(_ sender: UIButton) {
        
               
        if cherryAmount == 3
        { cherryAmount = 2;
            print("Cherry = 2")}
        else
        if cherryAmount == 2
        { cherryAmount = 1;
            print("Cherry = 1")}
        else
        if cherryAmount == 1
        { cherryAmount = 0;
            print("Cherry = 0")}
        else
        if cherryAmount == 3
        { cherryAmount = 3;
            print("Cherry = 3")}
        
        cherryImageView.image =
        cherryArray[cherryAmount]
        }
    }

    

