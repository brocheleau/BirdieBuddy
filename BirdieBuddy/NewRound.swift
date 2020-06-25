//
//  NewRound.swift
//  BirdieBuddy
//
//  Created by Blake Rocheleau on 6/25/20.
//  Copyright © 2020 Blake Rocheleau. All rights reserved.
//

import SwiftUI

struct NewRound: View {
    var courses: [GolfCourse] = []
    
    var body: some View {
        
        NavigationView {
            List(courses) { course in
                NavigationLink(destination: Text(course.name)) {
                 
                    VStack(alignment: .leading) {
                        Text(course.name)
                        HStack {
                            Text("Rating: " + String(course.rating) + ", ")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text(String(course.yardage) + " yards")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }.navigationBarTitle("Select Course")
            }
        }

    }
}

struct NewRound_Previews: PreviewProvider {
    static var previews: some View {
        NewRound(courses: test_data)
    }
}
