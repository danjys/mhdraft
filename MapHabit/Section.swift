//
//  Section.swift
//  MapHabit
//
//  Created by Dhananjaya Somanna on 10/14/18.
//  Copyright © 2018 Dhananjaya Somanna. All rights reserved.
//

import Foundation

struct Section {
    var genre: String!
    var movies: [String]!
    var expanded: Bool!
    
    init(genre: String, movies: [String], expanded: Bool) {
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
    }
}
