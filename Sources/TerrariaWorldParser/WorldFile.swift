//
//  WorldFile.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/19/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation
import SwiftyBytes

public class WorldFile{
    let data: BinaryReadableData
    let reader: BinaryReader
    
    var version: UInt32 = 0
    var magicNumber: String = ""
    var fileType: FileType = FileType.None
    var revision: UInt32 = 0
    var favorite: UInt8 = 0
    var pointersCount: Int16 = 0
    var pointers: [Int32] = []
    var importantsCount: UInt16 = 0
    var importants: [Bool] = []
    
    var mapName: String = ""
    var seedText: String = ""
    var worldGeneratorVersion: UInt64 = 0
    var guid: [UInt8] = []
    var worldId: Int32 = 0
    var leftWorld: Int32 = 0
    var rightWorld: Int32 = 0
    var topWorld: Int32 = 0
    var bottomWorld: Int32 = 0
    var maxTilesY: Int32 = 0
    var maxTilesX: Int32 = 0
    var expertMode: UInt8 = 0
    var creationTime: Int64 = 0
    var moonType: UInt8 = 0
    var treeX: [Int32] = []
    var treeStyle: [Int32] = []
    var caveBackX: [Int32] = []
    var caveBackStyle: [Int32] = []
    var iceBackStyle: Int32 = 0
    var jungleBackStyle: Int32 = 0
    var hellBackStyle: Int32 = 0
    var spawnTileX: Int32 = 0
    var spawnTileY: Int32 = 0
    var worldSurface: Float64 = 0.0
    var rockLayer: Float64 = 0
    var tempTime: Float64 = 0
    var tempDayTime: UInt8 = 0
    var tempMoonPhase: Int32 = 0
    var tempBloodMoon: UInt8 = 0
    var tempEclipse: UInt8 = 0
    var dungeonX: Int32 = 0
    var dungeonY: Int32 = 0
    var crimson: UInt8 = 0
    var downedBoss1: UInt8 = 0
    var downedBoss2: UInt8 = 0
    var downedBoss3: UInt8 = 0
    var downedQueenBee: UInt8 = 0
    var downedMechBoss1: UInt8 = 0
    var downedMechBoss2: UInt8 = 0
    var downedMechBoss3: UInt8 = 0
    var downedMechBossAny: UInt8 = 0
    var downedPlantBoss: UInt8 = 0
    var downedGolemBoss: UInt8 = 0
    var downedSlimeKing: UInt8 = 0
    var savedGoblin: UInt8 = 0
    var savedWizard: UInt8 = 0
    var savedMech: UInt8 = 0
    var downedGoblins: UInt8 = 0
    var downedClown: UInt8 = 0
    var downedFrost: UInt8 = 0
    var downedPirates: UInt8 = 0
    var shadowOrbSmashed: UInt8 = 0
    var spawnMeteor: UInt8 = 0
    var shadowOrbCount: UInt8 = 0
    var altarCount: Int32 = 0
    var hardMode: UInt8 = 0
    var invasionDelay: Int32 = 0
    var invasionSize: Int32 = 0
    var invasionType: Int32 = 0
    var invasionX: Float64 = 0
    var slimeRainTime: Float64 = 0
    var sundialCooldown: UInt8 = 0
    var tempRaining: UInt8 = 0
    var tempRainTime: Int32 = 0
    var tempMaxRain: Float32 = 0
    var oreTier1: Int32 = 0
    var oreTier2: Int32 = 0
    var oreTier3: Int32 = 0
    var setBG0: UInt8 = 0
    var setBG1: UInt8 = 0
    var setBG2: UInt8 = 0
    var setBG3: UInt8 = 0
    var setBG4: UInt8 = 0
    var setBG5: UInt8 = 0
    var setBG6: UInt8 = 0
    var setBG7: UInt8 = 0
    var cloudBGActive: Int32 = 0
    var numClouds: Int16 = 0
    var windSpeed: Float32 = 0
    var anglerWhoFinishedToday: [String] = []
    var savedAngler: UInt8 = 0
    var anglerQuest: Int32 = 0
    var savedStylist: UInt8 = 0
    var savedTaxCollector: UInt8 = 0
    var invasionSizeStart: Int32 = 0
    var tempCultistDelay: Int32 = 0
    var killCount: [Int32] = []
    var fastForwardTime: UInt8 = 0
    var downedFishron: UInt8 = 0
    var downedMartians: UInt8 = 0
    var downedAncientCultist: UInt8 = 0
    var downedMoonlord: UInt8 = 0
    var downedHalloweenKing: UInt8 = 0
    var downedHalloweenTree: UInt8 = 0
    var downedChristmasIceQueen: UInt8 = 0
    var downedChristmasSantank: UInt8 = 0
    var downedChristmasTree: UInt8 = 0
    var downedTowerSolar: UInt8 = 0
    var downedTowerVortex: UInt8 = 0
    var downedTowerNebula: UInt8 = 0
    var downedTowerStardust: UInt8 = 0
    var TowerActiveSolar: UInt8 = 0
    var TowerActiveVortex: UInt8 = 0
    var TowerActiveNebula: UInt8 = 0
    var TowerActiveStardust: UInt8 = 0
    var LunarApocalypseIsUp: UInt8 = 0
    var tempPartyManual: UInt8 = 0
    var tempPartyGenuine: UInt8 = 0
    var tempPartyCooldown: Int32 = 0
    var tempPartyCelebratingNPCs: [Int32] = []
    var Temp_Sandstorm_Happening: UInt8 = 0
    var Temp_Sandstorm_TimeLeft: Int32 = 0
    var Temp_Sandstorm_Severity: Float32 = 0
    var Temp_Sandstorm_IntendedSeverity: Float32 = 0
    var savedBartender: UInt8 = 0
    var DD2Event_DownedInvasionT1: UInt8 = 0
    var DD2Event_DownedInvasionT2: UInt8 = 0
    var DD2Event_DownedInvasionT3: UInt8 = 0
    
