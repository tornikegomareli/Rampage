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
    public let radius: Double = 0.5
    
    var rect: Rect {
        let halfSize = Vector(x: radius, y: radius)
        return Rect(min: position - halfSize, max: position + halfSize)
    }
    
    public init(position: Vector) {
        self.position = position
        self.velocity = Vector(x: 1, y: 1) // default speeed 1,1
    }
}
