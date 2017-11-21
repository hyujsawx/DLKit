//
//  DLCategory.h
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (DLFunc)

/**
 *  是否是整型数字类型的字符串
 */
- (BOOL)stringIsPureInt;

/**
 *  是否是float类型的字符串
 */
- (BOOL)isPureFloat;

/**
 字符串长度
 
 @param font 大小
 @return 长度
 */
- (float)widthWithFont:(NSInteger)font;

/**
 字符串高度
 
 @param font 大小
 @return 长度
 */
- (float)heightWithFont:(NSInteger)font width:(CGFloat)width;

/**
 字符串长度
 
 @param font 大小
 @return 长度
 */
- (float)widthWithBoldFont:(NSInteger)font;

/**
 转化成字典
 
 @return 字典
 */
- (NSDictionary *)toDictionary;

@end


@interface NSDictionary (DLFunc)

/**
 转化成字符串
 
 @return 字符串
 */
- (NSString *)toJSONString;

@end


@interface UIButton (DLFunc)

typedef NS_ENUM(NSUInteger, ButtonEdgeInsetsStyle) {
    ButtonEdgeInsetsStyleTop, // image在上，label在下
    ButtonEdgeInsetsStyleLeft, // image在左，label在右
    ButtonEdgeInsetsStyleBottom, // image在下，label在上
    ButtonEdgeInsetsStyleRight // image在右，label在左
};

/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)layoutButtonWithEdgeInsetsStyle:(ButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space;

@end


@interface UIColor (DLFunc)

/**
 *  获取颜色 含有alpha
 *
 *  @param color 6位16进制字符串
 *  @param alpha 透明度
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
/**
 *  获取颜色
 *
 *  @param color 6位16进制字符串
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

@end


@interface UIView (DLFunc)

/**
 * 获取视图 x 坐标
 *
 *  @return x 坐标
 */
- (CGFloat)getX;

/**
 * 获取视图 y 坐标
 *
 *  @return y 坐标
 */
- (CGFloat)getY;

/**
 * 获取视图 宽度
 *
 *  @return 宽度
 */
- (CGFloat)getWidth;

/**
 * 获取视图 高度
 *
 *  @return 高度
 */
- (CGFloat)getHeight;

/**
 * 获取视图 最右边距屏幕左边的距离
 *
 *  @return 距离
 */
- (CGFloat)getMaxX;

/**
 * 获取视图 最下边距屏幕左边的距离
 *
 *  @return 距离
 */
- (CGFloat)getMaxY;

/**
 * 获取视图 最左边 距 父视图左边 距离
 *
 *  @return 距离
 */
- (CGFloat)getMinX;

/**
 * 获取视图 最上边 距 父视图上边 距离
 *
 *  @return 距离
 */
- (CGFloat)getMinY;

/**
 *  获取视图 中心点 X
 *
 *  @return center.x
 */
- (CGFloat)getMidX;

/**
 *  获取视图 中心点 Y
 *
 *  @return center.y
 */
- (CGFloat)getMidY;

/**
 *  切圆
 */
- (void)fillCorner;

/**
 *  切指定圆角
 *
 *  @param radius 圆角半径
 */
- (void)cornerWithRadius:(CGFloat)radius;

/**
 *  上部横线
 */
- (void)topLineWithColor:(CGColorRef)cgColor;

/**
 *  下部横线
 */
- (void)bottomLineWithColor:(CGColorRef)cgColor;

/**
 *  画线
 *
 *  @param top   居上
 *  @param left  居左
 *  @param right 居右
 */
- (void)lineFromTop:(float)top left:(float)left toRight:(float)right color:(CGColorRef)cgColor;

/**
 设置origin

 @param origin origin
 */
- (void)setOrigin:(CGPoint)origin;

/**
 设置size

 @param size size
 */
- (void)setSize:(CGSize)size ;

@end



