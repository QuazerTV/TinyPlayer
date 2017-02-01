//
//  VideoPlayerViewModel.swift
//  TinyPlayerDemo
//
//  Created by Kevin Chen on 06/12/2016.
//  Copyright © 2016 Xi Chen. All rights reserved.
//

import Foundation
import UIKit
import TinyPlayer

let testVideoUrl = "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"

let testHLSVideoUrl = "http://cdn-fms.rbs.com.br/hls-vod/sample1_1500kbps.f4v.m3u8"

let testHLSVideoUrl2 = "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"

let testHLSVideoUrl3 = "https://tungsten.aaplimg.com/VOD/bipbop_adv_example_v2/master.m3u8"

let testHLSVideoUrl4 = "http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8"

class VideoPlayerViewModel {
    
    let tinyPlayer: TinyVideoPlayer
    
    init() {
        
        let url = URL(string: testVideoUrl)
        
        let mediaContext = MediaContext(videoTitle: "Big buck bunny. - A MP4 test video.",      /// Use the embedded video metatdata
                                        artistName: "TinyPlayerDemo",
                                        startPosition: 5.0,
                                        endPosition: 0.0,       /// To play to the end of the video
                                        thumbnailImage: UIImage(named: "DemoVideoThumbnail_MP4"))
        
        tinyPlayer = TinyVideoPlayer(resourceUrl: url!, mediaContext: mediaContext)
    }
}
