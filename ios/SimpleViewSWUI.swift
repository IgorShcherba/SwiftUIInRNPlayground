//
//  SimpleViewSWUI.swift
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 22/06/2024.
//

import SwiftUI

struct SimpleViewSWUI: View {
  @EnvironmentObject var dataStore: MyDataStore

  var body: some View {
    VStack {
      Button(action: {
        dataStore.onPressed(["data": "some data by native side"])
      }, label: {
        Text("\(dataStore.title)")
      })
    }
  }
}
