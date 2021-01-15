//
//  Hisory.swift
//  Instagram
//
//  Created by Sofi on 15.01.2021.
//

import Foundation
import SwiftUI

struct Model:Hashable {
    let imag:String
    let id = UUID()
}


class History: ObservableObject {
    @Published var gymh: [Model] = []
    init(){
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://i03.fotocdn.net/s118/302031bba43545f0/public_pin_l/2680529723.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://i03.fotocdn.net/s118/302031bba43545f0/public_pin_l/2680529723.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://i03.fotocdn.net/s118/302031bba43545f0/public_pin_l/2680529723.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://i03.fotocdn.net/s118/302031bba43545f0/public_pin_l/2680529723.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://i03.fotocdn.net/s118/302031bba43545f0/public_pin_l/2680529723.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
        self.gymh.append(Model(imag: "https://i03.fotocdn.net/s118/302031bba43545f0/public_pin_l/2680529723.jpg"))
        self.gymh.append(Model(imag: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg"))
    }
}
