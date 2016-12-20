//
//  Interpreter.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import Foundation

class Interpreter {
    
    var presenter: Presenter
    var logic: Logic
    
    init(for mainVC: ViewController? = nil, _ presenter: Presenter = Presenter(to: nil), _ logic: Logic = Logic()) {
        
        self.presenter = Presenter(to: mainVC)
        self.logic = Logic()
        
    }
    
    func viewDidLoad() {
        
        guard let userLocation = logic.getLocation() else {
            presenter.display(message: "No Location found!")
            return
        }
        
        presenter.display(message: "\(userLocation.coordinateDescription)")
        
    }
    
}
