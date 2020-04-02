//
//  DashboardScrolls.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct DashboardScrolls: View {
    var body: some View {
        VStack {
            Profile()
            Text("Academics")
                .font(.system(size: 28, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
            AcademicScroll()
            Text("Resources")
                .font(.system(size: 28, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
            ResourceScroll()
        }
    }
}

struct DashboardScrolls_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScrolls()
    }
}