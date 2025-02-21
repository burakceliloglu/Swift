//
//  FilmViewModel.swift
//  MovieBook
//
//  Created by Burak Celiloglu on 30.07.2024.
//

import Foundation
import SwiftUI

class MovieListViewModel : ObservableObject {
    @Published var movies = [MovieViewModel]()
    
    let downloaderClient = DownloaderClient()
    
    func movieDownload(movieName: String){
        downloaderClient.downloadMovies(search: movieName) { (result) in
            switch result {
                case .failure(let error):
                    print(error.localizedDescription)
                case .success(let movieList):
                    if let movieList = movieList {
                        DispatchQueue.main.async {
                            self.movies = movieList.map(MovieViewModel.init)
                        }
                    }
            }
        }
    }
}

struct MovieViewModel {
    let movie : Movie
    
    var title : String {
        movie.title
    }
    
    var poster : String {
        movie.poster
    }
    
    var imdbId : String {
        movie.imdbId
    }
    
    var year : String {
        movie.year
    }
}
