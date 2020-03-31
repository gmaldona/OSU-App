//
//  OSULogo.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct OSULogo: View {
    
    @State var active = true
    
    init(isActive: Bool) {
        self.active = isActive
    }
    
    var body: some View {
        VStack {
            Spacer()
            if self.active {
                Image("oswego")
                    .transition(.move(edge: .top))
                
            
            }
            else {
                Image("oswego")
            }
        }
    }
}

struct OSULogo_Previews: PreviewProvider {
    static var previews: some View {
        OSULogo(isActive: false)
    }
}
