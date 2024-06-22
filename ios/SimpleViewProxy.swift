//
//  SimpleViewProxy.swift
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 22/06/2024.
//

import React
import SwiftUI

class MyDataStore: ObservableObject {
  @Published var title: NSString = ""
  @Published var onPressed: RCTBubblingEventBlock = { _ in }
}

class SimpleViewProxy: UIView {
  var returningView: UIView?
  let dataStore: MyDataStore = .init()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    let vc = UIHostingController(rootView: SimpleViewSWUI().environmentObject(dataStore))
    vc.view.frame = bounds
    addSubview(vc.view)
    self.returningView = vc.view
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc var title: NSString = "" {
    didSet {
      dataStore.title = title
    }
  }
  
  @objc var onPressed: RCTBubblingEventBlock = { _ in } {
    didSet {
      dataStore.onPressed = onPressed
    }
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    returningView?.frame = bounds
  }
}
