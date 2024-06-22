//
//  SimpleViewManager.m
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 22/06/2024.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>
@interface RCT_EXTERN_MODULE(SimpleViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(title, NSString)
RCT_EXPORT_VIEW_PROPERTY(onPressed, RCTBubblingEventBlock)
@end
