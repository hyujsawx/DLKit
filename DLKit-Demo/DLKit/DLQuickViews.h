//
//  DLQuickViews.h
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DLCategory.h"

#define UIViewNew        [UIView new]
#define UIImageViewNew   [UIImageView new]
#define UILabelNew       [UILabel new]
#define UIButtonNew      [UIButton new]
#define UITextFieldNew   [UITextField new]
#define UITableViewNew   [UITableView new]

@interface UIView (DLQuick)

@property (nonatomic,copy,readonly) UIView *(^dl_frame)(CGRect frame);
@property (nonatomic,copy,readonly) UIView *(^dl_center)(CGPoint center);
@property (nonatomic,copy,readonly) UIView *(^dl_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic,copy,readonly) void (^dl_addToView)(UIView *view);

@end


@interface UIImageView (DLQuick)

@property (nonatomic,copy,readonly) UIImageView *(^dl_frame)(CGRect frame);
@property (nonatomic,copy,readonly) UIImageView *(^dl_center)(CGPoint center);
@property (nonatomic,copy,readonly) UIImageView *(^dl_image)(id image);

@end


@interface UILabel (DLQuick)

@property (nonatomic,copy,readonly) UILabel *(^dl_frame)(CGRect frame);
@property (nonatomic,copy,readonly) UILabel *(^dl_center)(CGPoint center);
@property (nonatomic,copy,readonly) UILabel *(^dl_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic,copy,readonly) UILabel *(^dl_text)(NSString *text);
@property (nonatomic,copy,readonly) UILabel *(^dl_textColor)(UIColor *color);
@property (nonatomic,copy,readonly) UILabel *(^dl_font)(NSInteger font);
@property (nonatomic,copy,readonly) UILabel *(^dl_blodFont)(NSInteger font);
@property (nonatomic,copy,readonly) UILabel *(^dl_numberOfLines)(NSInteger lines);
@property (nonatomic,copy,readonly) UILabel *(^dl_alignment)(NSTextAlignment alignment);
@property (nonatomic,copy,readonly) UILabel *(^dl_action)(id target ,SEL action);

@end


@interface UIButton (DLQuick)

@property (nonatomic,copy,readonly) UIButton *(^dl_frame)(CGRect frame);
@property (nonatomic,copy,readonly) UIButton *(^dl_center)(CGPoint center);
@property (nonatomic,copy,readonly) UIButton *(^dl_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic,copy,readonly) UIButton *(^dl_title)(NSString *title);
@property (nonatomic,copy,readonly) UIButton *(^dl_titleColor)(UIColor *dl_titleColor);
@property (nonatomic,copy,readonly) UIButton *(^dl_font)(NSInteger font);
@property (nonatomic,copy,readonly) UIButton *(^dl_blodFont)(NSInteger font);
@property (nonatomic,copy,readonly) UIButton *(^dl_alignment)(UIControlContentHorizontalAlignment alignment);
@property (nonatomic,copy,readonly) UIButton *(^dl_image)(id image);
@property (nonatomic,copy,readonly) UIButton *(^dl_backgroundImage)(id image);
@property (nonatomic,copy,readonly) UIButton *(^dl_action)(id target ,SEL action);
@property (nonatomic,copy,readonly) UIButton *(^dl_tag)(NSInteger tag);
@property (nonatomic,copy,readonly) UIButton *(^dl_layout)(ButtonEdgeInsetsStyle style ,CGFloat space);

@end


@interface UITextField (DLQuick)

@property (nonatomic,copy,readonly) UITextField *(^dl_frame)(CGRect frame);
@property (nonatomic,copy,readonly) UITextField *(^dl_center)(CGPoint center);
@property (nonatomic,copy,readonly) UITextField *(^dl_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic,copy,readonly) UITextField *(^dl_text)(NSString *text);
@property (nonatomic,copy,readonly) UITextField *(^dl_textColor)(UIColor *color);
@property (nonatomic,copy,readonly) UITextField *(^dl_placeHolder)(NSString *placeHolder);
@property (nonatomic,copy,readonly) UITextField *(^dl_font)(NSInteger font);
@property (nonatomic,copy,readonly) UITextField *(^dl_blodFont)(NSInteger font);
@property (nonatomic,copy,readonly) UITextField *(^dl_alignment)(NSTextAlignment alignment);
@property (nonatomic,copy,readonly) UITextField *(^dl_returnKeyType)(UIReturnKeyType type);
@property (nonatomic,copy,readonly) UITextField *(^dl_clearButtonMode)(UITextFieldViewMode mode);
@property (nonatomic,copy,readonly) UITextField *(^dl_delegate)(id obj);
@property (nonatomic,copy,readonly) UITextField *(^dl_action)(id target ,SEL action);

@end


@interface UITableView (DLQuick)

@property (nonatomic,copy,readonly) UITableView *(^dl_frame)(CGRect frame);
@property (nonatomic,copy,readonly) UITableView *(^dl_center)(CGPoint center);
@property (nonatomic,copy,readonly) UITableView *(^dl_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic,copy,readonly) UITableView *(^dl_separatorStyle)(UITableViewCellSeparatorStyle style);
@property (nonatomic,copy,readonly) UITableView *(^dl_delegateAndDataSource)(id obj);

@end

