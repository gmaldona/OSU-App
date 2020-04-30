//
//  ClassesView.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/28/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI

struct ClassesView: View {
    //Variables that holds the list of classes
    @State var previousClasses = Classes.previousClasses()
    @State var currentClasses = Classes.currentClasses()
    //Variable that holds the state of if a class is trying to be added
    @State var addClass = false
    //The title of the class trying to be added
    @State var addClassTitle = ""
    //If the class is a current class
    @State var isCurrent = true
    //The selection for the picker wheel
    @State var selectionGrade = 0
    //Holds the state if the picker is being shown
    @State var showPicker = false
    //The possible grades in the picker
    @State var grades = Classes.grades()
    //Variable that holds the state of if the classes are showing
    @State var showClasses = true
    //holds the current view
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
                        self.showClasses.toggle()
                    }
                }){
                    Image("AdditionButton")
                }
            }
            
            //If the user wants to add a new class
            if self.addClass {
                withAnimation {
                    Group {
                        VStack {
                            HStack {
                                //The class name
                                TextField("Class Name", text: $addClassTitle)
                                //If the class is being currently taken
                                    if isCurrent == false {
                                        //Shows a button for the user to pick the class grade they got
                                        Button(action: {
                                            self.showPicker = true
                                        }){
                                            Text("Letter Grade")
                                                .foregroundColor(Color.init(red: 40/255, green: 100/255, blue: 40/255))
                                        }
                                        .padding(.trailing, 50)
                                    }
                
                            }
                            .padding(.top, UIScreen.main.bounds.height / 5)
                            .padding(.leading, 30)
                            //If the picker is being shown then show all the possible letter grades
                            if showPicker {
                                Picker(selection: $selectionGrade, label: Text("")) {
                                    //Loops through all the possible letter grades
                                    ForEach(0 ..< grades.count) {
                                        Text(self.grades[$0]).tag($0)
                                    }
                                }
                                .padding(.trailing, UIScreen.main.bounds.width / 15)
                            }
                            HStack {
                                Text("I'm currently taking this class")
                                .font(.system(size: 18, weight: .thin, design: .rounded))
                                //Button to change whether the class is currently being taken or not
                                Button(action: {
                                    self.isCurrent.toggle()
                                    self.showPicker = false
                                }){
                                    //If the user is currently taking the class show a check mark
                                    if isCurrent {
                                        Image("CheckMarkButton").resizable()
                                            .frame(width: 40, height: 40)
                                    }
                                    //If the user is not currently taking the class show a circle
                                    else {
                                        Image("UnCheckedButton").resizable()
                                            .frame(width:40, height: 40)
                                    }
                                }
                            }
                            //Button to add the class
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
            if showClasses {
                ClassesList()
            }
        }
        
    }
    
}

struct ClassesView_Previews: PreviewProvider {
    static var previews: some View {
        ClassesView()
    }
}
