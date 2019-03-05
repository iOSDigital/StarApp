//
//  ViewController.swift
//  StarApp
//
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override var prefersStatusBarHidden: Bool {
		return true
	}
	
	
	@IBAction func buttonPressed(_ sender: UIButton) {
		let tag: Int = sender.tag
		animateButton(sender: self.view.viewWithTag(tag)!)
		
		for index in 1...5 {
			let button = self.view.viewWithTag(index) as! UIButton
			button.isSelected = tag >= index
		}
	}
	
	@IBAction func resetButtons(_ sender: UIButton) {
		for index in 1...5 {
			let button = self.view.viewWithTag(index) as! UIButton
			button.isSelected = false
		}
	}
	
	
	func animateButton(sender: UIView) {
		sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
		UIView.animate(withDuration: 1.0,
					   delay: 0,
					   usingSpringWithDamping: CGFloat(0.20),
					   initialSpringVelocity: CGFloat(6.0),
					   options: UIView.AnimationOptions.allowUserInteraction,
					   animations: { sender.transform = CGAffineTransform.identity },
					   completion: { Void in() })
	}
	
	

}

