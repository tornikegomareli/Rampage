//
//  World+Update.swift
//  Engine
//
//  Created by Tornike Gomareli on 24.02.22.
//

public extension World {
    mutating func update(timeStep: Double) {
        // We dont need to hard code for 60 FPS because
        // it ties us to 60 FPS, when we might decide that we actually want
        // to run at 30 FPS on older devices (or 120 FPS on newer ones) without
        // it affecting the speed at which objects move.
        player.position += player.velocity * timeStep // The value for timeStep will need to be provided by the platform layer.
        player.position.x.formTruncatingRemainder(dividingBy: size.x)
        player.position.y.formTruncatingRemainder(dividingBy: size.y)
    }
}
