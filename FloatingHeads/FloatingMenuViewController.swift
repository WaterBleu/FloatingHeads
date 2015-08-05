//
//  FloatingMenuViewController.swift
//  FloatingHeads
//
//  Created by Jeff Huang on 2015-08-05.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

import UIKit

class FloatingMenuViewController: UIViewController {
    
    enum Direction{
        case Up
        case Left
    }
    
    var fromView: UIView?
    let blurredView = UIVisualEffectView(effect: UIBlurEffect())
    var closeButton:FloatingButton!
    let buttonDirection = Direction.Up
    let buttonPadding = 10 as CGFloat!
    var buttonItems = [FloatingButton]()
    
    init(fromView: UIView){
        super.init(nibName: nil, bundle: nil)
        self.closeButton = FloatingButton(frame: fromView.frame, image: UIImage(named: "icon-close")!, bgColor: UIColor.flatRedColor())
        self.modalPresentationStyle = .OverCurrentContext
        self.modalTransitionStyle = .CoverVertical
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        blurredView.frame = self.view.frame
        self.view.addSubview(blurredView)
        self.view.addSubview(closeButton)
        
        for (index, button) in enumerate(buttonItems) {
            var buttonFrame = button.frame
            var multiplier = index + 1
            buttonFrame.origin.y = buttonFrame.origin.y - (CGFloat(multiplier) * CGFloat(button.frame.size.height + buttonPadding))
            button.frame = buttonFrame
            button.clipsToBounds = true
            button.addTarget(self, action:"buttonAction:", forControlEvents:.TouchUpInside)
            
            var labelName = UILabel()
            labelName.text = button.name
            labelName.sizeToFit()
            labelName.frame.origin.x = button.frame.origin.x - buttonPadding
            labelName.frame.origin.y = buttonFrame.origin.y
            labelName.textAlignment = .Center
            labelName.frame.origin.x = labelName.frame.origin.x - labelName.frame.width
            labelName.frame.origin.y = labelName.frame.origin.y + (buttonFrame.size.height - labelName.frame.size.height)/2
            labelName.textColor = UIColor.darkGrayColor()
            
            self.view.addSubview(button)
            self.view.addSubview(labelName)
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.configureButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissFloatingMenu(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func buttonAction(sender: FloatingButton){
        
    }
    
    func configureButton(){
        let rotateAnimation = CABasicAnimation()
        rotateAnimation.duration = 0.5
        rotateAnimation.additive = true
        rotateAnimation.fromValue = M_PI/180
        rotateAnimation.toValue = 45 * M_PI/180
        
        self.closeButton.layer.addAnimation(rotateAnimation, forKey: "rotateButton")
        self.closeButton.addTarget(self, action:"dismissFloatingMenu:", forControlEvents:.TouchUpInside)
    }

}
