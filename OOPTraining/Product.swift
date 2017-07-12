//
//  Product.swift
//  OOPTraining
//
//  Created by Duy Nguyen on 7/11/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

class Product {
    
    var id : Int?
    var name : String?
    
    init(_ id: Int, name: String) {
        self.id = id
        self.name = name
    }

}

extension Product : Equatable {
    static func ==(lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
}