    var tileDataArray: [[Tile]] = []
    var chestDataArray: [Chest] = []
    var signDataArray: [Sign] = []
    var NPCDataArray: [NPC] = []
    var mobDataArray: [NPC] = []
    var playerRoomArray: [TownManager] = []
    var tileEntitiesNumber: Int32 = 0
    var tileEntitiesArray: [TileEntity] = []
    var pressurePlatesArray: [PressurePlate] = []
    
    init(data: Data) {
        self.data = BinaryReadableData(data: data)
        self.reader = BinaryReader(self.data)
    }
    
    func parseWorldFile() throws {
        try parseFileHeader()
        print("\(self.reader.readIndex)")
        if (self.pointers[0] != self.reader.readIndex)
        {
            throw ParseError.invalidHeaderReadPosition
        }
        
        try parseHeader()
        print("\(self.reader.readIndex)")
        if (self.pointers[1] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }
        
        try parseTileData()
        print("\(self.reader.readIndex)")
        if (self.pointers[2] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }
        
        try parseChestData()
        print("\(self.reader.readIndex)")
        if (self.pointers[3] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }

        try parseSignData()
        print("\(self.reader.readIndex)")
        if (self.pointers[4] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }

        try parseNPCData()
        try parseMobData()
        print("\(self.reader.readIndex)")
        if (self.pointers[5] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }

        try parseTileEntities()
        print("\(self.reader.readIndex)")
        if (self.pointers[6] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }

        try parsePressurePlate()
        print("\(self.reader.readIndex)")
        if (self.pointers[7] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }

        try parseTownManager()
        print("\(self.reader.readIndex)")
        if (self.pointers[8] != self.reader.readIndex)
        {
            throw ParseError.invalidTileDataReadPosition
        }
        
        try parseFooter()
    }
    
