//
//  Login.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

//View that contains the elements for the login screen
struct Login: View {
    
    //Contains the users username and passwords
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack() {
            //Text field for the user to enter their username
            TextField("Username", text: $username)
                .border(Color.init(red: 40/255, green: 100/255, blue: 40/255))
                .padding(.horizontal, 100)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            //Text field for the user to enter their password 
            SecureField("Password", text: $password)
                .border(Color.init(red: 40/255, green: 100/255, blue: 40/255))
                .padding(.horizontal, 100)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
