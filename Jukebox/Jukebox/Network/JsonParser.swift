//
//  JsonParser.swift
//  Jukebox
//
//  Created by Khai on 3/4/24.
//

import Foundation

public final class JsonParser {
    static func decode<T: Decodable>(data: Data, type: T.Type) throws -> T {
        guard let decoded = try? JSONDecoder().decode(T.self, from: data) else {
            throw NetworkError.decodeFail
        }
        return decoded
    }
    
    
    private static func printingError(log error: Error) {
        switch error {
        case NetworkError.decodeFail: print("Decode Fail. Check Type")
        default: print("\(error.localizedDescription)")
        }
    }
}
