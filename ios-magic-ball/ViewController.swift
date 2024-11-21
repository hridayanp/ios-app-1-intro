//
//  ViewController.swift
//  ios-magic-ball
//
//  Created by Hridayan Phukan on 21/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBall: UIImageView!
    
    let ballArray = [
            UIImage(named: "ball1"),
            UIImage(named: "ball2"),
            UIImage(named: "ball3"),
            UIImage(named: "ball4"),
            UIImage(named: "ball5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageBall.image = UIImage(named: "ball1")
    }

    @IBAction func askButtonHandler(_ sender: UIButton) {
        // Generate a random index
        let randomIndex = Int.random(in: 0...4)
        
        // Set the Image View to a random ball image
        imageBall.image = ballArray[randomIndex]
    }
    
}

