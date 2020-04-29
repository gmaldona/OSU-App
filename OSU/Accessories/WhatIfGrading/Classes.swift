//
//  Classes.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/28/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation

struct Class: Identifiable {
    
    let title: String
    let letterGrade: String
    let id = UUID()

}

extension Class {
    
    static func currentClasses() -> [Class] {
        return []
    }
    
    static func previousClasses() -> [Class] {
        return []
    }
    
}
