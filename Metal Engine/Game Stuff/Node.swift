//
//  Node.swift
//  Metal Engine
//
//  Created by Anthony on 6/10/21.
//

import MetalKit

class Node {
 
    func render(renderCommandEncoder: MTLRenderCommandEncoder) {
        if let renderable = self as? Renderable {
            renderable.doRender(renderCommandEncoder)
        }
    }
}
        
