//
//  Classes.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/28/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation

struct Classes: Identifiable {
    
    let title: String
    let letterGrade: String
    let id = UUID()
    
    //let defaults = UserDefaults.standard

}

extension Classes {
    
    static func currentClasses() -> [Classes] {
        //let currentClasses = defaults.
        return [
            Classes(title: "Calculus II", letterGrade: "N/A")
        ]
    }
    
    static func previousClasses() -> [Classes] {
        return [
            Classes(title: "Calculus I", letterGrade: "A-")
        ]
    }
    
    static func grades() -> [String] {
        return [
            "A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "E"
        ]
    }
    
    static func saveClasses(isPrevious: Bool, classesInfo: [String]) {
        

    }
    
}

//struct keys {
  //  static let previousClass = "previousClass"
  //  static let currentClass = "currentClass"
//}//
