//
//  Book.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import Foundation

struct Book: Hashable, Decodable, Identifiable {
    var id: Int
    let name: String
    let author: String
}
