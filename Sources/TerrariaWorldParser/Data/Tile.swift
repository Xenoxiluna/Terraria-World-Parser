//
//  Tile.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/28/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

struct Tile{
    var IsActive: Bool = false
    var WireRed: Bool = false
    var WireGreen: Bool = false
    var WireBlue: Bool = false
    var WireYellow: Bool = false
    var TileColor: UInt8 = 0
    var tileType: UInt16 = 0
    var Wall: UInt8 = 0
    var WallColor: UInt8 = 0
    var LiquidType: LiquidType = .None
    var LiquidAmount: UInt8 = 0
    var BrickStyle: BrickStyle = .Full
    var Actuator: Bool = false
    var InActive: Bool = false
    var u: Int16, v: Int16 = 0

    var uvTileCache: UInt16 = 0xFFFF //Caches UV position of a tile
    var uvWallCache: UInt16 = 0xFFFF //Caches UV position of a wall tile
}
