//
//  Chest.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class Chest {
    public static var MaxItems: Int = 40

    public var x: Int32 = 0
    public var y: Int32 = 0
    public var name: String = ""
    public var chestId: Int = -1
    public var items: [Item] = []

    public init(){
        for _ in 0..<Chest.MaxItems{
            self.items = Array(repeating: Item.init(), count: Chest.MaxItems)
        }
    }
    
    public init(x: Int32, y: Int32){
        self.x = x
        self.y = y
    }

    public init(x: Int32, y: Int32, name: String){
        self.x = x
        self.y = y
        self.name = name
        for _ in 0..<Chest.MaxItems{
            items = Array(repeating: Item.init(), count: Chest.MaxItems)
        }
    }
}
