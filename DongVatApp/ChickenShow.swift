//
//  ChickenShow.swift
//  DongVatApp
//
//  Created by ios25 on 8/26/14.
//  Copyright (c) 2014 thuc. All rights reserved.
//

import UIKit
import AVFoundation

class ChickenShow: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var Foot: UITextView!
    @IBOutlet weak var liveWhere: UITextView!
    @IBOutlet weak var info: UITextView!
    @IBOutlet weak var lifeCycle: UITextView!
     var audioPlayer = AVAudioPlayer()
    @IBAction func soundClick(sender: AnyObject) {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Chicks", ofType: "wav")!)
        println(alertSound)
        
        // Removed deprecated use of AVAudioSessionDelegate protocol
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var animal = Animal(name: "Chicken", numberOfFeet: 2, whereLive: "Together in flocks", info: "The chicken (Gallus gallus domesticus) is a domesticated fowl, a subspecies of the Red Junglefowl. As one of the most common and widespread domestic animals, with a population of more than 24 billion in 2003,[1] there are more chickens in the world than any other species of bird. Humans keep chickens primarily as a source of food, consuming both their meat and their eggs.", lifeCycle: "5 - 10 years")
        name.text = animal.returnName()
        Foot.text = "Has \(animal.returnNumberOfFeet()) foots"
        info.text = animal.returnInfo()
        liveWhere.text = animal.returnWhereLive()
        lifeCycle.text = animal.returnLifeCycle()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
