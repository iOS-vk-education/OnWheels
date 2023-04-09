//
//  MyEventsProtocols.swift
//  OnWheels
//
//  Created by Андрей Стрельченко on 17.11.2022.
//  
//

import Foundation

protocol AddEventModuleInput {
	var moduleOutput: AddEventModuleOutput? { get }
}

protocol AddEventModuleOutput: AnyObject {
}

protocol AddEventViewInput: AnyObject {
}

protocol AddEventViewOutput: AnyObject {
    func closeButtonWasTapped()
    func addButtonWasTapped()
}

protocol AddEventInteractorInput: AnyObject {
    func addRace(with raceInfo: [String?])
}

protocol AddEventInteractorOutput: AnyObject {
}

protocol AddEventRouterInput: AnyObject {
    func didTapCloseButton()
    func didTapAddButton()
}
