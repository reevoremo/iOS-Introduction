//
//  Users.swift
//  randomuser
//
//  Created by Behan Remoshan on 05/06/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import Foundation

struct UserBase: Codable {
    let results: [RandomUser]
}

struct RandomUser: Codable{
    let gender: String
    let name: UserName
}

struct UserName: Codable{
    let title: String
    let first: String
    let last: String
}
