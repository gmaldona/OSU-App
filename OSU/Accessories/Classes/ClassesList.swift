//
//  ClassesList.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/30/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct ClassesList: View {
    var body: some View {
        VStack {
            Text("Current Classes")
                .font(.system(size: 22, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                //.padding(.bottom, -10)
                .padding(.leading, 5)
            CurrentClassesList()
            Text("Previous Classes")
                .font(.system(size: 22, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                //.padding(.bottom, -10)
                .padding(.leading, 5)
            PreviousClassesList()
        }
    }
}

struct ClassesList_Previews: PreviewProvider {
    static var previews: some View {
        ClassesList()
    }
}
