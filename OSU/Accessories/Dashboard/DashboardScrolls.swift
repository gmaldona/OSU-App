//
//  DashboardScrolls.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

//View that contains the scroll views
struct DashboardScrolls: View {
    var body: some View {
        VStack {
            //Academic Scroll View
            AcademicScroll()
            //Resource Scroll View
            ResourceScroll()
        }
    }
}

struct DashboardScrolls_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScrolls()
    }
}
