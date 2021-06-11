//
//  Engine.swift
//  Metal Engine
//
//  Created by Anthony on 6/10/21.
//

import MetalKit

class Engine {
    
    public static var Device: MTLDevice!
    public static var CommandQueue: MTLCommandQueue!
    
    public static func Ignite(device: MTLDevice) {
        self.Device = device
        self.CommandQueue = device.makeCommandQueue()
        
        ShaderLibrary.Initialize()
        VertexDescriptorLibrary.Initialize()
        RenderPipelineDescriptorLibrary.Initialize()
        RenderPipelineStateLibary.Initialize()
        MeshLibrary.Initialize()
    }
    
}
