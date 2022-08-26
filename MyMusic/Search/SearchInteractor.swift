//
//  SearchInteractor.swift
//  MyMusic
//
//  Created by Marina on 26.08.22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol SearchBusinessLogic {
  func makeRequest(request: Search.Model.Request.RequestType)
}

class SearchInteractor: SearchBusinessLogic {

  var presenter: SearchPresentationLogic?
  var service: SearchService?
  
  func makeRequest(request: Search.Model.Request.RequestType) {
    if service == nil {
      service = SearchService()
    }
      switch request {
      case .some:
          print("interactor .some")
          presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks)
      case .getTracks:
          print("interactor .getTracks")
          presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks)
      }
  }
  
}
