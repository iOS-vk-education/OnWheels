//
//  EventsProtocols.swift
//  OnWheels
//
//  Created by Андрей Стрельченко on 10.11.2022.
//  
//

import Foundation

protocol EventsModuleInput {
	var moduleOutput: EventsModuleOutput? { get }
}

protocol EventsModuleOutput: AnyObject {
}

protocol EventsViewInput: AnyObject {
    func update(withRaces races: [RaceInfo])
    func setLike(raceId: Int)
    func setDislike(raceId: Int)
    func addWatcher(raceId: Int)
    func setView(raceId: Int)
    func showLoaderView()
    func hideLoaderView()
}

protocol EventsViewOutput: AnyObject {
    func rowDidSelect(at index: Int)
    func didLoadRaces()
    func didSetLike(for raceId: Int)
    func didSetDislike(for raceId: Int)
    func didSetVeiw(at index: Int)
    func showLoaderView() 
}

protocol EventsInteractorInput: AnyObject {
    func loadRaces()
    func setLike(for raceId: Int)
    func setView(for raceId: Int)
    func getEvent(by index: Int) -> RaceInfo
    func setDislike(for raceId: Int)
}

protocol EventsInteractorOutput: AnyObject {
    func setRaces(races: [RaceInfo])
    func setDislike(for index: Int)
    func setLike(raceId: Int)
    func setViews(raceId: Int)
}

protocol EventsRouterInput: AnyObject {
    func selectedRowTapped(at index: Int)
}
