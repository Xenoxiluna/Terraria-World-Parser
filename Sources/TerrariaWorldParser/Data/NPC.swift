//
//  NPC.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class NPC {
    public var home: SIMD2<Int32> = [0,0]
    public var isHomeless: Bool = false
    public var name: String = ""
    public var position: SIMD2<Float32> = [0,0]
    public var spriteId: Int32 = 0
    public var displayName: String = ""
}
