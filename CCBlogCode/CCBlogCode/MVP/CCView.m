//
//  CCView.m
//  CCBlogCode
//
//  Created by zerocc on 2017/5/4.
//  Copyright © 2017年 zerocc. All rights reserved.
//

#import "CCView.h"


@interface CCView ()
@property (weak, nonatomic) UIImageView *iconView;
@property (weak, nonatomic) UILabel *nameLabel;

@end

@implementation CCView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(0, 0, 100, 100);
        [self addSubview:iconView];
        _iconView = iconView;
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(0, 100, 100, 30);
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
    }
    
    return self;
}

- (void)setName:(NSString *)name andImage:(NSString *)image {
    _iconView.image = [UIImage imageNamed:image];
    _nameLabel.text = name;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.delegate respondsToSelector:@selector(viewDidClick:)]) {
        [self.delegate viewDidClick:self];
    }
}

@end
