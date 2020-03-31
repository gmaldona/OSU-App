//
//  WelcomeScreen.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State var active = false
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                if active {
                    
                    Image("oswego")
                        //.transition(.move(edge: .top))
                }
                else {
                    Image("oswego")
                }
            }
            .padding(50)
            VStack {
                //Checks to see if the user clicked the buttom
                if !active {
                    Button(action: {
                        withAnimation {
                            self.active = true
                        }
                        }) {
                        Image("Login")
                    }
                }
                //If the user clicked the button then the login text fields appear
                else {
                    Login()
                    Button(action: {
                        
                    }) {
                        Image("Login").resizable()
                            .frame(width: 200, height: 100)
                    }
                }
            
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
