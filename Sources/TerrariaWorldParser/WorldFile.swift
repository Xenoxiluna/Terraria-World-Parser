//
//  World.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/19/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation
import BinarySwift

public class WorldFile{
    private let nsData: Data
    private let data: BinaryData
    private let reader: BinaryDataReader
    
    public var version: UInt32 = 0
    public var magicNumber: String = ""
    public var fileType: FileType = FileType.None
    public var revision: UInt32 = 0
    public var favorite: UInt8 = 0
    public var pointersCount: Int16 = 0
    public var pointers: [Int32] = []
    public var importantsCount: UInt16 = 0
    public var importants: [Bool] = []
    
    public var mapName: String = ""
    public var seedText: String = ""
    public var worldGeneratorVersion: UInt64 = 0
    public var guid: [UInt8] = []
    public var worldId: Int32 = 0
    public var leftWorld: Int32 = 0
    public var rightWorld: Int32 = 0
    public var topWorld: Int32 = 0
    public var bottomWorld: Int32 = 0
    public var maxTilesY: Int32 = 0
    public var maxTilesX: Int32 = 0
    public var expertMode: UInt8 = 0
    public var creationTime: Int64 = 0
    public var moonType: UInt8 = 0
    public var treeX: [Int32] = []
    public var treeStyle: [Int32] = []
    public var caveBackX: [Int32] = []
    public var caveBackStyle: [Int32] = []
    public var iceBackStyle: Int32 = 0
    public var jungleBackStyle: Int32 = 0
    public var hellBackStyle: Int32 = 0
    public var spawnTileX: Int32 = 0
    public var spawnTileY: Int32 = 0
    public var worldSurface: Float64 = 0.0
    public var rockLayer: Float64 = 0
    public var tempTime: Float64 = 0
    public var tempDayTime: UInt8 = 0
    public var tempMoonPhase: Int32 = 0
    public var tempBloodMoon: UInt8 = 0
    public var tempEclipse: UInt8 = 0
    public var dungeonX: Int32 = 0
    public var dungeonY: Int32 = 0
    public var crimson: UInt8 = 0
    public var downedBoss1: UInt8 = 0
    public var downedBoss2: UInt8 = 0
    public var downedBoss3: UInt8 = 0
    public var downedQueenBee: UInt8 = 0
    public var downedMechBoss1: UInt8 = 0
    public var downedMechBoss2: UInt8 = 0
    public var downedMechBoss3: UInt8 = 0
    public var downedMechBossAny: UInt8 = 0
    public var downedPlantBoss: UInt8 = 0
    public var downedGolemBoss: UInt8 = 0
    public var downedSlimeKing: UInt8 = 0
    public var savedGoblin: UInt8 = 0
    public var savedWizard: UInt8 = 0
    public var savedMech: UInt8 = 0
    public var downedGoblins: UInt8 = 0
    public var downedClown: UInt8 = 0
    public var downedFrost: UInt8 = 0
    public var downedPirates: UInt8 = 0
    public var shadowOrbSmashed: UInt8 = 0
    public var spawnMeteor: UInt8 = 0
    public var shadowOrbCount: UInt8 = 0
    public var altarCount: Int32 = 0
    public var hardMode: UInt8 = 0
    public var invasionDelay: Int32 = 0
    public var invasionSize: Int32 = 0
    public var invasionType: Int32 = 0
    public var invasionX: Float64 = 0
    public var slimeRainTime: Float64 = 0
    public var sundialCooldown: UInt8 = 0
    public var tempRaining: UInt8 = 0
    public var tempRainTime: Int32 = 0
    public var tempMaxRain: Float32 = 0
    public var oreTier1: Int32 = 0
    public var oreTier2: Int32 = 0
    public var oreTier3: Int32 = 0
    public var setBG0: UInt8 = 0
    public var setBG1: UInt8 = 0
    public var setBG2: UInt8 = 0
    public var setBG3: UInt8 = 0
    public var setBG4: UInt8 = 0
    public var setBG5: UInt8 = 0
    public var setBG6: UInt8 = 0
    public var setBG7: UInt8 = 0
    public var cloudBGActive: Int32 = 0
    public var numClouds: Int16 = 0
    public var windSpeed: Float32 = 0
    public var anglerWhoFinishedToday: [String] = []
    public var savedAngler: UInt8 = 0
    public var anglerQuest: Int32 = 0
    public var savedStylist: UInt8 = 0
    public var savedTaxCollector: UInt8 = 0
    public var invasionSizeStart: Int32 = 0
    public var tempCultistDelay: Int32 = 0
    public var killCount: [Int32] = []
    public var fastForwardTime: UInt8 = 0
    public var downedFishron: UInt8 = 0
    public var downedMartians: UInt8 = 0
    public var downedAncientCultist: UInt8 = 0
    public var downedMoonlord: UInt8 = 0
    public var downedHalloweenKing: UInt8 = 0
    public var downedHalloweenTree: UInt8 = 0
    public var downedChristmasIceQueen: UInt8 = 0
    public var downedChristmasSantank: UInt8 = 0
    public var downedChristmasTree: UInt8 = 0
    public var downedTowerSolar: UInt8 = 0
    public var downedTowerVortex: UInt8 = 0
    public var downedTowerNebula: UInt8 = 0
    public var downedTowerStardust: UInt8 = 0
    public var TowerActiveSolar: UInt8 = 0
    public var TowerActiveVortex: UInt8 = 0
    public var TowerActiveNebula: UInt8 = 0
    public var TowerActiveStardust: UInt8 = 0
    public var LunarApocalypseIsUp: UInt8 = 0
    public var tempPartyManual: UInt8 = 0
    public var tempPartyGenuine: UInt8 = 0
    public var tempPartyCooldown: Int32 = 0
    public var tempPartyCelebratingNPCs: [Int32] = []
    public var Temp_Sandstorm_Happening: UInt8 = 0
    public var Temp_Sandstorm_TimeLeft: Int32 = 0
    public var Temp_Sandstorm_Severity: Float32 = 0
    public var Temp_Sandstorm_IntendedSeverity: Float32 = 0
    public var savedBartender: UInt8 = 0
    public var DD2Event_DownedInvasionT1: UInt8 = 0
    public var DD2Event_DownedInvasionT2: UInt8 = 0
    public var DD2Event_DownedInvasionT3: UInt8 = 0
    
