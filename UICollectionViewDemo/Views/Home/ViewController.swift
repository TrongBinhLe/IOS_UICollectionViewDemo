//
//  ViewController.swift
//  UICollectionViewDemo
//
//  Created by admin on 07/06/2022.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var myCollectionView: UICollectionView!
    private var mainViewModel : MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        self.mainViewModel = MainViewModel()
        // Do any additional setup after loading the view.
        
        setupBinding()
    }
    
    private func setupBinding() {
        mainViewModel.getMovieList { result in
            if result {
                self.myCollectionView.reloadData()
            }
        }
    }

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainViewModel.numberOfMovies()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "ThumbnailCollectionViewCell", for: indexPath)
        as! ThumbnailCollectionViewCell
        
        cell.setUp(with: mainViewModel.getMovie(byIndex: indexPath.row))
        return cell
        
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected the cell with \(indexPath.row)")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let detailsMovieScreen = sb.instantiateViewController(withIdentifier: "DetailsMovie") as! DetailsMovieViewController
        self.navigationController?.pushViewController(detailsMovieScreen, animated: true)
        
        let movile = mainViewModel.getMovie(byIndex: indexPath.row)
        
        detailsMovieScreen.setupPrepareData(image: movile.image ?? UIImage(),
                                            titleName: movile.titleName ?? "",
                                            description: movile.description ?? "")
    }
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 300)
    }
}

