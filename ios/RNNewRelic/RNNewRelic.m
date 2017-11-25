//
//  RNNewRelic.m
//  RNNewRelic
//
//  Created by Daniel Zlotin on 26/04/2016.
//  Copyright © 2016 Wix.com. All rights reserved.
//

#import "RNNewRelic.h"

@implementation RNNewRelic

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(send: (NSString*)category :(NSDictionary*)args){
  [NewRelicAgent recordCustomEvent:category attributes:args];
}

RCT_EXPORT_METHOD(metric: (NSString*)name: (NSString*)category: (nonnull NSNumber*)value){
  [NewRelicAgent recordMetricWithName:name category:category value:value];
}

RCT_EXPORT_METHOD(setAttribute: (NSString*)name: (NSString*)value){
  [NewRelicAgent setAttribute:name value:value];
}

// Logs a message to the native console
RCT_EXPORT_METHOD(nativeLog:(NSString *)msg){
  NSLog(@"%@", msg);
}

@end
