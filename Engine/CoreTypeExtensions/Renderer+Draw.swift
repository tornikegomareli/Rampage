//
//  Renderer+Draw.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

import Foundation

public extension Renderer {
    mutating func draw(_ world: World) {
        let scale = Double(bitmap.height) / world.size.y
        
        // Draw player with real rectangle
        var rect = world.player.rect
        rect.min *= scale
        rect.max *= scale
        bitmap.fill(rect: rect, color: .blue)
    }
}
