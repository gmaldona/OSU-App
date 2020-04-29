//
//  ClassesView.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/28/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct ClassesView: View {
    
    @State var previousClasses = Class.previousClasses()
    @State var currentClasses = Class.currentClasses()
    @State var addClass = false
    @State var addClassTitle = ""
    @State var addClassLetterGrade = ""
    @State var isCurrent = true
    @State var classes = ["Current Class", "Previous Class"]
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
                .padding(.trailing, UIScreen.main.bounds.width / 2)
                //Button to add a class
                Button(action: {
                    withAnimation {
                        self.addClass.toggle()
                    }
                }){
                    Image("AdditionButton")
                }
            }
            
            if self.addClass {
                withAnimation {
                    Group {
                        VStack {
                            HStack {
                                TextField("Class Name", text: $addClassTitle)
                                    if isCurrent == false {
                                            TextField("Letter Grade", text: $addClassLetterGrade)
                                    }
                
                            }
                            .padding(.top, UIScreen.main.bounds.height / 5)
                            .padding(.leading, 30)
                            HStack {
                                Text("I'm currently taking this class")
                                .font(.system(size: 18, weight: .thin, design: .rounded))
                                Button(action: {
                                        self.isCurrent.toggle()
                                }){
                                    if isCurrent {
                                        Image("CheckMarkButton").resizable()
                                            .frame(width: 40, height: 40)
                                    }
                                    else {
                                        Image("UnCheckedButton").resizable()
                                            .frame(width:40, height: 40)
                                    }
                                }
                            }
                            Button(action: {
                                
                            }){
                                Image("AddButton").resizable()
                                    .frame(width: 75, height: 50)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
        
    }
}

struct ClassesView_Previews: PreviewProvider {
    static var previews: some View {
        ClassesView()
    }
}
