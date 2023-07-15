//
//  NetworkManager.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 15.07.2023.
//

import Foundation

enum NetworkManager {
    static func setLoadData<T: Decodable>(from fileName: String) -> T? {
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            return nil
        }

        do {
            let data = try Data(contentsOf: file)
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            return nil
        }
    }
}
