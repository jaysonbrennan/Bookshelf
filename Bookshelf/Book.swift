//
//  Book.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import Foundation

struct Book: Hashable {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}
