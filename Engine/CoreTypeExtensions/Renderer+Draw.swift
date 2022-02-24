//
//  Renderer+Draw.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

import Foundation

public extension Renderer {
    mutating func draw(_ player: Player) {
        bitmap[Int(player.position.x), Int(player.position.y)] = .blue
    }
}
