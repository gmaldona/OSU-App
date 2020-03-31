//
//  Login.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct Login: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack() {
            TextField("Username", text: $username)
                .border(Color.green)
                .padding(.horizontal, 100)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            SecureField("Password", text: $password)
                .border(Color.green)
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
