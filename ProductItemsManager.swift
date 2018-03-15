//
//  ProductItemsManager.swift
//  BGShop
//
//  Created by Alumne on 15/3/18.
//  Copyright © 2018 Alumne.LaSalle.Gerard_Bhupi. All rights reserved.
//

import Foundation

class ProductItemsManager{
    
    var items:[ProductItem] = [ProductItem]()
    
    func addItem(item: ProductItem){
        self.items.append(item)
    }
    func deleteItem(index: Int){
        self.items.remove(at: index)
    }
    func itemSelected(index: Int){
        self.items[index].markAsCompleted()
        
    }
}
