//
//  SearchResult.swift
//  Jukebox
//
//  Created by Khai on 3/5/24.
//

import Foundation

public struct SearchResult: Decodable {
    let kind: String
    let etag: Int
    let nextPageToken: String
    let prevPageToken: String
    let regionCode: String
    let pageInfo: String
}
