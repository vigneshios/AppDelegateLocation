//
//  Interpreter.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import Foundation

protocol GeneralInterpretProtocol {
    
    func locationUpdated(_ location: Location)
    
}

protocol MainViewInterpreterProtocol: GeneralInterpretProtocol {
    
    func viewDidLoad()
    
}

class Interpreter: MainViewInterpreterProtocol {
    
    let appDelegate: AppDelegate
    
    var presenter: Presenter
    var logic: Logic
    
    init(for mainVC: ViewController? = nil, presenter: Presenter = Presenter(to: nil), logic: Logic = Logic(), appDelegate: AppDelegate) {
        
        self.appDelegate = appDelegate
        self.presenter = Presenter(to: mainVC)
        self.logic = Logic()
        
    }
    
    func viewDidLoad() {
        requestRegularLocationUpdates()
    }
    
    func locationUpdated(_ location: Location) {
        logic.saveUpdatedLocation(location)
        let labelText = "New Location\n\nLatitude:\n\(location.latitude)\nLongitude:\n\(location.longitude)"
        presenter.display(message: labelText)
    }
    
    func requestRegularLocationUpdates() {
        appDelegate.registerCurrentInterpreterForLocationUpdates(self)
        appDelegate.locationManager.requestAlwaysAuthorization()
    }
    
}
