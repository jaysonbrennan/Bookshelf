//
//  Book.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import Foundation

struct VolumeInfo: Hashable, Decodable {
    let title: String
    let authors: [String]
}

struct Book: Hashable, Decodable, Identifiable {
    let id: String
    let volumeInfo: VolumeInfo
}

struct BookVolumes: Decodable {
    let items: [Book]
    let kind: String
}
