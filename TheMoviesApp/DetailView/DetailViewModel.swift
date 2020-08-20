//
//  DetailViewModel.swift
//  TheMoviesApp
//
//  Created by Maximiliano Ibalborde on 30/07/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import Foundation
import RxSwift


class DetailViewModel {
    
    private var managerConnections = ManagerConnections()
    private(set) weak var view: DetailView?
    private var router: DetailRouter?
    
    func bind(view: DetailView, router: DetailRouter) {
        self.view = view
        self.router = router
        //TODO: settear la vista en el router
        self.router?.setSourceView(view)
    }
    
    func getMovieData(movieID: String) -> Observable<MovieDetail> {
        return managerConnections.getDetailMovies(movieID: movieID)
    }
    
    func getImageMovie(urlString: String) -> Observable<UIImage> {
        return managerConnections.getImageFromServer(urlString: urlString)
    }
    
}
