//
//  ColorViewManager.m
//  SwifthUIInRN
//
//  Created by Igor Shcherba on 23/06/2024.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>


@interface RCT_EXTERN_MODULE(ColorViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(color, UIColor)
RCT_EXPORT_VIEW_PROPERTY(width, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(height, CGFloat)
@end
