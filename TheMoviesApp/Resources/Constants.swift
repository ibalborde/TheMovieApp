//
//  Constants.swift
//  TheMoviesApp
//
//  Created by Maximiliano Ibalborde on 29/07/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import Foundation


struct Constants {
    static let apiKey = "?api_key=434564fb7d57913c84f14fac6b90d48a"
    
    struct URL {
        static let main = "https://api.themoviedb.org/"
        static let urlImages = "https://image.tmdb.org/t/p/w200"
    }
    
    struct Endpoints {
        static let urlListPopularMovies = "3/movie/popular"
        static let urlDetailMovie = "3/movie/"
    }
}
