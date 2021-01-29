//
//  ContentView.swift
//  ReadMe
//
//  Created by Rick Brown on 11/01/2021.
//

import SwiftUI

struct ContentView: View {
  @State var library = Library()
  
  var body: some View {
    NavigationView {
      List(library.sortedBooks, id: \.self) { book in
        BookRowView(book: book, image: $library.uiImages[book])
      }
      .navigationBarTitle("My Library")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewedInAllColorSchemes
  }
}

