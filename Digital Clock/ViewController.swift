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
        
        // settingsView - hidden unless called upon
        settingsView.isHidden = true
        
        // rounded edges in settingsView
        settingsView.layer.cornerRadius = 5
    
        // rounded edges in settingsView button
        settingsButton.layer.cornerRadius = 5
    }

    @objc func updateTimer(){
        
        let timeFormatter = DateFormatter()
        
        timeFormatter.timeStyle = .medium
        
        label.text = timeFormatter.string(from: NSDate() as Date)
    }
    // used for showing and dismissing the view
    @IBAction func settingsBtn(_ sender: Any) {
        if settingsView.isHidden == true {
            settingsView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: UIControl.State.normal)
            settingsButton.alpha = 1.0
        } else {
            settingsView.isHidden = true
            settingsButton.setTitle("Show Settings", for: UIControl.State.normal)
            settingsButton.alpha = 0.25
        }
    }
    
    @IBAction func clockColor(_ sender: Any) {
        // default color is white
        if (clockColorSegment.selectedSegmentIndex == 0){
            label.textColor = UIColor.white
        }
        if (clockColorSegment.selectedSegmentIndex == 1){
            label.textColor = UIColor.black
        }
        if (clockColorSegment.selectedSegmentIndex == 2){
            label.textColor = UIColor.red
        }
        if (clockColorSegment.selectedSegmentIndex == 3){
            label.textColor = UIColor.green
        }
    }
    
    @IBAction func backgroundColor(_ sender: Any) {
        if(clockBackgroundColorSegment.selectedSegmentIndex == 0){
            self.view.backgroundColor = UIColor.black
        }
        if(clockBackgroundColorSegment.selectedSegmentIndex == 1){
            self.view.backgroundColor = UIColor.white
        }
        if(clockBackgroundColorSegment.selectedSegmentIndex == 2){
            self.view.backgroundColor = UIColor.yellow
        }
        if(clockBackgroundColorSegment.selectedSegmentIndex == 3){
            self.view.backgroundColor = UIColor.blue
        }
        // it hides the background image when working in this segment
        backgroundImageView.isHidden = true
    }
    
    @IBAction func backgroundImage(_ sender: Any) {
        if(backgroundImageSegment.selectedSegmentIndex == 0) {
            backgroundImageView.image = UIImage(named: "Background1")
        }
        if(backgroundImageSegment.selectedSegmentIndex == 1) {
            backgroundImageView.image = UIImage(named: "Background2")
        }
        if(backgroundImageSegment.selectedSegmentIndex == 2) {
            backgroundImageView.image = UIImage(named: "Background3")
        }
        if(backgroundImageSegment.selectedSegmentIndex == 3) {
            backgroundImageView.image = UIImage(named: "Background4")
        }
        // it reveals the background image when working in this segment
        backgroundImageView.isHidden = false
    }
    
}

