//
//  Sign.swift
//  TerrariaWorldParser
//
//  Created by Quentin Berry on 4/29/20.
//  Copyright © 2020 Quentin Berry. All rights reserved.
//

import Foundation

public class Sign{
    var name: String = ""
    var signId: Int = -1
    var text: String = ""
    var x: Int32 = 0
    var y: Int32 = 0
    
    init(){
        self.text = ""
    }

    init(x: Int32, y: Int32, text: String){
        self.text = text
        self.x = x
        self.y = y
    }
}
