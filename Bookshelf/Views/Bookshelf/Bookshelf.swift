//
//  Bookshelf.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

struct Bookshelf: View {
    // DEBUG:
    private let book = Book(name: "Final Empire")
    
    var body: some View {
        NavigationStack {
            NavigationLink(value: book) {
                BookCard(book: book)
            }
            NavigationLink(value: book) {
                BookCard(book: book)
            }
            NavigationLink(value: book) {
                BookCard(book: book)
            }
        }
    }
}

struct Bookshelf_Previews: PreviewProvider {
    static var previews: some View {
        Bookshelf()
    }
}
