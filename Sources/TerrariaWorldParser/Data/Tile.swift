//
//  Tile.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/28/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public struct Tile{
    public var IsActive: Bool = false
    public var WireRed: Bool = false
    public var WireGreen: Bool = false
    public var WireBlue: Bool = false
    public var WireYellow: Bool = false
    public var TileColor: UInt8 = 0
    public var tileType: UInt16 = 0
    public var Wall: UInt8 = 0
    public var WallColor: UInt8 = 0
    public var LiquidType: LiquidType = .None
    public var LiquidAmount: UInt8 = 0
    public var BrickStyle: BrickStyle = .Full
    public var Actuator: Bool = false
    public var InActive: Bool = false
    public var u: Int16, v: Int16 = 0

    public var uvTileCache: UInt16 = 0xFFFF //Caches UV position of a tile
    public var uvWallCache: UInt16 = 0xFFFF //Caches UV position of a wall tile
}