    public var tileDataArray: [[Tile]] = []
    public var chestDataArray: [Chest] = []
    public var signDataArray: [Sign] = []
    public var NPCDataArray: [NPC] = []
    public var mobDataArray: [NPC] = []
    public var playerRoomArray: [TownManager] = []
    public var tileEntitiesNumber: Int32 = 0
    public var tileEntitiesArray: [TileEntity] = []
    public var pressurePlatesArray: [PressurePlate] = []
    
    public init(path: String) {
        do{
            self.nsData = try Data(contentsOf: URL(fileURLWithPath: path))
            self.data = BinaryData(data: nsData)
            self.reader = BinaryDataReader(data)
        }catch{
            print("Failed")
            self.nsData = Data()
            self.data = BinaryData()
            self.reader = BinaryDataReader(data)
        }
    }
    
    public func parseWorldFile() throws {
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
        self.version = try reader.read(false)
        self.magicNumber = try reader.readUTF8(7)
        self.fileType = FileType.init(rawValue: try reader.read(false))!
        self.revision = try reader.read(false)
        let _ = try reader.readUTF8(7)
        self.favorite = try reader.read(false)
        self.pointersCount = try reader.read(false)
        self.pointers = [Int32](repeating: 0, count: Int(self.pointersCount))

        for i in 0..<Int(self.pointersCount){
            self.pointers[i] += try reader.read(false)
        }

        self.importantsCount = try reader.read(false)
        self.importants = [Bool](repeating: false, count: Int(self.importantsCount))
        
        try ReadBitArray()
    }

