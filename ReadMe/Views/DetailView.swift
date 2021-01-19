//
//  DetailView.swift
//  ReadMe
//
//  Created by Rick Brown on 19/01/2021.
//

import SwiftUI

struct DetailView: View {
  let book: Book
  
  var body: some View {
    VStack(alignment: .leading) {
      TitleAndAuthorView(book: book, titleFont: .title, authorFont: .title2)
      Book.Image(title: book.title)
      Spacer()
    }
    .padding()
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(book: .init())
  }
}
