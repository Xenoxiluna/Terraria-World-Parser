//
//  NPC.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class NPC {
    var home: SIMD2<Int32> = [0,0]
    var isHomeless: Bool = false
    var name: String = ""
    var position: SIMD2<Float32> = [0,0]
    var spriteId: Int32 = 0
    var displayName: String = ""
}
