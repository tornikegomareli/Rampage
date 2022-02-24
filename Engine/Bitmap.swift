//
//  Bitmap.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

import Foundation

public typealias Colors = [Color]

public struct Bitmap {
    public private(set) var pixels: Colors
    public let width: Int
    
    public init(width: Int, pixels: Colors) {
        self.width = width
        self.pixels = pixels
    }
}

public extension Bitmap {
    var height: Int {
        return pixels.count / width
    }
    
    subscript(x: Int, y: Int) -> Color {
        get { return pixels[y * width + x] }
        set { pixels[y * width + x] = newValue }
    }
    
    init(width: Int, height: Int, color: Color) {
        self.pixels = Array(repeating: color, count: width * height)
        self.width = width
    }
}
