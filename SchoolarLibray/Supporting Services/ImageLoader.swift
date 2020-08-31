//
//  ImageLoader.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 30/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var downloadImage: UIImage?
    
    func fetchImage(url: String){
        guard let imageURL = URL(string: url) else {
            fatalError("The url is invalid")
        }
        
        print("Url de la imagen: \(url)")
        
        URLSession.shared.dataTask(with: imageURL){ data, response, error in
            
            guard let data = data, error == nil else {
                fatalError("Error reading the image")
            }
            
            DispatchQueue.main.async {
                self.downloadImage = UIImage(data: data)
            }
            
        }.resume()
    }
}
