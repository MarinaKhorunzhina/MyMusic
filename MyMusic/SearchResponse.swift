//
//  SearchResponse.swift
//  MyMusic
//
//  Created by Marina on 25.08.22.
//

import Foundation
struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl100: String?
    var previewUrl: String?
}