    private func parseFileHeader() throws {
        self.version = try reader.readUInt32()
        self.magicNumber = try reader.readString(7)
        self.fileType = FileType.init(rawValue: try reader.readUInt8())!
        self.revision = try reader.readUInt32()
        let _ = try reader.readString(7)
        self.favorite = try reader.readUInt8()
        self.pointersCount = try reader.readInt16()
        self.pointers = [Int32](repeating: 0, count: Int(self.pointersCount))

        for i in 0..<Int(self.pointersCount){
            self.pointers[i] += try reader.readInt32()
        }

        self.importantsCount = try reader.readUInt16()
        self.importants = [Bool](repeating: false, count: Int(self.importantsCount))
        
        try ReadBitArray()
    }

    private func parseHeader() throws{
        do{
            self.mapName = try reader.readNullTerminatedStringNoTrail()
            self.seedText = try reader.readNullTerminatedStringNoTrail()
            let mapArr = self.mapName.components(separatedBy: "\n")
            if(mapArr.count > 1){
                self.mapName = mapArr[0]
                if(!(self.seedText.count > 0)){
                    self.seedText = mapArr[1]
                }
            }else{
                var _ = try reader.readNullTerminatedString()
                var _ = try reader.readNullTerminatedString()
            }
        }catch{
            print("Failed first Parse")
        }
        
        self.worldGeneratorVersion = try reader.readUInt64()
        self.guid = [UInt8](try reader.read(15)) // 16 maybe?
        self.worldId = try reader.readInt32()
        self.leftWorld = try reader.readInt32()
        self.rightWorld = try reader.readInt32()
        self.topWorld = try reader.readInt32()
        self.bottomWorld = try reader.readInt32()
        self.maxTilesY = try reader.readInt32()
        self.maxTilesX = try reader.readInt32()

        self.expertMode = try reader.readUInt8()
        self.creationTime = try reader.readInt64()
        self.moonType = try reader.readUInt8()

        self.treeX = [Int32](repeating: 0, count: 3)
        self.treeX[0] = try reader.readInt32()
        self.treeX[1] = try reader.readInt32()
        self.treeX[2] = try reader.readInt32()

        self.treeStyle = [Int32](repeating: 0, count: 4)
        self.treeStyle[0] = try reader.readInt32()
        self.treeStyle[1] = try reader.readInt32()
        self.treeStyle[2] = try reader.readInt32()
        self.treeStyle[3] = try reader.readInt32()

        self.caveBackX = [Int32](repeating: 0, count: 3)
        self.caveBackX[0] = try reader.readInt32()
        self.caveBackX[1] = try reader.readInt32()
        self.caveBackX[2] = try reader.readInt32()

        self.caveBackStyle = [Int32](repeating: 0, count: 4)
        self.caveBackStyle[0] = try reader.readInt32()
        self.caveBackStyle[1] = try reader.readInt32()
        self.caveBackStyle[2] = try reader.readInt32()
        self.caveBackStyle[3] = try reader.readInt32()

        self.iceBackStyle = try reader.readInt32()
        self.jungleBackStyle = try reader.readInt32()
        self.hellBackStyle = try reader.readInt32()
        self.spawnTileX = try reader.readInt32()
        self.spawnTileY = try reader.readInt32()
        self.worldSurface = try reader.readFloat64()
        self.rockLayer = try reader.readFloat64()
        self.tempTime = try reader.readFloat64()
        self.tempDayTime = try reader.readUInt8()
        self.tempMoonPhase = try reader.readInt32()
        self.tempBloodMoon = try reader.readUInt8()
        self.tempEclipse = try reader.readUInt8()
        self.dungeonX = try reader.readInt32()
        self.dungeonY = try reader.readInt32()
        self.crimson = try reader.readUInt8()
        self.downedBoss1 = try reader.readUInt8()
        self.downedBoss2 = try reader.readUInt8()
        self.downedBoss3 = try reader.readUInt8()
        self.downedQueenBee = try reader.readUInt8()
        self.downedMechBoss1 = try reader.readUInt8()
        self.downedMechBoss2 = try reader.readUInt8()
        self.downedMechBoss3 = try reader.readUInt8()
        self.downedMechBossAny = try reader.readUInt8()
        self.downedPlantBoss = try reader.readUInt8()
        self.downedGolemBoss = try reader.readUInt8()
        self.downedSlimeKing = try reader.readUInt8()
        self.savedGoblin = try reader.readUInt8()
        self.savedWizard = try reader.readUInt8()
        self.savedMech = try reader.readUInt8()
        self.downedGoblins = try reader.readUInt8()
        self.downedClown = try reader.readUInt8()
        self.downedFrost = try reader.readUInt8()
        self.downedPirates = try reader.readUInt8()
        self.shadowOrbSmashed = try reader.readUInt8()
        self.spawnMeteor = try reader.readUInt8()
        self.shadowOrbCount = try reader.readUInt8()
        self.altarCount = try reader.readInt32()
        self.hardMode = try reader.readUInt8()
        self.invasionDelay = try reader.readInt32()
        self.invasionSize = try reader.readInt32()
        self.invasionType = try reader.readInt32()
        self.invasionX = try reader.readFloat64()
        self.slimeRainTime = try reader.readFloat64()
        self.sundialCooldown = try reader.readUInt8()
        self.tempRaining = try reader.readUInt8()
        self.tempRainTime = try reader.readInt32()
        self.tempMaxRain = try reader.readFloat32()
        self.oreTier1 = try reader.readInt32()
        self.oreTier2 = try reader.readInt32()
        self.oreTier3 = try reader.readInt32()
        self.setBG0 = try reader.readUInt8()
        self.setBG1 = try reader.readUInt8()
        self.setBG2 = try reader.readUInt8()
        self.setBG3 = try reader.readUInt8()
        self.setBG4 = try reader.readUInt8()
        self.setBG5 = try reader.readUInt8()
        self.setBG6 = try reader.readUInt8()
        self.setBG7 = try reader.readUInt8()
        self.cloudBGActive = try reader.readInt32()
        self.numClouds = try reader.readInt16()
        self.windSpeed = try reader.readFloat32()

        self.anglerWhoFinishedToday = []
        let anglerCount: Int32 = try reader.readInt32()
        for _ in 0..<anglerCount{
            anglerWhoFinishedToday += [try reader.readNullTerminatedString()]
        }
        
        self.savedAngler = try reader.readUInt8()
        self.anglerQuest = try reader.readInt32()
        self.savedStylist = try reader.readUInt8()
        self.savedTaxCollector = try reader.readUInt8()
        self.invasionSizeStart = try reader.readInt32()
        self.tempCultistDelay = try reader.readInt32()

        let numberOfMobs: Int16 = try reader.readInt16()
        self.killCount = [Int32](repeating: 0, count: Int(numberOfMobs))
        for _ in 0..<Int(numberOfMobs) {
            self.killCount += [try reader.readInt32()]
        }

        self.fastForwardTime = try reader.readUInt8()
        self.downedFishron = try reader.readUInt8()
        self.downedMartians = try reader.readUInt8()
        self.downedAncientCultist = try reader.readUInt8()
        self.downedMoonlord = try reader.readUInt8()
        self.downedHalloweenKing = try reader.readUInt8()
        self.downedHalloweenTree = try reader.readUInt8()
        self.downedChristmasIceQueen = try reader.readUInt8()
        self.downedChristmasSantank = try reader.readUInt8()
        self.downedChristmasTree = try reader.readUInt8()
        self.downedTowerSolar = try reader.readUInt8()
        self.downedTowerVortex = try reader.readUInt8()
        self.downedTowerNebula = try reader.readUInt8()
        self.downedTowerStardust = try reader.readUInt8()
        self.TowerActiveSolar = try reader.readUInt8()
        self.TowerActiveVortex = try reader.readUInt8()
        self.TowerActiveNebula = try reader.readUInt8()
        self.TowerActiveStardust = try reader.readUInt8()
        self.LunarApocalypseIsUp = try reader.readUInt8()
        self.tempPartyManual = try reader.readUInt8()
        self.tempPartyGenuine = try reader.readUInt8()
        self.tempPartyCooldown = try reader.readInt32()

        let numparty: Int32 = try reader.readInt32()
        self.tempPartyCelebratingNPCs = [Int32](repeating: 0, count: Int(numparty))
        for _ in 0..<(Int(numparty)) {
            self.tempPartyCelebratingNPCs.append(try reader.readInt32())
        }

        self.Temp_Sandstorm_Happening = try reader.readUInt8()
        self.Temp_Sandstorm_TimeLeft = try reader.readInt32()
        self.Temp_Sandstorm_Severity = try reader.readFloat32()
        self.Temp_Sandstorm_IntendedSeverity = try reader.readFloat32()
        self.savedBartender = try reader.readUInt8()
        self.DD2Event_DownedInvasionT1 = try reader.readUInt8()
        self.DD2Event_DownedInvasionT2 = try reader.readUInt8()
        self.DD2Event_DownedInvasionT3 = try reader.readUInt8()
    }
    
