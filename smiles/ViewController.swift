//
//  ViewController.swift
//  smiles
//
//  Created by Gale on 3/23/16.
//  Copyright © 2016 Gale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var trayView: UIView!
    
    var trayCenter: CGFloat?
    var trayCenterOnOpen: CGFloat?
    var trayCenterOnDown: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        trayCenterOnOpen = trayView.center.y
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onTrayPanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        
        // Absolute (x,y) coordinates in parent view's coordinate system
        let point = panGestureRecognizer.locationInView(trayView)
        
        // Total translation (x,y) over time in parent view's coordinate system
        let translation = panGestureRecognizer.translationInView(trayView)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }

}

