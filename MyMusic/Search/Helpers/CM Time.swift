//
//  CM Time.swift
//  MyMusic
//
//  Created by Marina on 2.09.22.
//

import Foundation
import AVKit

extension CMTime {
    //переводим время из CMTime в тип String
    func toDisplayString() -> String {
        guard !CMTimeGetSeconds(self).isNaN else { return "" }
        let totalSecond = Int(CMTimeGetSeconds(self))
        let seconds = totalSecond % 60
        let minutes = totalSecond / 60
        let timeFormatSting = String(format: "%02d:%02d", minutes, seconds)
        return timeFormatSting
    }
    
}

