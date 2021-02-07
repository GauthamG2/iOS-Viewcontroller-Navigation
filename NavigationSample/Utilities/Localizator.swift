//
//  Localizator.swift
//  NavigationSample
//
//  Created by Gautham Sritharan on 2021-02-07.
//

import Foundation
import UIKit

public class Localizator {
    fileprivate func NSLocalizedString(_ key: String) -> String {
        return Foundation.NSLocalizedString(key, comment: "")
    }
}

extension String {
    
    // Viewcontrollers
    static let HomeVC = NSLocalizedString("HomeVC", comment: "")
    static let Screen2VC = NSLocalizedString("Screen2VC", comment: "")
    static let Screen3VC = NSLocalizedString("Screen3VC", comment: "")
    static let Screen4VC = NSLocalizedString("Screen4VC", comment: "")
    
    // Top ViewControllers of the SB
    static let HomeNC = NSLocalizedString("HomeNC", comment: "")
    
}
