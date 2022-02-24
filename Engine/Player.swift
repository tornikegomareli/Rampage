//
//  Player.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

import Foundation

public struct Player {
    public var position: Vector // Just a position in 2D world
    public var velocity: Vector // Velocity combines the speed of an object which is moving
    
    public init(position: Vector) {
        self.position = position
        self.velocity = Vector(x: 1, y: 1) // default speeed 1,1
    }
}