    private func parseHeader() throws{
        do{
            self.mapName = try reader.readNullTerminatedUTF8NoTrail(data: data)
            self.seedText = try reader.readNullTerminatedUTF8NoTrail(data: data)
            let mapArr = self.mapName.components(separatedBy: "\n")
            if(mapArr.count > 1){
                self.mapName = mapArr[0]
                if(!(self.seedText.count > 0)){
                    self.seedText = mapArr[1]
                }
            }else{
                var _ = try reader.readNullTerminatedUTF8()
                var _ = try reader.readNullTerminatedUTF8()
            }
        }catch{
            print("Failed first Parse")
        }
        
        self.worldGeneratorVersion = try reader.read(false)
        self.guid = (try reader.read(15)).data // 16 maybe?
        self.worldId = try reader.read(false)
        self.leftWorld = try reader.read(false)
        self.rightWorld = try reader.read(false)
        self.topWorld = try reader.read(false)
        self.bottomWorld = try reader.read(false)
        self.maxTilesY = try reader.read(false)
        self.maxTilesX = try reader.read(false)

        self.expertMode = try reader.read(false)
        self.creationTime = try reader.read(false)
        self.moonType = try reader.read(false)

        self.treeX = [Int32](repeating: 0, count: 3)
        self.treeX[0] = try reader.read(false)
        self.treeX[1] = try reader.read(false)
        self.treeX[2] = try reader.read(false)

        self.treeStyle = [Int32](repeating: 0, count: 4)
        self.treeStyle[0] = try reader.read(false)
        self.treeStyle[1] = try reader.read(false)
        self.treeStyle[2] = try reader.read(false)
        self.treeStyle[3] = try reader.read(false)

        self.caveBackX = [Int32](repeating: 0, count: 3)
        self.caveBackX[0] = try reader.read(false)
        self.caveBackX[1] = try reader.read(false)
        self.caveBackX[2] = try reader.read(false)

        self.caveBackStyle = [Int32](repeating: 0, count: 4)
        self.caveBackStyle[0] = try reader.read(false)
        self.caveBackStyle[1] = try reader.read(false)
        self.caveBackStyle[2] = try reader.read(false)
        self.caveBackStyle[3] = try reader.read(false)

        self.iceBackStyle = try reader.read(false)
        self.jungleBackStyle = try reader.read(false)
        self.hellBackStyle = try reader.read(false)
        self.spawnTileX = try reader.read(false)
        self.spawnTileY = try reader.read(false)
        self.worldSurface = try reader.read()
        self.rockLayer = try reader.read()
        self.tempTime = try reader.read()
        self.tempDayTime = try reader.read(false)
        self.tempMoonPhase = try reader.read(false)
        self.tempBloodMoon = try reader.read(false)
        self.tempEclipse = try reader.read(false)
        self.dungeonX = try reader.read(false)
        self.dungeonY = try reader.read(false)
        self.crimson = try reader.read(false)
        self.downedBoss1 = try reader.read(false)
        self.downedBoss2 = try reader.read(false)
        self.downedBoss3 = try reader.read(false)
        self.downedQueenBee = try reader.read(false)
        self.downedMechBoss1 = try reader.read(false)
        self.downedMechBoss2 = try reader.read(false)
        self.downedMechBoss3 = try reader.read(false)
        self.downedMechBossAny = try reader.read(false)
        self.downedPlantBoss = try reader.read(false)
        self.downedGolemBoss = try reader.read(false)
        self.downedSlimeKing = try reader.read(false)
        self.savedGoblin = try reader.read(false)
        self.savedWizard = try reader.read(false)
        self.savedMech = try reader.read(false)
        self.downedGoblins = try reader.read(false)
        self.downedClown = try reader.read(false)
        self.downedFrost = try reader.read(false)
        self.downedPirates = try reader.read(false)
        self.shadowOrbSmashed = try reader.read(false)
        self.spawnMeteor = try reader.read(false)
        self.shadowOrbCount = try reader.read(false)
        self.altarCount = try reader.read(false)
        self.hardMode = try reader.read(false)
        self.invasionDelay = try reader.read(false)
        self.invasionSize = try reader.read(false)
        self.invasionType = try reader.read(false)
        self.invasionX = try reader.read()
        self.slimeRainTime = try reader.read()
        self.sundialCooldown = try reader.read(false)
        self.tempRaining = try reader.read(false)
        self.tempRainTime = try reader.read(false)
        self.tempMaxRain = try reader.read()
        self.oreTier1 = try reader.read(false)
        self.oreTier2 = try reader.read(false)
        self.oreTier3 = try reader.read(false)
        self.setBG0 = try reader.read(false)
        self.setBG1 = try reader.read(false)
        self.setBG2 = try reader.read(false)
        self.setBG3 = try reader.read(false)
        self.setBG4 = try reader.read(false)
        self.setBG5 = try reader.read(false)
        self.setBG6 = try reader.read(false)
        self.setBG7 = try reader.read(false)
        self.cloudBGActive = try reader.read(false)
        self.numClouds = try reader.read(false)
        self.windSpeed = try reader.read()

        self.anglerWhoFinishedToday = []
        let anglerCount: Int32 = try reader.read(false)
        for _ in 0..<anglerCount{
            anglerWhoFinishedToday += [try reader.readNullTerminatedUTF8()]
        }
        
        self.savedAngler = try reader.read(false)
        self.anglerQuest = try reader.read(false)
        self.savedStylist = try reader.read(false)
        self.savedTaxCollector = try reader.read(false)
        self.invasionSizeStart = try reader.read(false)
        self.tempCultistDelay = try reader.read(false)

        let numberOfMobs: Int16 = try reader.read(false)
        self.killCount = [Int32](repeating: 0, count: Int(numberOfMobs))
        for _ in 0..<Int(numberOfMobs) {
            self.killCount += [try reader.read(false)]
        }

        self.fastForwardTime = try reader.read(false)
        self.downedFishron = try reader.read(false)
        self.downedMartians = try reader.read(false)
        self.downedAncientCultist = try reader.read(false)
        self.downedMoonlord = try reader.read(false)
        self.downedHalloweenKing = try reader.read(false)
        self.downedHalloweenTree = try reader.read(false)
        self.downedChristmasIceQueen = try reader.read(false)
        self.downedChristmasSantank = try reader.read(false)
        self.downedChristmasTree = try reader.read(false)
        self.downedTowerSolar = try reader.read(false)
        self.downedTowerVortex = try reader.read(false)
        self.downedTowerNebula = try reader.read(false)
        self.downedTowerStardust = try reader.read(false)
        self.TowerActiveSolar = try reader.read(false)
        self.TowerActiveVortex = try reader.read(false)
        self.TowerActiveNebula = try reader.read(false)
        self.TowerActiveStardust = try reader.read(false)
        self.LunarApocalypseIsUp = try reader.read(false)
        self.tempPartyManual = try reader.read(false)
        self.tempPartyGenuine = try reader.read(false)
        self.tempPartyCooldown = try reader.read(false)

        let numparty: Int32 = try reader.read(false)
        self.tempPartyCelebratingNPCs = [Int32](repeating: 0, count: Int(numparty))
        for _ in 0..<(Int(numparty)) {
            self.tempPartyCelebratingNPCs.append(try reader.read(false))
        }

        self.Temp_Sandstorm_Happening = try reader.read(false)
        self.Temp_Sandstorm_TimeLeft = try reader.read(false)
        self.Temp_Sandstorm_Severity = try reader.read()
        self.Temp_Sandstorm_IntendedSeverity = try reader.read()
        self.savedBartender = try reader.read(false)
        self.DD2Event_DownedInvasionT1 = try reader.read(false)
        self.DD2Event_DownedInvasionT2 = try reader.read(false)
        self.DD2Event_DownedInvasionT3 = try reader.read(false)
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
        let header1: UInt8 = try reader.read(false)
        
        // check bit[0] header2 data
        if ((header1 & 1) == 1){
            header2 = try reader.read(false)

            // check bit[0] header3 data
            if ((header2 & 1) == 1){
                header3 = try reader.read(false)
            }
        }
        
        // check bit[1] for active tile
        if ((header1 & 2) == 2){
            tile.IsActive = true

            // read tile type
            if ((header1 & 32) != 32){ // check bit[5] to see if tile is byte or little endian int16
                // if tile is UInt8
                let tempType: UInt8 = try reader.read(false)
                tileType = UInt16(tempType)
            }else{
                 tileType = try reader.read(false)
            }
            tile.tileType = tileType

            // read UV coords
            if (!(self.importants[Int(tileType)])){
                tile.u = -1
                tile.v = -1
            }else{
                tile.u = try reader.read(false)
                tile.v = try reader.read(false)
            }

            // check header3 bit[3] tile color
            if ((header3 & 8) == 8){
                tile.TileColor = try reader.read(false)
            }
        }

        // Read Walls
        if ((header1 & 4) == 4) {// check bit[3] bit for active wall
            tile.Wall = try reader.read(false)
            // check bit[4] of header3 for wall color
            if ((header3 & 16) == 16){
                tile.WallColor = try reader.read(false)
            }
        }

        // check if liquid present
        // bit[3] and bit[4], shift to 0 and 1 bits
        let liquidType: UInt8 = (header1 & 24) >> 3
        if (liquidType != 0){
            tile.LiquidAmount = try reader.read(false)
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
                let tempRLE: UInt8 = try reader.read(false)
                rle = UInt16(tempRLE) + 1
            case 2:
                rle = try reader.read(false) + 1
            default:
                throw ParseError.RLECompressionError
        }
        return tile
    }
    
