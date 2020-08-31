//
//  ContentView.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 28/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "sql"
    
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                TextField("buscar", text: $name)
                
                NavigationLink(destination: BookList(name: name)){
                    
                    Text("Buscar")
                        .foregroundColor(Color.white)
                        .padding(12)
                        .cornerRadius(12)
                        .background(Color.red)
                    
                }
                .padding(.all, 5.0)
                    
                .navigationBarTitle(Text("Buscar en la biblioteca"))
                
            }
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
