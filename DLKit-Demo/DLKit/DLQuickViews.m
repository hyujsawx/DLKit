//
//  DLQuickViews.m
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#import "DLQuickViews.h"
#import "DLFuncHeader.h"

@interface DLQuickCommonFunc : NSObject
@end

@implementation DLQuickCommonFunc

+ (UIImage *)getImageFromIdObject:(id)obj {
    if ([obj isKindOfClass:[UIImage class]]) {
        return (UIImage *)obj;
    }else if ([obj isKindOfClass:[NSData class]]) {
        return [UIImage imageWithData:(NSData *)obj];
    }else if ([obj isKindOfClass:[NSString class]]) {
        NSString *imageStr = (NSString *)obj;
        if ([imageStr containsString:NSHomeDirectory()]) {
            return [UIImage imageWithContentsOfFile:obj];
        }else {
            return IMAGE(obj);
        }
    }else {
        return nil;
        // ... todo
    }
}

@end


@implementation UIView (DLQuick)

- (UIView *(^)(CGRect))dl_frame {
    return ^ (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint))dl_center {
    return ^ (CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UIView *(^)(UIColor *))dl_backgroundColor {
    return ^ (UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (void (^)(UIView *))dl_addToView {
    return  ^ (UIView *view) {
        [view addSubview:self];
    };
}

@end


@implementation UIImageView (DLQuick)

- (UIImageView *(^)(CGRect))dl_frame {
    return ^ (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIImageView *(^)(CGPoint))dl_center {
    return ^ (CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UIImageView *(^)(id))dl_image {
    return ^ (id image) {
        self.image = [DLQuickCommonFunc getImageFromIdObject:image];
        return self;
    };
}

@end


@implementation UILabel (DLQuick)

- (UILabel *(^)(CGRect))dl_frame {
    return ^ (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UILabel *(^)(CGPoint))dl_center {
    return ^ (CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UILabel *(^)(UIColor *))dl_backgroundColor {
    return ^ (UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UILabel *(^)(NSString *))dl_text {
    return ^ (NSString *text) {
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *))dl_textColor {
    return ^ (UIColor *color) {
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(NSInteger))dl_font {
    return ^ (NSInteger font) {
        self.font = FONT(font);
        return self;
    };
}

- (UILabel *(^)(NSInteger))dl_blodFont {
    return ^ (NSInteger font) {
        self.font = [UIFont boldSystemFontOfSize:font];
        return self;
    };
}

- (UILabel *(^)(NSInteger))dl_numberOfLines {
    return ^ (NSInteger lines) {
        self.numberOfLines = lines;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))dl_alignment {
    return ^ (NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel *(^)(id, SEL))dl_action {
    return ^ (id target ,SEL action) {
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
        [self addGestureRecognizer:tap];
        return self;
    };
}

@end


@implementation UIButton (DLQuick)

- (UIButton *(^)(CGRect))dl_frame {
    return ^ (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIButton *(^)(CGPoint))dl_center {
    return ^ (CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UIButton *(^)(UIColor *))dl_backgroundColor {
    return ^ (UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

- (UIButton *(^)(NSString *))dl_title {
    return ^ (NSString *title) {
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))dl_titleColor {
    return ^ (UIColor *titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSInteger))dl_font {
    return ^ (NSInteger font) {
        self.titleLabel.font = FONT(font);
        return self;
    };
}

- (UIButton *(^)(NSInteger))dl_blodFont {
    return ^ (NSInteger font) {
        self.titleLabel.font = [UIFont boldSystemFontOfSize:font];
        return self;
    };
}

-(UIButton *(^)(UIControlContentHorizontalAlignment))dl_alignment {
    return ^ (UIControlContentHorizontalAlignment alignment) {
        self.contentHorizontalAlignment = alignment;
        return self;
    };
}

- (UIButton *(^)(id))dl_image {
    return ^ (id image) {
        [self setImage:[DLQuickCommonFunc getImageFromIdObject:image] forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(id))dl_backgroundImage {
    return ^ (id image) {
        [self setBackgroundImage:[DLQuickCommonFunc getImageFromIdObject:image] forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(id, SEL))dl_action {
    return ^ (id target ,SEL action) {
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

- (UIButton *(^)(NSInteger))dl_tag {
    return ^ (NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

- (UIButton *(^)(ButtonEdgeInsetsStyle, CGFloat))dl_layout {
    return ^ (ButtonEdgeInsetsStyle style ,CGFloat space) {
        [self layoutButtonWithEdgeInsetsStyle:style imageTitleSpace:space];
        return self;
    };
}

@end


@implementation UITextField (DLQuick)

- (UITextField *(^)(CGRect))dl_frame {
    return ^ (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UITextField *(^)(CGPoint))dl_center {
    return ^ (CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UITextField *(^)(UIColor *))dl_backgroundColor {
    return ^ (UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UITextField *(^)(NSString *))dl_text {
    return ^ (NSString *text) {
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(UIColor *))dl_textColor {
    return ^ (UIColor *color) {
        self.textColor = color;
        return self;
    };
}

- (UITextField *(^)(NSString *))dl_placeHolder {
    return ^ (NSString *placeHolder) {
        self.placeholder = placeHolder;
        return self;
    };
}

- (UITextField *(^)(NSInteger))dl_font {
    return ^ (NSInteger font) {
        self.font = FONT(font);
        return self;
    };
}

- (UITextField *(^)(NSInteger))dl_blodFont {
    return ^ (NSInteger font) {
        self.font = [UIFont boldSystemFontOfSize:font];
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment))dl_alignment {
    return ^ (NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}


- (UITextField *(^)(UIReturnKeyType))dl_returnKeyType {
    return ^ (UIReturnKeyType type) {
        self.returnKeyType = type;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))dl_clearButtonMode {
    return ^ (UITextFieldViewMode mode) {
        self.clearButtonMode = mode;
        return self;
    };
}

- (UITextField *(^)(id))dl_delegate {
    return ^ (id obj) {
        self.delegate = obj;
        return self;
    };
}

- (UITextField *(^)(id, SEL))dl_action {
    return ^ (id target ,SEL action) {
        [self addTarget:target action:action forControlEvents:UIControlEventEditingChanged];
        return self;
    };
}

@end


@implementation UITableView (DLQuick)

- (UITableView *(^)(CGRect))dl_frame {
    return ^ (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UITableView *(^)(CGPoint))dl_center {
    return ^ (CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UITableView *(^)(UIColor *))dl_backgroundColor {
    return ^ (UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UITableView *(^)(UITableViewCellSeparatorStyle))dl_separatorStyle {
    return ^ (UITableViewCellSeparatorStyle style) {
        self.separatorStyle = style;
        return self;
    };
}

- (UITableView *(^)(id))dl_delegateAndDataSource {
    return ^ (id obj) {
        self.delegate = obj;
        self.dataSource = obj;
        return self;
    };
}

@end