    private func parseTileData() throws{
        var rle: UInt16 = 0
        tileDataArray = Array(repeating: Array(repeating: Tile.init(u: 0), count: Int(maxTilesY)+1), count: Int(maxTilesX))
        print("maxX = \(self.maxTilesX)\nmaxY = \(self.maxTilesY)")
        for x in 0..<Int(self.maxTilesX) {
            var y: Int = 0
            while y < self.maxTilesY{
                let tile: Tile = try DeserializeTileData(rle: &rle)
                tileDataArray[x][y] = tile
                
                if rle == 0 {
                    y += 1
                }
                while (rle > 0)
                {
                    y += 1
                    
                    if (y > self.maxTilesY){
                        throw ParseError.RLECompressionOutofBounds
                    }
                    tileDataArray[x][y] = tile
                    rle -= 1
                }
            }
        }
    }
    
    private func DeserializeTileData(rle: inout UInt16) throws -> Tile{
        var tile: Tile = Tile(u: 0)

        rle = 0
        var tileType: UInt16 = 0
        var header3: UInt8 = 0
        var header2: UInt8 = 0
        let header1: UInt8 = try reader.readUInt8()
        
        // check bit[0] header2 data
        if ((header1 & 1) == 1){
            header2 = try reader.readUInt8()

            // check bit[0] header3 data
            if ((header2 & 1) == 1){
                header3 = try reader.readUInt8()
            }
        }
        
        // check bit[1] for active tile
        if ((header1 & 2) == 2){
            tile.IsActive = true

            // read tile type
            if ((header1 & 32) != 32){ // check bit[5] to see if tile is byte or little endian int16
                // if tile is UInt8
                let tempType: UInt8 = try reader.readUInt8()
                tileType = UInt16(tempType)
            }else{
                 tileType = try reader.readUInt16()
            }
            tile.tileType = tileType

            // read UV coords
            if (!(self.importants[Int(tileType)])){
                tile.u = -1
                tile.v = -1
            }else{
                tile.u = try reader.readInt16()
                tile.v = try reader.readInt16()
            }

            // check header3 bit[3] tile color
            if ((header3 & 8) == 8){
                tile.TileColor = try reader.readUInt8()
            }
        }

        // Read Walls
        if ((header1 & 4) == 4) {// check bit[3] bit for active wall
            tile.Wall = try reader.readUInt8()
            // check bit[4] of header3 for wall color
            if ((header3 & 16) == 16){
                tile.WallColor = try reader.readUInt8()
            }
        }

        // check if liquid present
        // bit[3] and bit[4], shift to 0 and 1 bits
        let liquidType: UInt8 = (header1 & 24) >> 3
        if (liquidType != 0){
            tile.LiquidAmount = try reader.readUInt8()
            tile.LiquidType = LiquidType(rawValue: liquidType)!
        }

        // check header2 data
        if (header2 > 1){
            // check bit[1] for red wire
            if ((header2 & 2) == 2){
                tile.WireRed = true
            }
            // check bit[2] for blue wire
            if ((header2 & 4) == 4){
                tile.WireBlue = true
            }
            // check bit[3] for green wire
            if ((header2 & 8) == 8){
                tile.WireGreen = true
            }

            // grab bits[4, 5, 6] and shift 4 places to 0,1,2. This byte is our brick style
            let brickStyle: UInt8 = (header2 & 112) >> 4
            if (brickStyle != 0){
                if let brickStyle = BrickStyle(rawValue: brickStyle){
                    tile.BrickStyle = brickStyle
                }
            }
        }

        // check data in header3
        if (header3 > 0){
            // check bit[1] for actuator
            if ((header3 & 2) == 2){
                tile.Actuator = true
            }

            // check bit[2] for inactive due to actuator
            if ((header3 & 4) == 4){
                tile.InActive = true
            }

            if ((header3 & 32) == 32){
                tile.WireYellow = true
            }
        }

        // get bit[6,7] and shift to bits 0,1 for RLE encoding type
        // 0 = no RLE compression
        // 1 = byte RLE counter
        // 2 = int16 RLE counter
        // 3 = ERROR
        let rleStorageType: UInt8 = (header1 & 192) >> 6
        
        // read RLE distance
        switch rleStorageType{
            case 0:
                rle = 0
            case 1:
                let tempRLE: UInt8 = try reader.readUInt8()
                rle = UInt16(tempRLE) + 1
            case 2:
                rle = try reader.readUInt16() + 1
            default:
                throw ParseError.RLECompressionError
        }
        return tile
    }
    
