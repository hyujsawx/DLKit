//
//  DLCommonFunc.h
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define GETCELL_NOXIB(CELLCLASS)  (CELLCLASS *)[DLCommonFunc cellWithName:NSStringFromClass([CELLCLASS class]) tableView:tableView]
#define GETCELL_HASXIB(CELLCLASS)  (CELLCLASS *)[DLCommonFunc cellHasXibWithName:NSStringFromClass([CELLCLASS class]) tableView:tableView]

typedef NS_ENUM(NSUInteger, DirectoryType) {
    DirectoryTypeHome,
    DirectoryTypeTemporary,
    DirectoryTypeDocument,
    DirectoryTypeLibrary,
    DirectoryTypePreference,
    DirectoryTypeCaches
};

@interface DLCommonFunc : NSObject

/**
 推页面 隐藏底部
 */
+ (void)pushVCWithOutTabbar:(UIViewController *)vc selfVC:(UIViewController *)selfVC;

/**
 弹出默认alertView
 
 */
+ (void)showAlert:(NSString *)title;

/**
 根据颜色生成图片
 
 */
+ (UIImage *)createImageWithColor:(UIColor *)color;

/**
 获取当前控制器

 @return 控制器
 */
+ (UIViewController *)getCurrentVC;

/**
 得到没有xib文件的TableViewCell

 @param cellName cellName
 @param tableView tableView
 @return UITableViewCell
 */
+ (UITableViewCell *)cellWithName:(NSString *)cellName tableView:(UITableView *)tableView;

/**
 得到有xib文件的TableViewCell

 @param cellName cellName
 @param tableView tableView
 @return UITableViewCell
 */
+ (UITableViewCell *)cellHasXibWithName:(NSString *)cellName tableView:(UITableView *)tableView;

/**
 *  文字提示 显示时间为2秒
 */
+ (void)hudWithText:(NSString *)text view:(UIView *)view;

/**
 返回路径

 @return 路径
 */
+ (NSString *)getPath:(DirectoryType)type;

/**
 返回偏好设置字典

 */
+ (NSDictionary *)getUserDefaultsDictionary;

@end











