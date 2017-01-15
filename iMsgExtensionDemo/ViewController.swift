//
//  ViewController.swift
//  iMsgExtensionDemo
//
//  Created by Umar Farooque on 15/01/17.
//  Copyright © 2017 ufocorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.setMovieLabel(_:)), name: NSNotification.Name(rawValue: "movieTitle"), object: nil)
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func setMovieLabel(_ notif:Foundation.Notification)  {
        
        if notif.object != nil {
            
            movieTitleLabel.text = "Title : \((notif.object as! [String:String])["title"]!)"

        }
        
    }

}

