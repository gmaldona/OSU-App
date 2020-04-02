//
//  AcademicScroll.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct AcademicScroll: View {
    
    @State private var academicButton = DashboardIcon.academic()
    @State private var showSafari = false
    @State private var urlString = ""
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(academicButton) { academic in
                    VStack {
                        Button(action: {
                            self.urlString = "https://cas-prod.oswego.edu:8443/cas/login?service=https%3A%2F%2Fbanner-app-01.oswego.edu%3A8443%2Fssomanager%2Fc%2FSSB"
                            self.showSafari = true
                        }) {
                        Image(academic.image).resizable()
                            .frame(width: 125, height: 125)
                            .foregroundColor(.init(red: 40/255, green: 100/255, blue: 40/255))
                        }
                        Text(academic.title)
                            .font(.system(size: 15, weight: .regular, design: .rounded))
                    }
                .padding()
                }
            }
        }
    }
}

struct AcademicScroll_Previews: PreviewProvider {
    static var previews: some View {
        AcademicScroll()
    }
}
