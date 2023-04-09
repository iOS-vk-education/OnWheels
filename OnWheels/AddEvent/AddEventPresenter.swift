//
//  MyEventsPresenter.swift
//  OnWheels
//
//  Created by Андрей Стрельченко on 17.11.2022.
//  
//

import Foundation

final class AddEventPresenter {
    weak var view: AddEventViewInput?
    weak var moduleOutput: AddEventModuleOutput?
    
    private let router: AddEventRouterInput
    private let interactor: AddEventInteractorInput
    
    init(router: AddEventRouterInput, interactor: AddEventInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
    
    func getIndexesOfEmptyFields(addRaceInfo: [String?]) -> [Int] {
        var result = [Int]()
        for (index, info) in addRaceInfo.enumerated() {
            guard let info = info else {
                result.append(index)
                continue
            }
            if info.isEmpty {
                result.append(index)
            }
        }
        return result
    }
}

extension AddEventPresenter: AddEventModuleInput {
}

extension AddEventPresenter: AddEventViewOutput {
    func closeButtonWasTapped() {
        router.didTapCloseButton()
    }
    func addButtonWasTapped() {
        router.didTapAddButton()
    }
}

extension AddEventPresenter: AddEventInteractorOutput {
    func didTapAddRace(with raceInfo: [String?]) {
        let emptyFieldsIndexes = getIndexesOfEmptyFields(addRaceInfo: raceInfo)
        if emptyFieldsIndexes.isEmpty {
            interactor.addRace(with: raceInfo)
        } else if !emptyFieldsIndexes.isEmpty{
//            view?.showEmptyFields(withIndexes: emptyFieldsIndexes)
        }
    }
}
