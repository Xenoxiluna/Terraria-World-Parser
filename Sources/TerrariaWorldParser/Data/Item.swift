//
//  Item.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class Item {
    let MaxStackSize: Int = 999

    var stackSize: Int16 = 0
    var prefix: UInt8 = 0
    var netId: Int32 = 0

    init(){
        self.stackSize = 0
        self.netId = 0
    }

    init(stackSize: Int16, netId: Int32){
        self.stackSize = stackSize
        self.netId = stackSize > 0 ? netId : 0
    }
}
