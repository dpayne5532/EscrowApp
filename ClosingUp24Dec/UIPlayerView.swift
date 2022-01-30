//
//  UIPlayerView.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/24/21.
//

import AVKit
import SwiftUI
import AVFoundation




struct PlayerView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVideoPlayer {
        return UIVideoPlayer()
    }
    func updateUIView(_ uiView: UIVideoPlayer, context: Context) {
    }
}
class UIVideoPlayer: UIView {
    var playerLayer = AVPlayerLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
      
        
        
        
        
        
        
        
        
         
      
        
        guard let url = Bundle.main.url(forResource: "hartIntro2", withExtension: "mp4") else { return }
        
    
        let player = AVPlayer(url: url)
        
        
        player.isMuted = false
        player.play()
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        layer.addSublayer(playerLayer)
            
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


