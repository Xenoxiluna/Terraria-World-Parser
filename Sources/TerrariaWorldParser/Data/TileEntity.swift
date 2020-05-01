//
//  TileEntity.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/30/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class TileEntity{
    var type: UInt8 = 0
    var id: Int32 = 0
    var x: Int16 = 0
    var y: Int16 = 0

    //dummy npc
    var npc: Int16 = 0

    //tem frame
    var netId: Int16 = 0
    var prefix: UInt8 = 0
    var stackSize: Int16 = 0

    //Logic Sensor
    var logicCheck: UInt8 = 0
    var on: Bool = false
}
