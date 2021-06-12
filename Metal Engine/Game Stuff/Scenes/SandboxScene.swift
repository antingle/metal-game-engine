//
//  Sandbox.swift
//  Metal Engine
//
//  Created by Anthony on 6/12/21.
//

import MetalKit

class SandboxScene: Scene {
    
    
    override func buildScene() {
        for y in -5..<5 {
            for x in -5..<5 {
                let player = Player()
                player.position.y = Float(Float(y) + 0.5) / 5
                player.position.x = Float(Float(x) + 0.5) / 5
                player.scale = simd_float3(repeating: 0.1)
                addChild(player)
            }
        }
    }
    
    var time: Float = 0;
    override func update(deltaTime: Float) {
        time += deltaTime
        for child in children {
            child.rotation.z = sin(time)
        }
        print(time)
        super.update(deltaTime: deltaTime)
    }
}
