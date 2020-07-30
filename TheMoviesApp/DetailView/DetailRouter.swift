//
//  DetailRouter.swift
//  TheMoviesApp
//
//  Created by Maximiliano Ibalborde on 30/07/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import UIKit

class DetailRouter {
    
    var viewController: UIViewController{
        return createViewController()
    }
    var movieID: String?
    private var sourceView: UIViewController?
    
    init(movieID: String? = "") {
        self.movieID = movieID
    }
    
    func setSourceView(_ sourceView: UIViewController?) {
        guard let view = sourceView else { fatalError("Error desconocido")}
        self.sourceView = view
    }
    
    private func createViewController() -> UIViewController {
        let view = DetailView(nibName: "DetailView", bundle: Bundle.main)
        view.movieID = self.movieID
        return view
    }
}
