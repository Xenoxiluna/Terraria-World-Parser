//
//  Sign.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class Sign{
    public var name: String = ""
    public var signId: Int = -1
    public var text: String = ""
    public var x: Int32 = 0
    public var y: Int32 = 0
    
    public init(){
        self.text = ""
    }

    public init(x: Int32, y: Int32, text: String){
        self.text = text
        self.x = x
        self.y = y
    }
}
