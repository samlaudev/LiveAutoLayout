//
//  LiveView.m
//  LiveAutoLayout
//
//  Created by Sam Lau on 4/23/15.
//  Copyright (c) 2015 Sam Lau. All rights reserved.
//

#import "LiveView.h"
#import <Masonry/Masonry.h>
#import <ClassyLiveLayout/ClassyLiveLayout.h>
#import <Classy/Classy.h>

@implementation LiveView

#pragma mark - Add subviews and define layout
- (void)addSubviews
{
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.redBoxView];
    [self addSubview:self.blueBoxView];
}

- (void)defineLayout
{
    [self.redBoxView mas_updateConstraints:^(MASConstraintMaker* make){
        make.top.equalTo(@(self.redBoxView.cas_marginTop));
        make.left.equalTo(@(self.redBoxView.cas_marginLeft));
        make.width.equalTo(@(self.redBoxView.cas_sizeWidth));
        make.height.equalTo(@(self.redBoxView.cas_sizeHeight));
    }];
    
    [self.blueBoxView mas_updateConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(@(self.blueBoxView.cas_marginTop));
        make.right.equalTo(@(self.blueBoxView.cas_marginRight));
        make.width.equalTo(@(self.blueBoxView.cas_sizeWidth));
        make.height.equalTo(@(self.blueBoxView.cas_sizeHeight));
    }];
}

#pragma mark - Lazy initialization
- (UIView*)redBoxView
{
    if (!_redBoxView) {
        _redBoxView = [UIView new];
        _redBoxView.cas_styleClass = @"redBox";
        _redBoxView.backgroundColor = [UIColor redColor];
    }
    
    return _redBoxView;
}

- (UIView*)blueBoxView
{
    if (!_blueBoxView) {
        _blueBoxView = [UIView new];
        _blueBoxView.cas_styleClass = @"blueBox";
        _blueBoxView.backgroundColor = [UIColor blueColor];
    }
    
    return _blueBoxView;
}

@end
