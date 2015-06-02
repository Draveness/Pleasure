//
//  PLSIcon+Pleasure.m
//  Pleasure
//
//  Created by apple on 15/6/2.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "PLSIcon+Pleasure.h"

@implementation PLSIcon (Pleasure)

- (void)fade {
    self.userInteractionEnabled = NO;
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.alpha = 0;
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.3
                                               delay:0
                                             options:UIViewAnimationOptionCurveEaseIn
                                          animations:^{
                                              self.alpha = 1;
                                          } completion:^(BOOL finished) {
                                              self.userInteractionEnabled = YES;
                                          }];
                     }];
}

- (void)pop {
    self.userInteractionEnabled = NO;
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.transform = CGAffineTransformScale(self.transform, 1.1, 1.1);
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.3
                                               delay:0
                                             options:UIViewAnimationOptionCurveEaseIn
                                          animations:^{
                                              self.transform = CGAffineTransformIdentity;
                                          } completion:^(BOOL finished) {
                                              self.userInteractionEnabled = YES;
                                          }];
                     }];
}

@end
