//
//  WhackSlot.swift
//  Whack-a-Penguin
//
//  Created by Alex on 6/18/16.
//  Copyright © 2016 Alex Barcenas. All rights reserved.
//

import SpriteKit
import UIKit

class WhackSlot: SKNode {
    // The node for the peguin.
    var charNode: SKSpriteNode!
    
    /*
     * Function Name: configureAtPosition
     * Parameters: pos - the position that the WhackSlot will be placed.
     * Purpose: This method creates a WhackSlot at the specified position that is passed to the method and
     *   also creates a peguin for the slot as well.
     * Return Value: None
     */
    
    func configureAtPosition(pos: CGPoint) {
        position = pos
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
        let cropNode = SKCropNode()
        cropNode.position = CGPoint(x: 0, y: 15)
        cropNode.zPosition = 1
        cropNode.maskNode = SKSpriteNode(imageNamed: "whackMask")
        
        charNode = SKSpriteNode(imageNamed: "penguinGood")
        charNode.position = CGPoint(x: 0, y: -90)
        charNode.name = "character"
        cropNode.addChild(charNode)
        
        addChild(cropNode)
    }
}
