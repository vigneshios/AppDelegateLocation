//
//  ViewController.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol {
    
    func updateLabel(with message: String)
    
}

class ViewController: UIViewController, ViewControllerProtocol {
    
    lazy var interpreter: Interpreter = Interpreter(for: self, appDelegate: UIApplication.shared.delegate as! AppDelegate)

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interpreter.viewDidLoad()
    }

    func updateLabel(with message: String) {
        displayLabel.text = message
    }

}

