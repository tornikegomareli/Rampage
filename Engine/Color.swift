//
//  Color.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

public struct Color {
    public var r,g,b,a: UInt8
    
    public init(r: UInt8, g: UInt8, b: UInt8, a: UInt8 = 255) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
}
