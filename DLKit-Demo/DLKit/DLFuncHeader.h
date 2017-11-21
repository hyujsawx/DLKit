//
//  DLFuncHeader.h
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#ifndef DLFuncHeader_h
#define DLFuncHeader_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/************************* block *************************/
typedef void(^blockWithNil)(void);
typedef void(^blockWithString)(NSString *backStr);
typedef void(^blockWithArray)(NSArray *backAry);
typedef void(^blockWithDictionary)(NSDictionary *backDic);
typedef void(^blockWithBool)(BOOL backBool);
typedef void(^blockWithInteger)(NSInteger backInteger);
typedef void(^blockWithFloat)(CGFloat backFloat);
typedef void(^blockWithIdObject)(id backObj);
/************************* block *************************/

/************************* 功能宏 *************************/
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width

#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

#define UICOLOR_RGB(r, g, b)  [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

#define FONT(_SIZE_)  [UIFont systemFontOfSize:_SIZE_]

#define IMAGE(_IMAGE_)  [UIImage imageNamed:_IMAGE_]

#define URL(_str_)  [NSURL URLWithString:_str_]

#define WEAK_SELF  __weak typeof(self) weakSelf = self;

#define IOS8_ORLATER  (([[[UIDevice currentDevice] systemVersion] floatValue] >=8.0)? (YES):(NO))

#define IS_iPHONE4  [[UIScreen mainScreen] bounds].size.width == 320.0f && [[UIScreen mainScreen] bounds].size.height == 480.0f

#define IS_iPHONE5  [[UIScreen mainScreen] bounds].size.width == 320.0f && [[UIScreen mainScreen] bounds].size.height == 568.0f

#define IS_iPHONE6  [[UIScreen mainScreen] bounds].size.width == 375.0f && [[UIScreen mainScreen] bounds].size.height == 667.0f

#define IS_iPHONE6P  [[UIScreen mainScreen] bounds].size.width == 414.0f && [[UIScreen mainScreen] bounds].size.height == 736.0f

#define IS_iPHONEX  [[UIScreen mainScreen] bounds].size.width == 375.0f && [[UIScreen mainScreen] bounds].size.height == 812.0f

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...)
#endif
/************************* 功能宏 *************************/

#endif /* DLFuncHeader_h */