    private func parseChestData() throws {
        let totalChests: Int16 = try reader.readInt16()
        let maxItems: Int16 = try reader.readInt16()

        // check overflow items
        var itemsPerChest: Int
        var overflowItems: Int
        if (maxItems > Chest.MaxItems){
            itemsPerChest = Chest.MaxItems
            overflowItems = Int(maxItems) - Chest.MaxItems
        }else{
            itemsPerChest = Int(maxItems)
            overflowItems = 0
        }


        // read chests
        for _ in 0..<totalChests{
            let chest = Chest(
                x: try reader.readInt32(), //Int32
                y: try reader.readInt32(), //Int32
                name: try reader.readNullTerminatedString() //String
            )

            // read items in chest
            for slot in 0..<itemsPerChest{
                let stackSize: Int16 = try reader.readInt16()
                chest.items[slot].stackSize = stackSize

                if (stackSize > 0){
                    let id: Int32 = try reader.readInt32()
                    let prefix: UInt8 = try reader.readUInt8()

                    chest.items[slot].netId = id
                    chest.items[slot].stackSize = stackSize
                    chest.items[slot].prefix = prefix
                }
            }

            // dump overflow items
            for _ in 0..<overflowItems{
                let stackSize: Int16 = try reader.readInt16()
                if (stackSize > 0){
                    let _: Int32 = try reader.readInt32()
                    let _: UInt8 = try reader.readUInt8()
                }
            }
            chestDataArray += [chest]
        }
    }
    
