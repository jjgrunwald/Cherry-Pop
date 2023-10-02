//
//  ViewController.swift
//  Cherry Pop
//
//  Created by Justin Grunwald on 2023-10-01.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var cherryImageView: UIImageView!
    
    var cherryAmount = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    @IBAction func pressPopButton(_ sender: UIButton) {
         
        cherryImageView.image =
        [UIImage(imageLiteralResourceName: "oneCherry"),
       UIImage(imageLiteralResourceName: "twoCherry"),
         UIImage(imageLiteralResourceName:"threeCherry")][cherryAmount]
    }
}

