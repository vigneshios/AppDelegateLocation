//
//  Logic.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import Foundation

class Logic {
    
    let appData = AppData.shared
    
    func getLocation() -> Location? {
        return appData.getUserLocation()
    }
    
}
