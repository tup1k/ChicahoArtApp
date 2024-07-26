//
//  picturesFactory.swift
//  chicagoArtApp
//
//  Created by Олег Кор on 24.07.2024.
//

import Foundation

final class PicturesFactory: PicturesFactoryProtocol {
    
    
    private let picturesLoader: PicturesLoader
    private var pictures: [ArtPicturesStruct] = []
    
    private weak var delegate: PicturesFactoryDelegate? // Делегат фабрики вопросов
    
    init(picturesLoader: PicturesLoader, delegate: PicturesFactoryDelegate? = nil) {
        self.picturesLoader = picturesLoader
        self.delegate = delegate
    }
    
    
    func loadData() {
          picturesLoader.loadMovies { [weak self] result in
              DispatchQueue.main.async {
                  guard let self = self else { return }
                  print()
                  switch result {
                  case .success(let artPictures):
                      print(artPictures.data)
                      //self.pictures = artPictures.data
                      self.delegate?.didLoadDataFromServer()
                  case .failure(let error):
                      self.delegate?.didFailToLoadData(with: error)
                  }
              }
          }
      }
    
    func requestNextPicture() {
        
    }
}


