//
//  ContentView.swift
//  ReadMe
//
//  Created by Rick Brown on 11/01/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List(Library().sortedBooks, id: \.title) { book in
        BookRowView(book: book)
      }
      .navigationBarTitle("My Library")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

