//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hareth Naji on 15/07/2018.
//  Copyright © 2018 Hareth Naji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magic8BallImage: UIImageView!

    var magic8BallRandomiser = 0
    let magic8BallImageNameArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()

        magic8BallRadomise()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {

        magic8BallRadomise()
    }

    func magic8BallRadomise() {

        magic8BallRandomiser = Int(arc4random_uniform(5))
        magic8BallImage.image = UIImage(named: magic8BallImageNameArray[magic8BallRandomiser])
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        magic8BallRadomise()
    }
}

