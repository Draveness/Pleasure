//
//  PLSIcon.h
//  Pleasure
//
//  Created by apple on 15/6/2.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PLSIcon :UIView

typedef void(^PLSTapActionBlock)(PLSIcon *);

@property (nonatomic, strong) UIImage *icon;
@property (nonatomic, assign) UIOffset iconOffset;
@property (nonatomic, assign) CGFloat iconScale;
@property (nonatomic, strong) PLSTapActionBlock tapBlock;

- (instancetype)initWithFrame:(CGRect)frame icon:(UIImage *)icon;
- (instancetype)initWithSize:(CGFloat)size icon:(UIImage *)icon;

@end
