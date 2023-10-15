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
                    Book(id: "xyz",
                         volumeInfo: VolumeInfo(title: "Final Empire",
                                                authors: ["Brandon Sanderson"],
                                                description: "Book Description",
                                                imageLinks: ImageLinks(smallThumbnail: "url",
                                                                       thumbnail: "url"))),
                    Book(id: "abc",
                         volumeInfo: VolumeInfo(title: "Harry Potter",
                                                authors: ["J.K. Rowling"],
                                                description: "Book Description",
                                                imageLinks: ImageLinks(smallThumbnail: "url",
                                                                       thumbnail: "url"))),
                    Book(id: "mno",
                         volumeInfo: VolumeInfo(title: "Green Eggs & Ham",
                                                authors: ["Dr. Seuss"],
                                                description: "Book Description",
                                                imageLinks: ImageLinks(smallThumbnail: "url",
                                                                       thumbnail: "url"))),
                ]
                return bookshelf
            }())
    }
}
