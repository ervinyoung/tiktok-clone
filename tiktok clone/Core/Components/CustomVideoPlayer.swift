//
//  CustomVideoPlayer.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/19/24.
//

import SwiftUI
import AVKit
//uses a little bit of UIkit
struct CustomVideoPlayer: UIViewControllerRepresentable {
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false //dont show the video control buttons
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill //fills video to screen aspect ratio
        return controller
    }
    //the above gives us back the avplayerview
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
