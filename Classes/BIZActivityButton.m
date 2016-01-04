//
//  BIZActivityButton.m
//  IgorBizi@mail.ru
//
//  Created by IgorBizi@mail.ru on 12/21/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "BIZActivityButton.h"


@interface BIZActivityButton ()
@end


@implementation BIZActivityButton


#pragma mark - LifeCycle


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.showActivity = NO;
}

- (UIActivityIndicatorView *)activityView
{
    if (!_activityView) {
        _activityView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
        _activityView.color = [UIColor blackColor];
        _activityView.hidesWhenStopped = YES;
        _activityView.userInteractionEnabled = NO;
        [self addSubview:_activityView];
    }
    return _activityView;
}

- (void)layoutSubviews
{
    CGFloat w = 60;
    CGFloat h = 20;
    CGFloat x = (self.bounds.size.width - w) / 2;
    CGFloat y = (self.bounds.size.height - h) / 2;
    self.activityView.frame = CGRectMake(x, y, w, h);
    
    [super layoutSubviews];
}

#pragma mark - Events


- (void)setShowActivity:(BOOL)showActivity
{
    _showActivity = showActivity;
    if (showActivity) {
        [self.titleLabel removeFromSuperview];
        [self.activityView startAnimating];
    } else {
        [self.activityView stopAnimating];
        [self insertSubview:self.titleLabel atIndex:0];
    }
    
    [self setNeedsLayout];
}


@end
