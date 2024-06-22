//
//  SimpleViewManager.swift
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 22/06/2024.
//
import React
import UIKit

@objc(SimpleViewManager)
class SimpleViewManager: RCTViewManager {
  override func view() -> SimpleViewProxy? {
    return SimpleViewProxy()
  }

  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
}
