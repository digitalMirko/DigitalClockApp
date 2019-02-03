//
//  ViewController.swift
//  Digital Clock
//
//  Created by Mirko Cukich on 2/2/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var clockColorSegment: UISegmentedControl!
    @IBOutlet weak var clockBackgroundColorSegment: UISegmentedControl!
    @IBOutlet weak var backgroundImageSegment: UISegmentedControl!
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // repeats every one second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        // removes second delay on startup
        self.updateTimer()
    
    }

    @objc func updateTimer(){
        
        let timeFormatter = DateFormatter()
        
        timeFormatter.timeStyle = .medium
        
        label.text = timeFormatter.string(from: NSDate() as Date)
    }
    
    @IBAction func settingsBtn(_ sender: Any) {
        
    }
    
    @IBAction func clockColor(_ sender: Any) {
        
    }
    
    @IBAction func backgroundColor(_ sender: Any) {
        
    }
    
    @IBAction func backgroundImage(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    

}

