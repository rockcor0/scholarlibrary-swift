//
//  VOBook.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 29/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import UIKit

struct VOBook: Codable {
    
    var error: String
    var total: String
    var page: String
    var books: [MyBook]
}

struct MyBook: Codable {
    var title: String
    var subtitle: String
    var isbn13: String
    var price: String
    var image: String
    var url: String
}

