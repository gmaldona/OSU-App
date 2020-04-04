//
//  Contacts.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation
import SwiftUI

struct Contacts: Identifiable {
    
    let id = UUID()
    let name: String
    let number: String
    
}

extension Contacts {
    
    static func contacts() -> [Contacts] {
        return [
            Contacts(name: "University Police", number: "(315)-312-5555"),
            Contacts(name: "Mary Walker Health Center", number: "(315)-312-4100"),
            Contacts(name: "Oswego CTS HelpDesk", number: "(315)-312-3456")
        ]
    }
    
}
