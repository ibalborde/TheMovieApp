//
//  MovieDetail.swift
//  TheMoviesApp
//
//  Created by Maximiliano Ibalborde on 30/07/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import Foundation

struct MovieDetail: Codable {
    let title: String
    let posterPath: String
    let overview: String
    let releaseDate: String
    let homepage: String
    let voteAverage: Double
    let originalTitle: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case posterPath = "poster_path"
        case overview
        case releaseDate = "release_date"
        case homepage
        case voteAverage = "vote_average"
        case originalTitle = "original_title"
    }
}
