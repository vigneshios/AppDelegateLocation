//
//  ViewController.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var interpreter: Interpreter = Interpreter(for: self)
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestLocationUpdateAuthorization()
        interpreter.viewDidLoad()
    }

    func updateLabel(with message: String) {
        displayLabel.text = message
    }
    
    func requestLocationUpdateAuthorization() {
        appDelegate.locationManager.requestAlwaysAuthorization()
    }

}

