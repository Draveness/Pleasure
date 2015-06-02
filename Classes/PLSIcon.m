//
//  PLSIcon.m
//  Pleasure
//
//  Created by apple on 15/6/2.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "PLSIcon.h"

CGFloat const iconSize = 30.0f;

@interface PLSIcon ()

@property (nonatomic, strong) UIImageView *iconImageView;

@end

@implementation PLSIcon

- (instancetype)initWithSize:(CGFloat)size icon:(UIImage *)icon {
    return [self initWithFrame:CGRectMake(0, 0, size, size) icon:icon];
}

- (instancetype)initWithFrame:(CGRect)frame icon:(UIImage *)icon {
    if (self = [super initWithFrame:frame]) {
        _icon = icon;

        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.frame = self.bounds;
        _iconImageView.contentMode = UIViewContentModeCenter;
        _iconImageView.image = icon;

        _iconScale = 1.0;

        [self addSubview:_iconImageView];

        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:tap];
    }
    return self;
}

- (void)setIcon:(UIImage *)icon {
    _icon = icon;
    self.iconImageView.image = icon;
}

- (void)setIconOffset:(UIOffset)iconOffset {
    _iconOffset = iconOffset;
    
    CGPoint center = self.iconImageView.center;
    center.x += _iconOffset.horizontal;
    center.y += _iconOffset.vertical;
    self.iconImageView.center = center;
}

- (void)setIconScale:(CGFloat)iconScale {
    _iconScale = iconScale;

    self.iconImageView.transform = CGAffineTransformScale(CGAffineTransformIdentity, _iconScale, _iconScale);
}

- (void)tap {
    __weak PLSIcon *weakSelf = self;
    self.tapBlock(weakSelf);
}

@end
