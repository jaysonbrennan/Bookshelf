//
//  BookCard.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

struct BookCard: View {
    let book: Book
    
    var body: some View {
        HStack {
            Image(systemName: "book.closed.fill")
            Text("Book Name")
        }
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: Book(name: "Jumanji"))
    }
}
