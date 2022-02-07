//
//  ViewController.swift
//  You Are Awesome!//////
//
//  Created by Basti Belmonte on 1/29/22.
///

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
     
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 8
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: \(error.localizedDescription) could not initialize AVAudioPlayer object.")
            }
        } else {
                print("Error: Could not read data from file sound5")
            }
        
    }
    
    func nonRepeatingRandom (originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
        }
        
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "When The Genius Bar Needs Help, They Call You!", "Fabulous? That's You!", "You've Got The Design Skills Of Jony Ive!"]
        
        messageNumber = nonRepeatingRandom (originalNumber: messageNumber, upperLimit: messages.count-1)
                    messageLabel.text = messages[messageNumber]
        
  
//        var newMessage = messages[Int.random(in: 0...messages.count-1)]
//        while messageLabel.text == newMessage {
//            print("*** We  had a repeating value. Both newMessage and messageLabel.text = \(newMessage)")
//            newMessage = messages[Int.random(in: 0...messages.count-1)]
//        }
        
        imageNumber = nonRepeatingRandom (originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
                imageView.image = UIImage(named: "image\(imageNumber)")
        

        soundNumber = nonRepeatingRandom (originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        
    }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if sender.isOn && audioPlayer != nil {
            audioPlayer.stop()
        }
    }
    
        
    
        
//        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        while imageView.image == newImage {
//            print("*** We had a repeating value. The newImage and imageView.image the same")
//                newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        }
//
//        imageView.image = newImage
        
    
        
        
        
        
        
        
        
        
        
        
        
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
        //}
        
     // print(imageNumber)
       // let imageName = "image" + String(imageNumber)
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
        
            
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLabel.text == greatMessage{
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //
        //        }
        


}
