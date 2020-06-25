//
//  golf_courses.swift
//  BirdieBuddy
//
//  Created by Blake Rocheleau on 6/25/20.
//  Copyright © 2020 Blake Rocheleau. All rights reserved.
//

import Foundation

struct GolfCourse: Identifiable {
    var id = UUID()
    var name: String
    var holes: Int
    var par: Int
    var yardage: Int
    var rating: Float
    
    //extra information
    var latitude: Float = 0.0
    var longitude: Float = 0.0
}

let test_data = [
    
    GolfCourse(name: "Rancho Park", holes: 18, par: 71, yardage: 6839, rating: 72.5),
    GolfCourse(name: "Wilson", holes: 18, par: 72, yardage: 6967, rating: 73.0),
    GolfCourse(name: "Harding", holes: 18, par: 72, yardage: 6679, rating: 71.3)

]
