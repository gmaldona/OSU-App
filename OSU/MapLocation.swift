//
//  MapLocation.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation
import SwiftUI

struct MapLocation: Identifiable {
    
    let title: String
        let latitude: Double
    let longtitude: Double
    let id = UUID()

}

extension MapLocation {
    
    static func locate() -> [MapLocation] {
        return [
        
            MapLocation(title: "The Village", latitude: 43.447309, longtitude: -76.548641),
            MapLocation(title: "Oneida Hall", latitude: 43.449369, longtitude: -76.549709),
            MapLocation(title: "Pathfinder Hall", latitude: 43.450662, longtitude: -76.547739),
            MapLocation(title: "Seneca Hall", latitude: 43.451368, longtitude: -76.547446)
        
        ]
    }
    
}
