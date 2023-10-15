//
//  BookService.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 9/18/23.
//

import Foundation

func fetchBooks() async -> [Book] {
    let url =
        URL(string: "https://www.googleapis.com/books/v1/volumes?q=harry+potter")

    do {
        let (data, response) = try await URLSession.shared.data(from: url!)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            print("Failed book request")
            return []
        }

        do {
            let bookVolumes = try JSONDecoder()
                .decode(BookVolumes.self, from: data)
            print("Book ID: \(bookVolumes.items[0].id)")
            return bookVolumes.items
        } catch {
            print("Couldn't parse json as \([Book].self)")
            return []
        }
    } catch {
        print("Invalid data")
        return []
    }
}
