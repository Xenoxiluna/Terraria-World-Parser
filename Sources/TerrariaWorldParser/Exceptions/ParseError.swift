//
//  ErrorDefinition.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

enum ParseError: Error{
    case RLECompressionError
    case RLECompressionOutofBounds
    case BitArrayError
    case invalidTileDataReadPosition
    case invalidHeaderReadPosition
    case invalidFooterBool
    case invalidFooterString
    case invalidFooterInt
    case invalidHeader
}
