//
//  Presenter.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import Foundation

class Presenter {
    
    weak var mainVC: ViewController? // avoiding a retain cycle with this weak reference
    
    init(to mainViewController: ViewController? = nil) {
        mainVC = mainViewController
    }
    
    func display(message: String) {
        mainVC?.updateLabel(with: message)
    }
    
}
