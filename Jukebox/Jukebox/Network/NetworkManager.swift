//
//  NetworkManager.swift
//  Jukebox
//
//  Created by Khai on 3/5/24.
//

import Foundation

enum NetworkError: Error {
    case decodeFail
}

public final class NetworkManager {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
}
