//
//  AppData.swift
//  LocationTest
//
//  Created by Benno Kress on 20.12.16.
//  Copyright © 2016 lmu. All rights reserved.
//

import Foundation

class AppData {
    
    private var userLocation: Location?
    
    // Singleton - call via AppData
    static var shared = AppData()
    private init() {}
    
    func updateUserLocation(to location: Location) {
        userLocation = location
        print("\nNew Location:")
        print(userLocation?.coordinateDescription ?? "Location should be updated, but was not valid!")
    }
    
    func getUserLocation() -> Location? {
        return userLocation
    }

}
