//
//  ColorViewManager.swift
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 23/06/2024.
//

import Foundation
import React

@objc(ColorViewManager)
class ColorViewManager: RCTViewManager {
  override func view() -> UIView! {
    return ColorViewProxy()
  }
}
