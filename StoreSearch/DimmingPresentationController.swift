//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Shehab Saqib on 04/03/2016.
//  Copyright © 2016 Shehab Saqib. All rights reserved.
//

import Foundation
import UIKit

class DimmingPresentationController: UIPresentationController {
    
    override func shouldRemovePresentersView() -> Bool {
        return false
    }
}
