//
//  DownloaderClient.swift
//  MovieBook
//
//  Created by Burak Celiloglu on 27.07.2024.
//

import Foundation

class DownloaderClient {
    
    func downloadMovies(search: String, completion: @escaping (Result<[Movie]?, DownloaderError>) -> Void) {
        
        guard let url = URL(string: "https://www.omdbapi.com/?s=\(search)&apikey=9976ede4") else {
            return completion(.failure(.wrongUrl))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.dataDidntArrive))
            }
            
            guard let movieResponse = try? JSONDecoder().decode(Movies.self, from: data) else {
                return completion(.failure(.dataCouldntProcessed))
            }
            
            completion(.success(movieResponse.movies))
        }.resume()
    }
}

enum DownloaderError : Error {
    case wrongUrl
    case dataDidntArrive
    case dataCouldntProcessed
}
