//
//  BinarySwiftExtensions.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/28/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation
import BinarySwift

/**
 `NOTE`: These functions are `NOT SAFE` and are `DEFINITELY` not ideal!
 */
extension BinaryData{
    public func getNullTerminatedASCII(_ offset: Int) throws -> String {
        let stringLength = try get7BitEncodedInt(offset)
        let bytes = try subData(offset, stringLength + 1).data
      
        return String(bytes: bytes, encoding: .ascii)!
    }
    func get7BitEncodedInt(_ offset: Int) throws -> Int {
        // Read out an Int32 7 bits at a time.  The high bit
        // of the byte when on means to continue reading more bytes.
        var mutatingOffset = offset
        var count: Int = 0
        var shift: Int = 0
        var b: UInt8
        repeat {
            // Check for a corrupted stream.  Read a max of 5 bytes.
            // In a future version, add a DataFormatException.
            if (shift == 5 * 7){  // 5 bytes max per Int32, shift += 7
                throw BinaryDataErrors.notEnoughData
            }

            // ReadByte handles end of stream cases for us.
            b = try get(mutatingOffset)
            count |= Int(b & 0x7F) << shift
            shift += 7
            mutatingOffset += 1
        } while ((b & 0x80) != 0)
        return count
    }
}

extension BinaryDataReader{
    open func readNullTerminatedUTF8NoTrail(data: BinaryData) throws -> String {
      let string = try data.getNullTerminatedUTF8(readIndex)
      let _: BinaryData = try self.read(string.utf8.count)
      return string
    }
    open func readNullTerminatedASCII(_ data: BinaryData) throws -> String {
      let string = try data.getNullTerminatedASCII(readIndex)
      let _: BinaryData = try self.read(string.utf8.count)
      return string
    }
}
