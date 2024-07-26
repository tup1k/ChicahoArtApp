//
//  PicuresFactoryDelegate.swift
//  chicagoArtApp
//
//  Created by Олег Кор on 24.07.2024.
//

import Foundation

// Делегат для создания фабрики вопросов
protocol PicturesFactoryDelegate: AnyObject {
    //func didReceiveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer() // Сообщаем о загрузке данных с сервера
    func didFailToLoadData(with error: Error) // Сообщаем об ошибке загрузки данных с сервера
}
