//
//  Profile.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

//This view contains the personal information for each student
struct Profile: View {
    var body: some View {
        HStack {
            //Image of the student
            Image("ProfileImage")
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 0.001))
                .shadow(radius: 10)
                .padding(.trailing, UIScreen.main.bounds.width / 5)
            //Information about the student
            VStack(alignment: .leading) {
                Text("Gregory Maldonado")
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                Text("ID: 804264994")
                    .font(.system(size: 20, weight: .thin, design: .rounded))
                Text("Overall GPA: 0.00")
                    .font(.system(size: 20, weight: .thin, design: .rounded))
                
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
