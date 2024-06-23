//
//  ColorView.swift
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 23/06/2024.
//

import SwiftUI

struct ColorView: View {
  @EnvironmentObject var dataStore: ColorDataStore
  var width: CGFloat?
  var height: CGFloat?

  var body: some View {
    Color(dataStore.color).frame(width: width, height: height)
  }
}
