//
//  DLCommonFunc.m
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#import "DLCommonFunc.h"
#import "MBProgressHUD.h"

@implementation DLCommonFunc

+ (void)pushVCWithOutTabbar:(UIViewController *)vc selfVC:(UIViewController *)selfVC{
    vc.hidesBottomBarWhenPushed = YES;
    [selfVC.navigationController pushViewController:vc animated:YES];
}

+ (void)showAlert:(NSString *)title {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:title preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:action];
    [[self getCurrentVC] presentViewController:alert animated:YES completion:nil];
}

+ (UIImage *)createImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f,0.0f,1.0f,1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *myImage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return myImage;
}

+ (UIViewController *)getCurrentVC {
    UIWindow *window = [[UIApplication sharedApplication].windows firstObject];
    if (!window) return nil;
    UIView *tempView;
    for (UIView *subview in window.subviews) {
        if ([[subview.classForCoder description] isEqualToString:@"UILayoutContainerView"]) {
            tempView = subview;
            break;
        }
    }
    if (!tempView) tempView = [window.subviews lastObject];
    id nextResponder = [tempView nextResponder];
    while (![nextResponder isKindOfClass:[UIViewController class]] || [nextResponder isKindOfClass:[UINavigationController class]] || [nextResponder isKindOfClass:[UITabBarController class]]) {
        tempView =  [tempView.subviews firstObject];
        if (!tempView) {
            return nil;
        }
        nextResponder = [tempView nextResponder];
    }
    return  (UIViewController *)nextResponder;
}

+ (UITableViewCell *)cellWithName:(NSString *)cellName tableView:(UITableView *)tableView {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[NSClassFromString(cellName) alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    return cell;
}

+ (UITableViewCell *)cellHasXibWithName:(NSString *)cellName tableView:(UITableView *)tableView {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellName owner:nil options:nil];
        cell = [nib firstObject];
    }
    return cell;
}

+ (void)hudWithText:(NSString *)text view:(UIView *)view{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.detailsLabel.text = text;
    hud.margin = 10.f;
    [hud setOffset:CGPointMake(0, 150.f)];
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:2];
}

+ (NSString *)getPath:(DirectoryType)type {
    if (type == DirectoryTypeTemporary) {
        return [NSTemporaryDirectory() substringToIndex:NSTemporaryDirectory().length-1];
    }
    if (type == DirectoryTypeDocument) {
        return NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    }
    if (type == DirectoryTypeLibrary) {
        return NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES).firstObject;
    }
    if (type == DirectoryTypePreference) {
        return [[self getPath:DirectoryTypeLibrary] stringByAppendingString:@"/Preferences"];
    }
    if (type == DirectoryTypeCaches) {
        return NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    }
    return NSHomeDirectory();
}

+ (NSDictionary *)getUserDefaultsDictionary {
    return [NSDictionary dictionaryWithContentsOfFile:[[[self getPath:DirectoryTypePreference] stringByAppendingPathComponent:[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]] stringByAppendingString:@".plist"]];
}

@end






