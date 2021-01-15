//
//  News.swift
//  Instagram
//
//  Created by Sofi on 15.01.2021.
//

import Foundation
import SwiftUI



struct im:Hashable {
    let img:String
    let id = UUID()
}

class News: ObservableObject {
    @Published var gymn: [im] = []
    
    init(){
        self.gymn.append(im(img: "https://i.pinimg.com/originals/2a/b9/30/2ab93097f6442f90102224f177a6487f.jpg"))
        self.gymn.append(im(img: "https://data.whicdn.com/images/347827008/original.jpg?t=1597771508"))
        self.gymn.append(im(img: "https://i.pinimg.com/736x/9f/2c/25/9f2c25033449e69cec192d2928b7f261.jpg"))
        self.gymn.append(im(img: "https://i.pinimg.com/736x/ed/e8/e1/ede8e1cc70b0ad88a89fb2253148ff56.jpg"))
    }
}
