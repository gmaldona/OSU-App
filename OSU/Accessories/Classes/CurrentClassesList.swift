//
//  CurrentClassesList.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/29/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct CurrentClassesList: View {
    
    @State var classes = Classes.currentClasses()
    
    var body: some View {
        VStack {
            Group {
                List {
                    ScrollView(.vertical, showsIndicators: false) {
                        HStack (alignment: .top){
                            ForEach(classes) { c in
                                
                                VStack {
                                    Text(c.title)
                                        .padding(.trailing, 200)
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

struct CurrentClassesList_Previews: PreviewProvider {
    static var previews: some View {
        CurrentClassesList()
    }
}
