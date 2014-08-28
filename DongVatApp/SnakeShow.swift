//
//  SnakeShow.swift
//  DongVatApp
//
//  Created by ios25 on 8/26/14.
//  Copyright (c) 2014 thuc. All rights reserved.
//

import UIKit
import AVFoundation

class SnakeShow: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var foot: UITextView!
    @IBOutlet weak var liveWhere: UITextView!
    @IBOutlet weak var info: UITextView!
    @IBOutlet weak var lifeCycle: UITextView!
    var audioPlayer = AVAudioPlayer()
    @IBAction func soundClick(sender: AnyObject) {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Snake", ofType: "wav")!)
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
        var animal = Animal(name: "Snake", numberOfFeet: 0, whereLive: "Everwhere", info: "Snakes are elongated, legless, carnivorous reptiles of the suborder Serpentes that can be distinguished from legless lizards by their lack of eyelids and external ears. Like all squamates, snakes are ectothermic, amniote vertebrates covered in overlapping scales. Many species of snakes have skulls with several more joints than their lizard ancestors, enabling them to swallow prey much larger than their heads with their highly mobile jaws. ", lifeCycle: "more than 40 years")
        
        name.text = animal.returnName()
        foot.text = "\(animal.returnNumberOfFeet()) foots"
        info.text = animal.returnInfo()
        liveWhere.text = animal.returnWhereLive()
        lifeCycle.text = animal.returnLifeCycle()
        // Do any additional setup after loading the view.
    }


}
