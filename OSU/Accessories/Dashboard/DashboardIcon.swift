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
    let navigation: String
    let id = UUID()
    
}

extension DashboardIcon {
    
    static func academic() -> [DashboardIcon] {
        return [
            DashboardIcon(title: "Grades", image: "GradesImage", navigation: "Website"),
            DashboardIcon(title: "Classes", image: "CoursesImage", navigation: "Website"),
            DashboardIcon(title: "DegreeWorks", image: "DegreeWorksImage", navigation: "Website"),
            DashboardIcon(title: "Registration", image: "RegistrationImage", navigation: "Website")
        ]
    }
    
    static func resources() -> [DashboardIcon] {
        return [
            DashboardIcon(title: "Dining Menu", image: "DiningMenuImage", navigation: "Website"),
            DashboardIcon(title: "Maps", image: "MapsImage", navigation: "Maps"),
            DashboardIcon(title: "Events", image: "EventsImage", navigation: "Website"),
            DashboardIcon(title: "Athletics", image: "AthleticsImage", navigation: "Website"),
            DashboardIcon(title: "Contacts", image: "ContactsImage", navigation: "Website")
        ]
    }
    
}
