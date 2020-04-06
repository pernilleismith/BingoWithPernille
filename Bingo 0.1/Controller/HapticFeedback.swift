//
//  HapticFeedback.swift
//  Plumpy
//
//  Created by Fredrik Lillejordet on 06/04/2020.
//  Copyright © 2020 Fredrik Lillejordet. All rights reserved.
//

import Foundation
import SwiftUI

class HapticFeedback {
    #if os(watchOS)
    //watchOS implementation
    static func playSelection() -> Void {
        WKInterfaceDevice.current().play(.click)
    }
    #else
    //iOS implementation
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
    static func playSelection() -> Void {
        UISelectionFeedbackGenerator().selectionChanged()
    }
    #endif
}
