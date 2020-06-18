//
//  Bestiary.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 5/18/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public struct Bestiary{
    public let killMax: Int32 = 9999;
    public var npcKills: [String: Int32] = [String: Int32]()
    public var npcNear: [String] = []
    public var npcChat: [String] = []
}
