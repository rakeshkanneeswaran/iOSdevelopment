//
//  applicationData.swift
//  test
//
//  Created by Apple on 21/06/23.
//

import Foundation
import SwiftUI

struct Book {
    var title : String
    var author : String
}

struct BookViewModel {
    var book: Book
    var heading : String{
        return book.title + "   " + book.author
    }
    
}

class applicationData: ObservableObject {
    @Published var userData : BookViewModel
    init(){
        userData = BookViewModel(book: Book(title: "Default Title", author: " Unknown"))
    }
    
}
