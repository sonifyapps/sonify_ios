//
//  TextToSpeech.swift
//  Sonify
//
//  Created by Haden Pike on 5/14/16.
//  Copyright © 2016 Sonify. All rights reserved.
//

import AVFoundation
import UIKit

class TextToSpeech: NSObject {
    var synthesizer: AVSpeechSynthesizer!
    
    override init() {
        super.init()
        synthesizer = AVSpeechSynthesizer()
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        synthesizer.speakUtterance(utterance)
    }
}
