//
//  Dashboard.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI


struct Dashboard: View {
    
    @State private var academicButton = DashboardIcon.academic()
    @State private var resourcesButton = DashboardIcon.resources()
    var body: some View {
        VStack {
            
            Text("Dashboard")
                .font(.system(size: 38, weight: .thin, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                .padding(.bottom, -40)
            Profile()
            Text("Academics")
                .font(.system(size: 28, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(academicButton) { academic in
                        VStack {
                            Image(academic.image).resizable()
                                .frame(width: 125, height: 125)
                            Text(academic.title)
                                .font(.system(size: 15, weight: .regular, design: .rounded))
                        }
                    .padding()
                    }
                }
            }
            Text("Resources")
                .font(.system(size: 28, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(resourcesButton) { academic in
                        VStack {
                            Image(academic.image).resizable()
                                .frame(width: 125, height: 125)
                            Text(academic.title)
                                .font(.system(size: 15, weight: .regular, design: .rounded))
                        }
                    .padding()
                    }
                }
            }
            Spacer()
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
        //.previewDevice(PreviewDevice(rawValue: "iPhone 7"))
    }
}
