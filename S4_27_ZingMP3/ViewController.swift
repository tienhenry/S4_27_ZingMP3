//
//  ViewController.swift
//  S4_27_ZingMP3
//
//  Created by admin on 9/26/16.
//  Copyright © 2016 tien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var logo: UIImageView!
    
    @IBOutlet var text: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo!.alpha = 0
        text!.alpha = 0
        
    }
    
        override func viewWillAppear(animated: Bool) {
            
            super.viewWillAppear(animated)
            
            UIView.animateWithDuration(4, animations: {
                
                self.logo!.alpha = 1
                
            }) { (finished) in
                
                UIView.animateWithDuration(3, animations: {
                    
                    self.text!.center = CGPointMake(self.logo!.center.x, 100)
                    
                    self.text!.alpha = 1
                    
                })
                
            }
            
        }
   
    }

