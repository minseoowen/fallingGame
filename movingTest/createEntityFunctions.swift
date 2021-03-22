//
//  creatingHostileCloudNonStop.swift
//  movingTest
//
//  Created by Minseo Kim on 2/24/21.
//

import Foundation
import SpriteKit

protocol createEntityFunctions: SKScene {}

extension createEntityFunctions {
    
    func HostileCloud() {
        
        thunderCloud = hostileCloud(size: CGSize(width: self.frame.width, height: self.frame.height))
        
        let hostilecloud = thunderCloud

        hostilecloud.timeToGoUp = speedForHostile
        hostilecloud.spawnDelay = hostileCloudSpawnDelay
        
        func addHostile() {
            addChild(hostilecloud.createHostileCloud().0)
        }

        let delay =  hostilecloud.createHostileCloud().1
        let spawnH = SKAction.run(addHostile)

        let sequenceH = SKAction.sequence([spawnH,delay])
        let repeatingHostileCloudProduction = SKAction.repeatForever(sequenceH)
        self.run(repeatingHostileCloudProduction)
        
      
        
    }
    
    func Cloud() {
        
        let Cloud = cloud(size: CGSize(width: self.frame.width, height: self.frame.height))
        func addCloud() {
            addChild(Cloud.createCloud())
        }
       
        
            let spawnCloud = SKAction.run(addCloud)
            let delayCloud = SKAction.wait(forDuration: 3)
            let sequenceCloud = SKAction.sequence([spawnCloud,delayCloud])
            let repeatingCloudProduction = SKAction.repeatForever(sequenceCloud)
            self.run(repeatingCloudProduction)
       
        
    }
    
    func Bomb() {
        
        let Bomb = bomb(size: CGSize(width: self.frame.width, height: self.frame.height))
        
        func addBomb() {
            addChild(Bomb.createBomb())
        }
        
        let spawnBomb = SKAction.run(addBomb)
        let delayBomb = SKAction.wait(forDuration: 50)
        let sequenceBomb = SKAction.sequence([spawnBomb,delayBomb])
        let repeatingBombProduction = SKAction.repeatForever(sequenceBomb)
        self.run(repeatingBombProduction)
        
    }
    
    func HealthBottle() {
        
        let healthbottle = healthBottle(size: CGSize(width: self.frame.width, height: self.frame.height))
        
        func addBottle() {
            addChild(healthbottle.createHealthBottle())
        }
        
        let spawnHealth = SKAction.run(addBottle)
        let delayHealth = SKAction.wait(forDuration: 20)
        let sequenceHealth = SKAction.sequence([spawnHealth,delayHealth])
        let repeatingHelathBottleReproduction = SKAction.repeatForever(sequenceHealth)
        self.run(repeatingHelathBottleReproduction)
        
    }
    
    func StartButton() {
        
        let StartingButton = startingButton(size: CGSize(width: self.frame.width, height: self.frame.height))
        func startButtonCreate() { addChild(StartingButton.createButton()) }
        let creatingStart = SKAction.run(startButtonCreate)
        self.run(creatingStart)
        
    }
    
    func RestartButton() {
        
        let RestartButton = restartButton(size: CGSize(width: self.frame.width, height: self.frame.height))
        func addRestartButton() { addChild(RestartButton.createRestartButton()) }
        let AddRestart = SKAction.run(addRestartButton)
        self.run(AddRestart)
        
    }
    
}


