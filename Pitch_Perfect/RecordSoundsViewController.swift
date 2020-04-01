//
//  RecordSoundsViewController.swift
//  Pitch_Perfect
//
//  Created by Abdalfattah Altaeb on 4/1/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func recordButtonAction(_ sender: Any) {
        print("This is Record Button")
    }
    
    @IBAction func stopRecordButtonAction(_ sender: Any) {
        print("Thise is stop Record Button")
    }
}

