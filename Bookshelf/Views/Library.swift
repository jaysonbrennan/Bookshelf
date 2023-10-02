//
//  Library.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 9/30/23.
//

import SwiftUI

struct Library: View {
    @State private var books: [Book] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) { book in
                    BookCard(book: book)
                }
            }
            .navigationTitle("Library")
            .listStyle(.plain)
        }
        .task {
            books = await fetchBooks()
        }
    }
}

#Preview {
    Library()
}
