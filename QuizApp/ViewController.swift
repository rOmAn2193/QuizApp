//
//  ViewController.swift
//  QuizApp
//
//  Created by Roman on 2/28/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userDefaults = NSUserDefaults.standardUserDefaults()

    @IBOutlet weak var highScoreLabel: UILabel!

    func setHighscore()
    {
        if let highscore = userDefaults.valueForKey("highscore")
        {
            highScoreLabel.text = "Highscore: \(highscore)"
        }
        else
        {
            highScoreLabel.text = "No Highscore YET!"
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        setHighscore()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

