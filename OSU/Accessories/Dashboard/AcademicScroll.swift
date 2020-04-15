//
//  AcademicScroll.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SafariServices
import SwiftUI

//View for the academic buttons - This view puts all of the buttons inside a horizontal scroll
struct AcademicScroll: View {
    
    //Variable that holds the properties for all of the academic buttons
    @State private var academicButton = DashboardIcon.academic()
    //Variable that holds the state of the view - if the safari window should appear
    @State private var showSafari = false
    //Variable that holds the url string for the safari view
    @State private var urlString = ""
    
    var body: some View {
        VStack {
            //Academic Scroll View
            Text("Academics")
                .font(.system(size: 27, weight: .regular, design: .rounded))
                .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                .padding(.bottom, -10)
            //Holds all of the academic buttons in a horizonal scroll view
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    //Loops through all of the academic buttons to place in the horizontal scroll view
                    ForEach(academicButton) { academic in
                        VStack {
                            //If the user presses this button, then the user will be directed to the url
                            Button(action: {
                                //Desired location for the buttons
                                self.urlString = "https://cas-prod.oswego.edu:8443/cas/login?service=https%3A%2F%2Fbanner-app-01.oswego.edu%3A8443%2Fssomanager%2Fc%2FSSB"
                                self.showSafari = true
                            }) {
                            //Image of the button
                            Image(academic.image).resizable()
                                .frame(width: 125, height: 125)
                                .foregroundColor(.init(red: 40/255, green: 100/255, blue: 40/255))
                            }
                            //When a button is pressed, the location (safari) showsd up
                            .sheet(isPresented: self.$showSafari) {
                                SafariView(url: URL(string: self.urlString)!)
                            }
                            //Stacked view
                            Text(academic.title)
                                .font(.system(size: 15, weight: .regular, design: .rounded))
                        }
                    .padding()
                    }
                }
            }
        }
    }
}

struct AcademicScroll_Previews: PreviewProvider {
    static var previews: some View {
        AcademicScroll()
    }
}


