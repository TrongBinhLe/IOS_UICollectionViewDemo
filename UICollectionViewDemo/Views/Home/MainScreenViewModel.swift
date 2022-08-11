//
//  MainScreenViewModel.swift
//  UICollectionViewDemo
//
//  Created by admin on 07/06/2022.
//

import Foundation

class MainViewModel{
    var dataModel: DataModelMovies = DataModelMovies()
    var movies: [Movie] = []
    
    // coding convention
    init() {
    }
    
    func getMovieList(completion: @escaping (Bool) -> Void) {
        dataModel.getMovieList { movies in
            self.movies = movies
            completion(true)
        }
    }
    
    func getMovie(byIndex: Int) ->(Movie){
        return movies[byIndex]
    }
    
    func numberOfMovies() -> Int {
        return movies.count
    }
    
}
