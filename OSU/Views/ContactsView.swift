//
//  ContactsView.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct ContactsView: View {
    
    @State private var contacts = Contacts.contacts()
    
    var body: some View {
        VStack {
            Text("Important Contacts")
                .font(.system(size: 38, weight: .thin, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)

            Group {
                List {
                    ForEach(contacts) { contact in
                        VStack {
                            Text(contact.name)
                                .padding(.trailing, 200)
                            Text(contact.number)
                                .padding(.leading, UIScreen.main.bounds.width / 2)
                        }
                    }
                }
                .foregroundColor(.init(red: 40/255, green: 100/255, blue: 40/255))
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
