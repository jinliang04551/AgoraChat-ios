//
//  ACDUtil.m
//  ChatDemo-UI3.0
//
//  Created by liang on 2021/11/8.
//  Copyright © 2021 easemob. All rights reserved.
//

#import "ACDUtil.h"

@implementation ACDUtil

+ (NSAttributedString *)attributeContent:(NSString *)content color:(UIColor *)color font:(UIFont *)font {
    
    NSAttributedString *attrString = [[NSAttributedString alloc] initWithString:content attributes:
        @{NSForegroundColorAttributeName:color,
          NSFontAttributeName:font
        }];
    return attrString;
}

+ (UIBarButtonItem *)customBarButtonItem:(NSString *)title
                                  action:(SEL)action
                            actionTarget:(id)actionTarget {
    UIButton *customButton = [UIButton buttonWithType:UIButtonTypeCustom];
    customButton.frame = CGRectMake(0, 0, 50, 40);
    customButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
    [customButton setTitleColor:ButtonEnableBlueColor forState:UIControlStateNormal];
    [customButton setTitle:title forState:UIControlStateNormal];
    [customButton setTitle:title forState:UIControlStateHighlighted];
    [customButton addTarget:actionTarget action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *customNavItem = [[UIBarButtonItem alloc] initWithCustomView:customButton];

    return customNavItem;
}

@end
