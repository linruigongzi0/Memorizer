//
//  MRMineProfileViewController.m
//  Memorizer
//
//  Created by Reason Lee on 2018/11/11.
//  Copyright © 2018 Reason Lee. All rights reserved.
//

#import "MRMineProfileViewController.h"
#import <Masonry/Masonry.h>

@interface MRMineProfileViewController ()

@property (strong, nonatomic) UIImageView *locationIconImage;

@end

@implementation MRMineProfileViewController

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.nameLabel];
        [self addSubview:self.locationIconImage];
        [self addSubview:self.locationLabel];
        [self addSubview:self.profileImage];
        
    }
    
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(16);
        make.width.mas_equalTo(202);
        make.height.mas_equalTo(41);
        make.top.equalTo(self.mas_top).offset(66);
    }];
    
    [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(35);
        make.top.equalTo(self.mas_top).offset(110);
        make.width.mas_equalTo(82);
        make.height.mas_equalTo(14);
    }];
}



- (UILabel *)nameLabel {
    if(!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
    }
    
    return _nameLabel;
}

- (UIImageView *)locationIconImage {
    if(!_locationIconImage) {
        _locationIconImage = [[UIImageView alloc] init];
    }
    return _locationIconImage;
}

- (UILabel *)locationLabel {
    if(!_locationLabel) {
        _locationLabel = [[UILabel alloc] init];
    }
    
    return _locationLabel;
}

- (UIImageView *)profileImage {
    if(!_profileImage) {
        _profileImage = [[UIImageView alloc] init];
    }
    return _profileImage;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
