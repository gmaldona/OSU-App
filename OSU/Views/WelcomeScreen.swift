//
//  WelcomeScreen.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

//View that contains the welcome screen
struct WelcomeScreen: View {
    
    //Variable that holds the state of the view - if either of the buttons are pressed , then the elements or view changes
    @EnvironmentObject var view: CurrentView
    @State var welcomeButton = false
    @State var loginButton = false
    
    var body: some View {
        VStack() {
            //The initial state of the view, before the login button is pressed
            if !loginButton {
                VStack {
                    //Oswego logo image
                    Image("oswego").resizable()
                        .frame(width: 250, height: 250)
                }
                .padding(50)
                .padding(.bottom, -50)
                VStack {
                    //Checks to see if the user clicked the buttom
                    if !welcomeButton {
                        //This button changes the view to allow the user to enter their login information
                        Button(action: {
                            //Animation to change elements
                            withAnimation {
                                //Changes the state of the view
                                self.welcomeButton = true
                            }
                            }) {
                            Image("Login")
                        }
                    }
                    //If the user clicked the button then the login text fields appear
                    else {
                        //View that contains the elements for the user to login
                        Login()
                        //This button allows the user to login into the dashboard with their information
                        Button(action: {
                            //Animation between views
                            withAnimation {
                                //Changes the state of the view
                                self.loginButton.toggle()
                                self.view.currentView = "Dashboard"
                            }
                        }) {
                            Image("Login").resizable()
                                .frame(width: 200, height: 100)
                        }
                    }
                }
            }
            //If the user logins in with their information, then the dashboard appears
            else {
                //Calls the dashboard view
                
                Dashboard()
            }
        Spacer()
        }
    
    }

}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
