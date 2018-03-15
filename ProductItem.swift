//
//  ProductItem.swift
//  BGShop
//
//  Created by Alumne on 15/3/18.
//  Copyright © 2018 Alumne.LaSalle.Gerard_Bhupi. All rights reserved.
//

import Foundation

class ProductItem{
    
    
    var name:String
    var description:String
    var price:Double
    var stock:Int
    var selected:Bool
    
    
    init(name: String,description:String,price:Double,stock:Int){
        
        self.description = description
        self.name = name
        self.price = price
        self.stock = stock
        
    }
    
    func markAsCompleted(){
        self.selected=(selected ? false:true)        
        
    }
    
    
}


