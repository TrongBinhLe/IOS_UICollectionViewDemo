//
//  ThumbnailCollectionViewCell.swift
//  UICollectionViewDemo
//
//  Created by admin on 07/06/2022.
//

import UIKit

class ThumbnailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var lblFilmTitle: UILabel!
    

// thumbnail get data direct from  Models -> using MVVM 
    func setUp(with movie: Movie){
        self.imageMovie.image = movie.image
        imageMovie.layer.cornerRadius = 10.0
        imageMovie.layer.masksToBounds = true
        self.lblFilmTitle.text = movie.titleName
    }

}
