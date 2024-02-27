//
//  ViewController.swift
//  Light
//
//  Created by Derek Stengel on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        if lightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    var lightOn = true
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = lightOn ? .white : .black
            
            func buttonPressed(_ sender: Any) {
                lightOn.toggle()
                updateUI()
            }
            
        }
        
    }
}
