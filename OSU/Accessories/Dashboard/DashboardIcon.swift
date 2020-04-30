//
//  DashboardIcon.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation
import SwiftUI

//Properties for the dashboard icons on the dashboard view
struct DashboardIcon: Identifiable {
    
    //Variables to hold the properties for each dashboard icon
    let title: String
    let image: String
    let navigation: String
    let id = UUID()
    
}

//Extension that contains the return methods for the properties for the dashboard icons
extension DashboardIcon {
    
    //Return method for all of the academic buttons
    static func academic() -> [DashboardIcon] {
        return [
            DashboardIcon(title: "Blackboard", image: "GradesImage", navigation: "Website"),
            DashboardIcon(title: "Classes", image: "CoursesImage", navigation: "Classes"),
            DashboardIcon(title: "myOswego", image: "DegreeWorksImage", navigation: "Website"),
            DashboardIcon(title: "What If ... Grading", image: "QuestionMarkImage", navigation: "Grading")
        ]
    }
    //Return method for all of the resource buttons
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
