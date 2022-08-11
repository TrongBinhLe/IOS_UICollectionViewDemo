//
//  DetailsMovieViewController.swift
//  UICollectionViewDemo
//
//  Created by admin on 07/06/2022.
//

import UIKit

class DetailsMovieViewController: UIViewController {
    

    @IBOutlet weak var imageMovie: UIImageView!
    private var image: UIImage!
    @IBOutlet weak var lblFilmTitle: UILabel!
    private var titleName: String!
    @IBOutlet weak var lblDescriptionMovie: UILabel!
    private var titleDescription: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // set conner radius for image movie details
        imageMovie.layer.cornerRadius = 10.0
        imageMovie.layer.masksToBounds = false
        // set the shadow properties
        imageMovie.layer.backgroundColor = UIColor.clear.cgColor
        imageMovie.layer.shadowColor = UIColor.black.cgColor
        imageMovie.layer.shadowOpacity = 0.5
        imageMovie.layer.shadowRadius = 4.0
        imageMovie.layer.shadowOffset = CGSize(width: 1.0, height: 3.0)
        
        
        imageMovie.image = image
        
        lblFilmTitle.text = titleName
        lblDescriptionMovie.text = titleDescription
        // Do any additional setup after loading the view.
    }
    
    func setupPrepareData(image: UIImage, titleName: String, description: String) {
        self.image = image
        self.titleName = titleName
        self.titleDescription = description
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
