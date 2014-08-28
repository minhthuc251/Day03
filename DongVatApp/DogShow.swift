//
//  DogShow.swift
//  DongVatApp
//
//  Created by ios25 on 8/26/14.
//  Copyright (c) 2014 thuc. All rights reserved.
//

import UIKit
import AVFoundation

class DogShow: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var foot: UITextView!
    @IBOutlet weak var liveWhere: UITextView!
    @IBOutlet weak var info: UITextView!
    @IBOutlet weak var lifeCycle: UITextView!
    var audioPlayer = AVAudioPlayer()
    @IBAction func soundCLick(sender: AnyObject) {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Dog", ofType: "wav")!)
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
        var animal = Animal(name: "Dog", numberOfFeet: 4, whereLive: "With human in everywhere", info: "The domestic dog (Canis lupus familiaris,[2][3] or Canis familiaris) is a member of the Canidae family of the mammalian order Carnivora. The term domestic dog is generally used for both domesticated and feral varieties. The dog was the first domesticated animal[4][5] and has been the most widely kept working, hunting, and pet animal in human history.[citation needed] The word dog can also refer to the male of a canine species,[6] as opposed to the word bitch which refers to the female of the species.", lifeCycle: "30 years")
        
        name.text = animal.returnName()
        foot.text = "Has \(animal.returnNumberOfFeet()) foots"
        info.text = animal.returnInfo()
        liveWhere.text = animal.returnWhereLive()
        lifeCycle.text = animal.returnLifeCycle()
        // Do any additional setup after loading the view.
    }

 

}
