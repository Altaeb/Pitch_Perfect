//
//  PlaySoundsViewController.swift
//  Pitch_Perfect
//
//  Created by Abdalfattah Altaeb on 4/1/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    // MARK: Properties
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow, fast, chipmunk, vader, echo, reverb
    }
    
    // MARK: Outlets
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var highButton: UIButton!
    @IBOutlet weak var lowButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    // MARK: Actions
    // IBAction for play sound
    @IBAction func playSoundForButton(_ sender: UIButton) {
        
        if let buttonType = ButtonType(rawValue: sender.tag) {
            switch buttonType {
            case .slow:
                playSound(rate: 0.5)
            case .fast:
                playSound(rate: 1.5)
            case .chipmunk:
                playSound(pitch: 1000)
            case .vader:
                playSound(pitch: -1000)
            case .echo:
                playSound(echo: true)
            case .reverb:
                playSound(reverb: true)
            }
        }

        configureUI(.playing)

    }

    // IBAction for stop sound
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
      stopAudio()
    }
    
    // Called after the controller's view is loaded into memory.
     override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()

        slowButton.imageView?.contentMode = .scaleAspectFit
        fastButton.imageView?.contentMode = .scaleAspectFit
        highButton.imageView?.contentMode = .scaleAspectFit
        lowButton.imageView?.contentMode = .scaleAspectFit
        echoButton.imageView?.contentMode = .scaleAspectFit
        reverbButton.imageView?.contentMode = .scaleAspectFit
        stopButton.imageView?.contentMode = .scaleAspectFit
    }

    // Notifies the view controller that its view is about to be added to a view hierarchy.
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
