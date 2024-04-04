//
//  NetworkManager.swift
//  Not_boring
//
//  Created by Oksenoyt on 03.07.2023.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noDate
    case decodingError
}

class NetworkManager {
    static let shared = NetworkManager()

    private init() {}

    func fetchData(from url: String, completion: @escaping(Result<Activity, NetworkError>) -> Void ) {
        guard let url = URL(string: url) else {
            completion(.failure(.invalidURL))
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                completion(.failure(.noDate))
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let activity = try decoder.decode(Activity.self, from: data)
                DispatchQueue.main.sync {
                    completion(.success(activity))
                }
            } catch {
                    completion(.failure(.decodingError))
            }
        }
        .resume()
    }
}
