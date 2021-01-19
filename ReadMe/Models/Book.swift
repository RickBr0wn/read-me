//
//  Book.swift
//  ReadMe
//
//  Created by Rick Brown on 11/01/2021.
//

struct Book {
  let title: String
  let author: String
  
  init(title: String = "Opps, you forgot the title", author: String = "Opps, you forgot the author") {
    self.title = title
    self.author = author
  }
}