    private func parseChestData() throws {
        let totalChests: Int16 = try reader.read(false)
        let maxItems: Int16 = try reader.read(false)

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
                x: try reader.read(false), //Int32
                y: try reader.read(false), //Int32
                name: try reader.readNullTerminatedUTF8() //String
            )

            // read items in chest
            for slot in 0..<itemsPerChest{
                let stackSize: Int16 = try reader.read(false)
                chest.items[slot].stackSize = stackSize

                if (stackSize > 0){
                    let id: Int32 = try reader.read(false)
                    let prefix: UInt8 = try reader.read(false)

                    chest.items[slot].netId = id
                    chest.items[slot].stackSize = stackSize
                    chest.items[slot].prefix = prefix
                }
            }

            // dump overflow items
            for _ in 0..<overflowItems{
                let stackSize: Int16 = try reader.read(false)
                if (stackSize > 0){
                    let _: Int32 = try reader.read(false)
                    let _: UInt8 = try reader.read(false)
                }
            }
            chestDataArray += [chest]
        }
    }
    
    private func parseSignData() throws{
        let totalSigns: Int16 = try reader.read(false)

        for _ in 0..<totalSigns{
            let text: String = try reader.readNullTerminatedUTF8() //String
            let x: Int32 = try reader.read(false)
            let y: Int32 = try reader.read(false)
            
            let sign = Sign(x: x, y: y, text: text)
            signDataArray += [sign]
        }
    }
    
    private func parseNPCData() throws{
        var b: UInt8 = try reader.read(false)
        while b == 1{
            let npc = NPC()
            npc.spriteId = try reader.read(false)
            
            npc.name = try reader.readNullTerminatedASCII(data)
            npc.position = [try reader.read(), try reader.read()]
            
            let isHomeless: UInt8 = try reader.read(false) //Bool
            if(isHomeless == 1){
                npc.isHomeless = true
            }else{
                npc.isHomeless = false
            }
            
            npc.home = [try reader.read(false), try reader.read(false)]

            NPCDataArray += [npc]
            
            b = try reader.read(false)
        }
    }
    
    private func parseMobData() throws {
        print("\(self.reader.readIndex)")
        
        var b: UInt8 = try reader.read(false)
        while b == 1{
            let npc = NPC()
            npc.spriteId = try reader.read(false)
            npc.position = [try reader.read(), try reader.read()]

            mobDataArray += [npc]
            
            b = try reader.read(false)
        }
    }
    
    private func parseTileEntities() throws {
        self.tileEntitiesNumber = try reader.read(false)

        for _ in 0..<tileEntitiesNumber{
            let entity = TileEntity()
            entity.type = try reader.read(false)
            entity.id = try reader.read(false)
            entity.x = try reader.read(false)
            entity.y = try reader.read(false)
            switch entity.type{
                case 0: //it is a dummy
                    entity.npc = try reader.read(false)
                case 1: //it is a item frame
                    entity.netId = try reader.read(false)
                    entity.prefix = try reader.read(false)
                    entity.stackSize = try reader.read(false)
                case 2: //it is a logic sensor
                    entity.logicCheck = try reader.read(false)
                    let on: UInt8 = try reader.read(false) //Bool
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
        let count: Int32 = try reader.read(false)

        for _ in 0..<count{
            let plates = PressurePlate()
            plates.x = try reader.read(false)
            plates.y = try reader.read(false)
            pressurePlatesArray += [plates]
        }
    }
    
    private func parseTownManager() throws{
        let totalRooms: Int32 = try reader.read(false)
        for _ in 0..<totalRooms{
            let room = TownManager()
            room._npcId = try reader.read(false)
            room._home = [try reader.read(false), try reader.read(false)]
            
            playerRoomArray += [room]
        }
    }
    
    private func parseFooter() throws{
        let b: UInt8 = try reader.read(false)
        print("\(b)")
        if (b == 0){
            throw ParseError.invalidFooterBool
        }

        let string: String = try reader.readNullTerminatedASCII(data)
        print("\(string)")
        if (string != mapName){
            throw ParseError.invalidFooterString
        }

        let i: Int32 = try reader.read(false)
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
                    data = try reader.read(false)
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
