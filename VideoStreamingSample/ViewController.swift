//
//  ViewController.swift
//  VideoStreamingSample
//
//  Created by Tatsuya Moriguchi on 6/28/22.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {

    @IBAction func playVideo(_ sender: AnyObject) {
        
        guard let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/videostreamingsample-e9f45.appspot.com/o/Kinkakuji.mp4?alt=media&token=691fd62e-77e0-4fd4-9a5a-034a43bdac26") else { return }
        
    
    let player = AVPlayer(url: url)
    let controller = AVPlayerViewController()
    controller.player = player
    
    present(controller, animated: true) {
        player.play()
    }
    
    }
}

