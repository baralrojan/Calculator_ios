//
//  ViewController.swift
//  Assignment 3 My First App
//
//  Created by Cambrian on 2022-11-21.
//

import UIKit

class ViewController: UIViewController {
    var firstNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pressNumber(_ sender: UIButton) {
        if let number = sender.titleLabel?.text{
            print(number)

        }
        
    }
}

