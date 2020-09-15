//
//  IphoneMsgHandle.h
//  SingleDemo
//
//  Created by @孙学 on 2020/7/10.
//  Copyright © 2020 @SX. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IphoneMsgHandle : NSObject

/**设备型号识别、判断*/
+ (NSString *)getDeviceIdentifier;

@end

NS_ASSUME_NONNULL_END
