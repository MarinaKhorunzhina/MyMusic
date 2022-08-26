//
//  SearchModels.swift
//  MyMusic
//
//  Created by Marina on 26.08.22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum Search {
   
  enum Model {
    struct Request {
      enum RequestType {
        case some
        case getTracks
      }
    }
    struct Response {
      enum ResponseType {
        case some
        case presentTracks
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case some
        case displayTracks
      }
    }
  }
  
}
