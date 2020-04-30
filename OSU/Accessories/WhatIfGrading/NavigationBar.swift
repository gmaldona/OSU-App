//
//  NavigationBar.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/28/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

//View that contains the navigation bar within the What If Grading View
struct NavigationBar: View {
    //Variable to hold the state of which view the application is on
    @EnvironmentObject var view: CurrentView
    
    var body: some View {
        VStack {
            HStack {
                //Button to go back to the dashboard
                Button(action: {
                    self.view.currentView = "Dashboard"
                }){
                    Image("DashboardButton").resizable()
                    .frame(width: 120, height: 50)
                }
                .padding(.trailing, UIScreen.main.bounds.width / 1.5)
                
            }
        }
    }
    
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
