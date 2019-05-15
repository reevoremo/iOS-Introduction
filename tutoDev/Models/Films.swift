//
//  Films.swift
//  tutoDev
//
//  Created by Behan Remoshan on 02/05/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import Foundation

class Film {
    let title: String
    let releaseYear: String
    
    init(_ title: String, releasedOn releaseYear: String) {
        self.title = title
        self.releaseYear = releaseYear
    }
}
