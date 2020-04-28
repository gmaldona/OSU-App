//
//  ResourceScroll.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI
import SafariServices

//View that contains the resource buttons in a horizontal scroll view
struct ResourceScroll: View {
    @EnvironmentObject var view: CurrentView
    //Variable that holds the properties for the resource buttons
    @State private var resourcesButton = DashboardIcon.resources()
    //Variable that holds the state of the view - This variable is in control of showing the safari view
    @State private var showSafari = false
    @State private var urlString = ""
    //Variable that holds the state of the view - This variable is in control of showing other views
    @State private var showExternalWindow = false
    @State private var externalWindow = ""
    
    var body: some View {
        VStack {

            VStack {
                //Resource Scroll View
                Text("Resources")
                    .font(.system(size: 27, weight: .regular, design: .rounded))
                    .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                    .padding(.bottom, -10)
                //Horizontal scroll view for the resource buttons
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        //Loops through all of the buttons and places them in the horizontal view
                        ForEach(resourcesButton) { resource in
                            VStack {
                                //This is the button for each resource - when clicked, the button is directed
                                Button(action: {
                                    switch resource.title {
                                        //each title is linked to a specific url String(destination)
                                        case "Dining Menu":
                                            self.urlString = "https://www.oswego.edu/dining-menu/"
                                        case "Events":
                                            self.urlString = "https://www.oswego.edu/campus-life/events"
                                        case "Athletics":
                                            self.urlString = "https://www.oswego.edu/student-life/athletics-and-recreation"
                                        default:
                                            self.urlString = "https://cas-prod.oswego.edu:8443/cas/login?service=https%3A%2F%2Fbanner-app-01.oswego.edu%3A8443%2Fssomanager%2Fc%2FSSB"
                                    }
                                    //If a button is clicked with a separate view then then view will be called
                                    if resource.title == "Maps" || resource.title == "Contacts" {
                                        withAnimation {
                                          //  self.showExternalWindow = true
                                            self.view.currentView = resource.title
                                        }
                                    }
                                    //If the view doesnt have a specific view then safari will be called with the url given
                                    else {
                                        self.showSafari = true
                                    }
                                })
                                {
                                    //Each button has its own image
                                    Image(resource.image).resizable()
                                        .frame(width: 125, height: 125)
                                        .foregroundColor(.init(red: 40/255, green: 100/255, blue: 40/255))
                                }
                                    //When the button is pressed, the button checks to see if the variable holding the state of showSafari is checked. If true then the safari window pops up with the given url
                                .sheet(isPresented: self.$showSafari) {
                                    SafariView(url: URL(string: self.urlString)!)
                                }
                                // Each button has a title
                                    Text(resource.title)
                                        .font(.system(size: 15, weight: .regular, design: .rounded))
                            }
                        .padding()
                        }
                    }
                }
            }
        }
    }
}

struct ResourceScroll_Previews: PreviewProvider {
    static var previews: some View {
        ResourceScroll()
    }
}
