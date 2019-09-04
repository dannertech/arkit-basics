//
//  ViewController.swift
//  ARKitBasics
//
//  Created by Diamonique Danner on 8/29/19.
//  Copyright © 2019 Danner Op., LLC. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController, ARSCNViewDelegate, ARSessionDelegate {
    
   
    
    
    @IBAction func addButton(_ sender: Any) {
        
         let node = SCNNode()
        
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 5)
        
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.cyan
        
        node.position = SCNVector3(0,0,0)
        
        sceneView.scene.rootNode.addChildNode(node)
    }
    @IBOutlet var sceneView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let configuration = ARWorldTrackingConfiguration()
        
        configuration.planeDetection = [.horizontal]
        
        sceneView.session.run(configuration)
    }


}

