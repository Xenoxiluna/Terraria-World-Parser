//
//  TileEntity.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/30/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class TileEntity{
    public var type: UInt8 = 0
    public var id: Int32 = 0
    public var x: Int16 = 0
    public var y: Int16 = 0

    //dummy npc
    public var npc: Int16 = 0

    //tem frame
    public var netId: Int16 = 0
    public var prefix: UInt8 = 0
    public var stackSize: Int16 = 0

    //Logic Sensor
    public var logicCheck: UInt8 = 0
    public var on: Bool = false
}
