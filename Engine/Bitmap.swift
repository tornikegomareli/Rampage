//
//  Bitmap.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

public typealias Colors = [Color]

public struct Bitmap {
    public internal(set) var pixels: Colors
    public let width: Int
    
    public init(width: Int, pixels: Colors) {
        self.width = width
        self.pixels = pixels
    }
}
