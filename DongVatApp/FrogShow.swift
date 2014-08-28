//
//  FrogShow.swift
//  DongVatApp
//
//  Created by ios25 on 8/26/14.
//  Copyright (c) 2014 thuc. All rights reserved.
//

import UIKit
import AVFoundation

class FrogShow: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var foot: UITextView!
    @IBOutlet weak var liveWhere: UITextView!
    @IBOutlet weak var info: UITextView!
    @IBOutlet weak var lifeCycle: UITextView!
    
    var audioPlayer = AVAudioPlayer()
    @IBAction func soundClick(sender: AnyObject) {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Frog", ofType: "wav")!)
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
        var animal = Animal(name: "Frog", numberOfFeet: 4, whereLive: "On the ground, in water, in trees or in burrows.", info: "Frogs are a diverse and largely carnivorous group of short-bodied, tailless amphibians composing the order Anura (Ancient Greek an-, without + oura, tail). The oldest fossil proto-frog appeared in the early Triassic of Madagascar, but molecular clock dating suggests their origins may extend further back to the Permian, 265 million years ago.", lifeCycle: "more than 30 years")
        name.text = animal.returnName()
        foot.text = "Has \(animal.returnNumberOfFeet()) foots"
        info.text = animal.returnInfo()
        liveWhere.text = animal.returnWhereLive()
        lifeCycle.text = animal.returnLifeCycle()

        // Do any additional setup after loading the view.
    }


}
