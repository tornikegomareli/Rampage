//
//  World.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

import Foundation

public struct World {
    public let size: Vector
    public var player: Player
    
    public init() {
        self.size = Vector(x: 8, y: 8)
        self.player = Player(position: Vector(x: 4, y: 4))
    }
}

