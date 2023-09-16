//
//  Bookshelf.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

struct Bookshelf: View {
    // DEBUG:
    private let book = Book(name: "Final Empire", author: "Brandon Sanderson")
    
    var body: some View {
        NavigationStack {
            List(0 ..< 3) { item in
                NavigationLink(value: book) {
                    BookCard(book: book)
                }
            }
            .navigationTitle("Bookshelf")
            .listStyle(.plain)
        }
    }
}

struct Bookshelf_Previews: PreviewProvider {
    static var previews: some View {
        Bookshelf()
    }
}
