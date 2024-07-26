//
//  ViewController.swift
//  chicagoArtApp
//
//  Created by Олег Кор on 23.07.2024.
//

import UIKit

class ViewController: UIViewController, PicturesFactoryDelegate {
    

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var buttonForChange: UIButton!
    
    private var picturesFactory: PicturesFactoryProtocol? //  Фабрика вопросов
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picturesFactory = PicturesFactory(picturesLoader: PicturesLoader(), delegate: self)
        picturesFactory?.loadData()
        
    }

    func didLoadDataFromServer() {
        
    }
    
    func didFailToLoadData(with error: any Error) {
     print("Жопа")
    }
    
    @IBAction func pressButtonToChange(_ sender: Any) {
    }
    
}

