//
//  MetalView.swift
//  Metal Engine
//
//  Created by Anthony on 6/10/21.
//

import MetalKit

class MetalView: MTKView {
    
    var renderer: Renderer!
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        self.device = MTLCreateSystemDefaultDevice()
        
        Engine.Ignite(device: device!)
        
        self.clearColor = Preferences.ClearColor
        self.colorPixelFormat = Preferences.MainPixelFormat
        self.renderer = Renderer()
        self.delegate = renderer
    }
    
    
    // Mouse Input
    
    // Keyboard Input
}
