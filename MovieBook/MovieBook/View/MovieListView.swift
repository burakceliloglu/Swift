//
//  ContentView.swift
//  MovieBook
//
//  Created by Burak Celiloglu on 27.07.2024.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var movieListViewModel : MovieListViewModel
    
    var body: some View {
        List(movieListViewModel.movies, id: \.imdbId) { movie in
            
        }
    }
}

#Preview {
    MovieListView()
}
