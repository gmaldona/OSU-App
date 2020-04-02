//
//  ResourceScroll.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/2/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct ResourceScroll: View {
    
    @State private var resourcesButton = DashboardIcon.resources()
    @State private var showSafari = false
    @State private var urlString = "https://google.com"
    @State private var showExternalWindow = false
    @State private var externalWindow = ""
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(resourcesButton) { resource in
                    VStack {
                        Button(action: {
                            switch resource.title {
                                case "Dining Menu":
                                    self.urlString = "https://www.oswego.edu/dining-menu/"
                                case "Events":
                                    self.urlString = "https://www.oswego.edu/campus-life/events"
                                case "Athletics":
                                    self.urlString = "https://www.oswego.edu/student-life/athletics-and-recreation"
                                default:
                                    self.urlString = "https://cas-prod.oswego.edu:8443/cas/login?service=https%3A%2F%2Fbanner-app-01.oswego.edu%3A8443%2Fssomanager%2Fc%2FSSB"
                            }
                            if resource.title == "Maps" || resource.title == "Contacts" {
                                self.externalWindow = resource.title
                                self.showExternalWindow = true
                            }
                            else {
                                self.showSafari = true
                            }
                        }){
                            Image(resource.image).resizable()
                                .frame(width: 125, height: 125)
                                .foregroundColor(.init(red: 40/255, green: 100/255, blue: 40/255))
                        }
                        .sheet(isPresented: self.$showSafari) {
                            SafariView(url: URL(string: self.urlString)!)
                        }
                            Text(resource.title)
                                .font(.system(size: 15, weight: .regular, design: .rounded))
                    }
                .padding()
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
