//
//  WelcomeScreen.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State var welcomeButton = false
    @State var loginButton = false
    
    var body: some View {
        VStack(alignment: .center) {
            if !loginButton {
                VStack {
                    Image("oswego").resizable()
                        .frame(width: 250, height: 250)
                }
                .padding(50)
                .padding(.bottom, -50)
                VStack {
                    //Checks to see if the user clicked the buttom
                    if !welcomeButton {
                        Button(action: {
                            withAnimation {
                                self.welcomeButton = true
                            }
                            }) {
                            Image("Login")
                        }
                    }
                    //If the user clicked the button then the login text fields appear
                    else {
                        Login()
                        
                        Button(action: {
                            withAnimation {
                                self.loginButton.toggle()
                            }
                        }) {
                            Image("Login").resizable()
                                .frame(width: 200, height: 100)
                        }
                    }
                }
            }
            else {
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