    private func parseSignData() throws{
        let totalSigns: Int16 = try reader.readInt16()

        for _ in 0..<totalSigns{
            let text: String = try reader.readNullTerminatedString() //String
            let x: Int32 = try reader.readInt32()
            let y: Int32 = try reader.readInt32()
            
            let sign = Sign(x: x, y: y, text: text)
            signDataArray += [sign]
        }
    }
    
    private func parseNPCData() throws{
        var b: UInt8 = try reader.readUInt8()
        while b == 1{
            let npc = NPC()
            npc.spriteId = try reader.readInt32()
            
            npc.name = try reader.readStringEncoded(data)
            npc.position = [try reader.readFloat32(), try reader.readFloat32()]
            
            let isHomeless: UInt8 = try reader.readUInt8() //Bool
            if(isHomeless == 1){
                npc.isHomeless = true
            }else{
                npc.isHomeless = false
            }
            
            npc.home = [try reader.readInt32(), try reader.readInt32()]

            NPCDataArray += [npc]
            
            b = try reader.readUInt8()
        }
    }
    
    private func parseMobData() throws {
        print("\(self.reader.readIndex)")
        
        var b: UInt8 = try reader.readUInt8()
        while b == 1{
            let npc = NPC()
            npc.spriteId = try reader.readInt32()
            npc.position = [try reader.readFloat32(), try reader.readFloat32()]

            mobDataArray += [npc]
            
            b = try reader.readUInt8()
        }
    }
    
