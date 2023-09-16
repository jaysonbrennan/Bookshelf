//
//  Book.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import Foundation

struct Book: Hashable {
    let name: String
    let author: String
    
    init(name: String, author: String) {
        self.name = name
        self.author = author
    }
}
