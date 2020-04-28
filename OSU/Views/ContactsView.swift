//
//  ContactsView.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

//This view contains the contacts for thr campus
struct ContactsView: View {
    
    //Variable that holds the current view
    @EnvironmentObject var view: CurrentView
    //Variable that holds all of the contact information
    @State private var contacts = Contacts.contacts()
    
    var body: some View {
        VStack {
            //Button that allows the user to go back to the dashboard
            Button(action: {
                withAnimation {
                    //Changes the current View to the dashboard
                    self.view.currentView = "Dashboard"
                }
            }) {
                //Image of the dashboard button
                Image("DashboardButton").resizable()
                    .frame(width: 120, height: 50)
            }
            .padding(.trailing, UIScreen.main.bounds.width / 1.5)
            
            Text("Important Contacts")
                .font(.system(size: 38, weight: .thin, design: .rounded))
            
            //List for all of the contacts
            Group {
                List {
                    //Loops through all of the contacts and places them in the list
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
