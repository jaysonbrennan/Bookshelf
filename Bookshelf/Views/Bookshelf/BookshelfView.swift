//
//  BookshelfView.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

struct BookshelfView: View {
    @EnvironmentObject private var bookshelf: Bookshelf
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(bookshelf.books) { book in
                    NavigationLink {
                    } label: {
                        BookCard(book: book)
                    }
                }
            }
            .navigationTitle("Bookshelf")
            .listStyle(.plain)
        }
    }
}

struct Bookshelf_Previews: PreviewProvider {
    static var previews: some View {
        BookshelfView()
            .environmentObject({ () -> Bookshelf in
                let bookshelf = Bookshelf()
                bookshelf.books = [
                    Book(id: 1, name: "Final Empire", author: "Brandon Sanderson"),
                    Book(id: 2, name: "Harry Potter", author: "J.K. Rowling"),
                    Book(id: 3, name: "Green Eggs & Hame", author: "Dr. Seuss")
                ]
                return bookshelf
            }() )
    }
}
