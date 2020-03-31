//
//  DashboardIcon.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation
import SwiftUI

struct DashboardIcon: Identifiable {
    
    let title: String
    let image: String
    let id = UUID()
    
}

extension DashboardIcon {
    
    static func academic() -> [DashboardIcon] {
        return [
            DashboardIcon(title: "Grades", image: "GradesImage"),
            DashboardIcon(title: "Classes", image: "CoursesImage"),
            DashboardIcon(title: "DegreeWorks", image: "DegreeWorksImage"),
            DashboardIcon(title: "Registration", image: "RegistrationImage")
        ]
    }
    
    static func resources() -> [DashboardIcon] {
        return [
            DashboardIcon(title: "Dining Menu", image: "DiningMenuImage"),
            DashboardIcon(title: "Maps", image: "MapsImage"),
            DashboardIcon(title: "Events", image: "EventsImage"),
            DashboardIcon(title: "Athletics", image: "AthleticsImage"),
            DashboardIcon(title: "Contacts", image: "ContactsImage")
        ]
    }
    
}