    private func parseTileEntities() throws {
        self.tileEntitiesNumber = try reader.readInt32()

        for _ in 0..<tileEntitiesNumber{
            let entity = TileEntity()
            entity.type = try reader.readUInt8()
            entity.id = try reader.readInt32()
            entity.x = try reader.readInt16()
            entity.y = try reader.readInt16()
            switch entity.type{
                case 0: //it is a dummy
                    entity.npc = try reader.readInt16()
                case 1: //it is a item frame
                    entity.netId = try reader.readInt16()
                    entity.prefix = try reader.readUInt8()
                    entity.stackSize = try reader.readInt16()
                case 2: //it is a logic sensor
                    entity.logicCheck = try reader.readUInt8()
                    let on: UInt8 = try reader.readUInt8() //Bool
                    if(on == 1){
                        entity.on = true
                    }else{
                        entity.on = false
                    }
                default:
                    print("Bad tile entity!")
            }
            tileEntitiesArray += [entity]
        }
    }
    
    private func parsePressurePlate() throws {
        let count: Int32 = try reader.readInt32()

        for _ in 0..<count{
            let plates = PressurePlate()
            plates.x = try reader.readInt32()
            plates.y = try reader.readInt32()
            pressurePlatesArray += [plates]
        }
    }
    
    private func parseTownManager() throws{
        let totalRooms: Int32 = try reader.readInt32()
        for _ in 0..<totalRooms{
            let room = TownManager()
            room._npcId = try reader.readInt32()
            room._home = [try reader.readInt32(), try reader.readInt32()]
            
            playerRoomArray += [room]
        }
    }
    
    private func parseFooter() throws{
        let b: UInt8 = try reader.readUInt8()
        print("\(b)")
        if (b == 0){
            throw ParseError.invalidFooterBool
        }

        let string: String = try reader.readStringEncoded(data)
        print("\(string)")
        if (string != mapName){
            throw ParseError.invalidFooterString
        }

        let i: UInt32 = try reader.readUInt32()
        print("\(i)")
        if (i != worldId){
            throw ParseError.invalidFooterInt
        }
    }
    
    private func ReadBitArray() throws{
        do{
            // read the bit data
            var data: UInt8 = 0
            var bitMask: UInt8 = 128
            for i in 0..<(Int(self.importantsCount)){
                // If we read the last bit mask (B1000000 = 0x80 = 128), read the next byte from the stream and start the mask over.
                // Otherwise, keep incrementing the mask to get the next bit.
                if (bitMask != 128)
                {
                    bitMask = bitMask << 1
                }
                else
                {
                    data = try reader.readUInt8()
                    bitMask = 1;
                }

                // Check the mask, if it is set then set the current boolean to true
                if ((data & bitMask) == bitMask)
                {
                    self.importants[i] = true
                }
            }
        }catch{
            throw ParseError.BitArrayError
        }
    }
}
