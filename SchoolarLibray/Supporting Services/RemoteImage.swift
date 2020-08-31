//
//  RemoteImage.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 30/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct RemoteImage: View {
    
    @ObservedObject var imageLoader = ImageLoader()
    
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image(systemName: "photo")){
        self.placeholder = placeholder
        imageLoader.fetchImage(url: url)
    }
    
    var body: some View {
        if let image = self.imageLoader.downloadImage {
            return Image(uiImage: image)
        }
        return placeholder
    }
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(url: "")
    }
}
