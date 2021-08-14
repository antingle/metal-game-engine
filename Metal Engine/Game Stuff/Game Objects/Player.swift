//
//  Player.swift
//  Metal Engine
//
//  Created by Anthony on 6/10/21.
//

import MetalKit

class Player: GameObject{
    
    init() {
        super.init(meshType: .Triangle_Custom)
    }
    
    override func update(deltaTime: Float) {
        
        self.rotation.z = -atan2f(Mouse.GetMouseViewportPosition().x - position.x,
                                  Mouse.GetMouseViewportPosition().y - position.y)
        
        if (Keyboard.IsKeyPressed(.w)) {
            self.position.y -= deltaTime
        }
        
        if (Keyboard.IsKeyPressed(.a)) {
            self.position.x += deltaTime
        }

        
        if (Keyboard.IsKeyPressed(.s)) {
            self.position.y += deltaTime
        }

        
        if (Keyboard.IsKeyPressed(.d)) {
            self.position.x -= deltaTime
        }

        super.update(deltaTime: deltaTime)
    }
}
