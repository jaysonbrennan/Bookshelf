//
//  Bookshelf.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 9/18/23.
//

import Foundation

final class Bookshelf: ObservableObject {
    @Published var books: [Book] = []
}
