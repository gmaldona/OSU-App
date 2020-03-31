//
//  Dashboard.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Dashboard")
                
                //.font(.custom("NotoSansHK-Thin", size: 48))
            Spacer()
            
        }
        .padding(.horizontal, 150)
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
        .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
    }
}
