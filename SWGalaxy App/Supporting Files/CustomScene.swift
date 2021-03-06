//
//  CustomScene.swift
//  SWGalaxy App
//
//  Created by Ezra Black on 9/11/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation
import SpriteKit

class CustomScene: SKScene {
    let node = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(node)
        node.loadTextures(named: "MonCalamari", forKey: SKSpriteNode.textureKey)
        node.position = CGPoint(x: frame.midX, y: frame.midY)
        self.scaleMode = SKSceneScaleMode.aspectFill
        
    }
    
    // Move to touch
    //    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    //
    //        // Fetch a touch or leave
    //        guard !touches.isEmpty, let touch = touches.first else { return }
    
    // Retrieve position
    //        let position = touch.location(in: self)
    //
    // Create move action
    //        let actionDuration = 1.0
    //        let moveAction = SKAction.move(to: position, duration: actionDuration)
    //
    //        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
    //        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
    //        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
    
    //        switch Settings.shared.shouldZoom {
    //        case false:
    //            node.run(moveAction)
    //        case true:
    //            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
    //            node.run(sequenceAction)
    //        }
    //
    //        if Settings.shared.shouldRoll {
    //            node.run(rollAction)
    //        }
}

