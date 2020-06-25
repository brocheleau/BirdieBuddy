//
//  ContentView.swift
//  BirdieBuddy
//
//  Created by Blake Rocheleau on 6/24/20.
//  Copyright © 2020 Blake Rocheleau. All rights reserved.
//

//This file controls the visual look of your app

/*
 In the canvas, command+click brings up the UI inspector,
 which allows you to change the look of your app visually
 and Xcode will generate the necessary code for you
*/

import SwiftUI

struct ContentView: View {
    var courses: [GolfCourse] = []
    
    var body: some View {
        NavigationView {
            //VStack is a common layout container in SwiftUI
            //stands for "Vertical Stack"
            //use HStack to stack views horizontally
            VStack(alignment: .center) {
                Image("golfer-cartoon").resizable().padding().scaledToFit()
                //title of the app
                Text("Birdie Buddy").font(.system(size: 50)).fontWeight(.bold).multilineTextAlignment(.center)
                //app description
                Text("\nThe app that tracks your golf game\n").font(.title).multilineTextAlignment(.center)
                
                //adding a button to link to the New Round Page

                NavigationLink(destination: NewRound(courses: test_data)){
                    Text("New Round")
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    .background(Color.green)
                    .cornerRadius(40)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .shadow(radius: 10)

                }
                
                NavigationLink(destination: History()){
                    Text("Player History")
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    .background(Color.green)
                    .cornerRadius(40)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .shadow(radius: 10)

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
