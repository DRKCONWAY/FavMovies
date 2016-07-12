//
//  MovieCell.swift
//  Fav Movies
//
//  Created by Derek Conway on 6/11/16.
//  Copyright © 2016 Derek Conway. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        movieImg.layer.cornerRadius = 10.0
        movieImg.clipsToBounds = true
        
    }
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.tittle
        movieDescription.text = movie.descrip
        movieImg.image = movie.getImage()
        movie.aux = movie.link
    }
}
