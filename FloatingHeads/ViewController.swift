//
//  ViewController.swift
//  FloatingHeads
//
//  Created by Jeff Huang on 2015-08-05.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func presentFloatingMenu(sender: UIButton) {
        var fmVC = FloatingMenuViewController(fromView: sender)
        self.populateButton(fmVC, sender: sender)
        
        self.presentViewController(fmVC, animated: true, completion: nil)
    }
    
    func populateButton(fmVC: FloatingMenuViewController ,sender: UIButton){
        var button = FloatingButton(frame: sender.frame, image: UIImage(named: "icon-add")!, bgColor: UIColor.flatBlueColor(), name: "New Contact")
        fmVC.buttonItems.append(button)
        
        button = FloatingButton(frame: sender.frame, image: UIImage(named: "model-004")!, bgColor: UIColor.flatBlueColor(), name: "Person 1")
        fmVC.buttonItems.append(button)
        
        button = FloatingButton(frame: sender.frame, image: UIImage(named: "model-005")!, bgColor: UIColor.flatBlueColor(), name: "Person 2")
        fmVC.buttonItems.append(button)
        
        button = FloatingButton(frame: sender.frame, image: UIImage(named: "model-006")!, bgColor: UIColor.flatBlueColor(), name: "Person 3")
        fmVC.buttonItems.append(button)
        
        button = FloatingButton(frame: sender.frame, image: UIImage(named: "model-007")!, bgColor: UIColor.flatBlueColor(), name: "Person 4")
        fmVC.buttonItems.append(button)
        
        button = FloatingButton(frame: sender.frame, image: UIImage(named: "model-008")!, bgColor: UIColor.flatBlueColor(), name: "Person 5")
        fmVC.buttonItems.append(button)
    }


}

