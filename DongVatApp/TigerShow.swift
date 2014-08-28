//
//  TigerShow.swift
//  DongVatApp
//
//  Created by thuc on 8/26/14.
//  Copyright (c) 2014 thuc. All rights reserved.
//

import UIKit
import AVFoundation

class TigerShow: UIViewController {
    var audioPlayer = AVAudioPlayer()
    @IBAction func soundClick(sender: AnyObject) {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Tiger", ofType: "wav")!)
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
        var animal = Animal(name: "Tiger", numberOfFeet: 4, whereLive: " In many types of forests, including wet, evergreen, and the semievergreen of Assam and eastern Bengal; the swampy mangrove forest of the Ganges Delta; the deciduous forest of Nepal, and the thorn forests of the Western Ghats. In various parts of their range they inhabit or have inhabited additionally partially open grassland and savanna as well as taiga forests and rocky habitats.", info: "The tiger (Panthera tigris) is the largest cat species, reaching a total body length of up to 3.38 m (11.1 ft) over curves and weighing up to 388.7 kg (857 lb) in the wild. Its most recognisable feature is a pattern of dark vertical stripes on reddish-orange fur with a lighter underside.", lifeCycle: "about 20 years")
        name.text = animal.returnName()
        numberOfFeet.text = "Has \(animal.returnNumberOfFeet()) foots"
        info.text = animal.returnInfo()
        liveWhere.text = animal.returnWhereLive()
        lifeCycle.text = animal.returnLifeCycle()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var numberOfFeet: UITextView!
    @IBOutlet weak var liveWhere: UITextView!
    @IBOutlet weak var info: UITextView!
    @IBOutlet weak var lifeCycle: UITextView!
    
    
}
