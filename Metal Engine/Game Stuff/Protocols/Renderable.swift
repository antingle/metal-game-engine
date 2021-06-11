//
//  Renderable.swift
//  Metal Engine
//
//  Created by Anthony on 6/10/21.
//

import MetalKit

protocol Renderable {
    func doRender(_ renderCommandEncoder: MTLRenderCommandEncoder)
}
