//
//  example.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/18/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation
import BinarySwift

let path: String = "/Users/Xenoxiluna1/Desktop/test2.wld"
var world: WorldFile = WorldFile(path: path)

/*try world.parseWorldFile()
print("----Parse File Header----")
print("Terraria Version: \(world.version)")
print("Magic Number: \(world.magicNumber)")
print("Filetype: \(world.fileType)")
print("Rev: \(world.revision)")
print("Fav: \(world.favorite)")
print("PCount: \(world.pointersCount)")
print("pointers: \(world.pointers)")
print("importantsCount: \(world.importantsCount)")
print("importants: \(world.importants)")

print("----Parse Header----")
print("mapName: \(world.mapName)")
print("SeedText: \(world.seedText)")
print("worldGenver: \(world.worldGeneratorVersion)")
print("guid: \(world.guid)")
print("worldid: \(world.worldId)")
print("leftworld: \(world.leftWorld)")
print("rightworld: \(world.rightWorld)")
print("topworld: \(world.topWorld)")
print("bottomworld: \(world.bottomWorld)")
print("maxtilesy: \(world.maxTilesY)")
print("maxtilesx: \(world.maxTilesX)")
print("expertmode: \(world.expertMode)")
print("creationtime: \(world.creationTime)")
print("moontype: \(world.moonType)")
print("isdaytime: \(world.tempDayTime)")
print("angler: \(world.anglerWhoFinishedToday)")
print("clouds: \(world.numClouds)")
print("cloudBGActive: \(world.cloudBGActive)")

print("----Parse Tile Data----")
print("Tile 2: \(world.tileDataArray[1][0])")

print("----Parse Chest Data----")
print("ChestdataCount: \(world.chestDataArray.count)")

print("----Parse Sign Data----")
print("SignDataCount: \(world.signDataArray.count)")

print("----Parse NPC Data----")
print("NPCDataCount: \(world.NPCDataArray.count)")

print("----Parse Mob Data----")
print("mobDataCount: \(world.mobDataArray.count)")

print("----Parse Tile Entities----")
print("TileEntityCount: \(world.tileEntitiesArray.count)")

print("----Parse Pressure Plates----")
print("PressurePlateCount: \(world.pressurePlatesArray.count)")

print("----Parse Town Manager----")
print("RoomCount: \(world.playerRoomArray.count)")

print("----Parse Footer----")*/
