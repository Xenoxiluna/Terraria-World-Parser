//
//  Item.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class Item {
    public let MaxStackSize: Int = 999

    public var stackSize: Int16 = 0
    public var prefix: UInt8 = 0
    public var netId: Int32 = 0

    public init(){
        self.stackSize = 0
        self.netId = 0
    }

    public init(stackSize: Int16, netId: Int32){
        self.stackSize = stackSize
        self.netId = stackSize > 0 ? netId : 0
    }
}
