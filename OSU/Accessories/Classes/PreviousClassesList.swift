//
//  PreviousClassesList.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/30/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct PreviousClassesList: View {
    @State var classes = Classes.previousClasses()
    
    var body: some View {
        VStack {
            Group {
                List {
                    ScrollView(.vertical, showsIndicators: false) {
                        HStack (alignment: .top){
                            ForEach(classes) { c in
                                
                                VStack {
                                    Text(c.title)
                                        .padding(.trailing, UIScreen.main.bounds.width / 1.4)
                                        //.padding(.trailing, 250)
                                        .foregroundColor(Color.init(red: 40/255, green: 100/255, blue: 40/255))
                                    Text(c.letterGrade)
                                        .padding(.leading, UIScreen.main.bounds.width / 1.2)
                                        .foregroundColor(Color.init(red: 40/255, green: 100/255, blue: 40/255))
                                }
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

struct PreviousClassesList_Previews: PreviewProvider {
    static var previews: some View {
        PreviousClassesList()
    }
}
