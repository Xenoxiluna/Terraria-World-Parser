//
//  BrickStyle.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/28/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public enum BrickStyle: UInt8{
    case Full = 0x0
    case HalfBrick = 0x1
    case SlopeTopRight = 0x2
    case SlopeTopLeft = 0x3
    case SlopeBottomRight = 0x4
    case SlopeBottomLeft = 0x5
}
