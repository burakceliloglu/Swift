//
//  ImageDownloaderClient.swift
//  MovieBook
//
//  Created by Burak Celiloglu on 16.08.2024.
//

import Foundation

class ImageDownloaderClient : ObservableObject {
    
    @Published var downloadedImage : Data?
    
    func imageDownload (url: String) {
        
        guard let imageUrl = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedImage = data
            }
            
        }.resume()
    }
}

enum ImageDownloaderError : Error {
    case wrongUrl
    case dataDidntArrive
    case dataCouldntProcessed
}
