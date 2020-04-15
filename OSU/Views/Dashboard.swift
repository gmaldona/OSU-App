//
//  Dashboard.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI
import SafariServices

//The view that contains the dashboard
struct Dashboard: View {
    
    //Variables that holds the state of the application windows - This variable will be true if the user clicks on one of the buttons to navigate to a different view
    @State private var showExternalWindow = false
    @State private var externalWindow = "Maps"
    
    var body: some View {
        VStack {
            //Shows the initial state of the view - once the user logins into the application
            if !showExternalWindow {
                Text("Dashboard")
                    .font(.system(size: 38, weight: .thin, design: .rounded))
                    .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                    .padding(.bottom, -40)
                //Calls the view that contains the user's personal information
                Profile()
                //Calls the view that contains the scrollable buttons on the view
                DashboardScrolls()
                Spacer()
            }
            //If the user clicks on a button that switches the view
            else {
//                //If the user clicks on the maps button, then the map view appears
//                if externalWindow == "Maps" {
//                    //Overlay the elements
//                    ZStack {
//                            //Calls the view that contains the map view
//                            MapView()
//                                .edgesIgnoringSafeArea(.bottom)
//                                .edgesIgnoringSafeArea(.top)
//                            //This button returns to the dashboard view
//                            Button(action: {
//                                self.showExternalWindow = true
//                            }) {
//                                Image("DashboardButton").resizable()
//                                    .frame(width: 120, height: 50)
//                            }
//                            .padding(.trailing, UIScreen.main.bounds.width / 1.5)
//                            .padding(.bottom, UIScreen.main.bounds.height / 1.20 )
//                    }
//                }
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
        .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
    }
}


