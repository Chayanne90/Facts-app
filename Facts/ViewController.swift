//
//  ViewController.swift
//  Facts
//
//  Created by Chayanne on 6/16/17.
//  Copyright © 2017 Chayanne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label1.layer.cornerRadius = 10
        label1.clipsToBounds = true
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func random(_ sender: Any) {
        
        let array = ["Bananas are curved because they grow towards the sun.",
                     "During your lifetime, you will produce enough saliva to fill two swimming pools.",
                     "“Facebook Addiction Disorder” is a mental disorder identified by Psychologists.",
                     "Heart attacks are more likely to happen on a Monday.",
                     "The Titanic was the first ship to use the SOS signal.",
                     "Bin Laden’s death was announced on 1st May 2011. Hitler’s death was announced on 1st May 1945.",
                     "The total number of steps in the Eiffel Tower are 1665",
                     "Over 1000 birds a year die from smashing into windows",
                     "The inventor of the Waffle Iron did not like waffles",
                     "China has more English speakers than the United States"]
        let randomFacts = Int(arc4random_uniform(UInt32(array.count)))
        label1.text = array[randomFacts]

        
    }

}
