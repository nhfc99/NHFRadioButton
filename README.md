# NHFRadioButton
<h2>介绍</h2>
<p>这是一个自由度非常大的单选框按钮组件</p>
<h2>安装</h2>
<ul>
<li>pod 'NHFRadioButton'</li>
<li>手动下载然后将文件夹拖至工程中即可</li>
</ul>
<h2>使用方法</h2>
        CGFloat everyHeight = 40.f;//每行的高度
        CGFloat everyLineBoth = 10.f;//行与行间的间距
        CGFlost bothSides = 15.f;//左边的视图与右边视图的间距（左边选择图片与后边的视图的间距）
        _nhfRadioButton = [[NHFRadioButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(titleLabel.frame), [DeviceInfo ScreenSize].width, (everyHeight+everyLineBoth)*2+everyLineBoth)
                                             NHFRadioButtonType:NHFRadioButtonTypeOnlyOneSelect
                                                  everyLineBoth:everyLineBoth
                                                      bothSides:bothSides
                                        buttonWithRightViewBoth:10.f
                                           NHFRadioButtonAction:^(NSInteger item) {
                                           //这里回调选择的某行
                                               selectItem = item;
        }];
        [self addSubview:_nhfRadioButton];
        _nhfRadioButton.selectIco = [UIImage imageNamed:@"only_unselect_ico"];
        _nhfRadioButton.unSelectIcos = [UIImage imageNamed:@"only_select_ico"];
        NSMutableArray *rightViews = [NSMutableArray new];
        
        //微信
        UIView *wxView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [DeviceInfo ScreenSize].width-100, everyHeight)];
        [wxView setUserInteractionEnabled:false];
        [rightViews addObject:wxView];
        UIImageView *wxImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, everyHeight, everyHeight)];
        [wxImageView setImage:[UIImage imageWithContentsOfFile:[DeviceInfo AppBaseResourcePath:@"weixin_pay_ico.png"]]];
        [wxView addSubview:wxImageView];
        UILabel *wxLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(jinheImageView.frame)+MARGIN/2, 0, 100, everyHeight)];
        [wxLabel setFont:[UIFont fontByName:nil fontSize:16]];
        [wxLabel setText:@"微信支付"];
        [wxView addSubview:wxLabel];
        
        //支付宝
        UIView *zfbView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [DeviceInfo ScreenSize].width-100, everyHeight)];
        [zfbView setUserInteractionEnabled:false];
        [rightViews addObject:zfbView];
        UIImageView *zfbImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, everyHeight, everyHeight)];
        [zfbImageView setImage:[UIImage imageWithContentsOfFile:[DeviceInfo AppBaseResourcePath:@"zhifubao_pay_ico.png"]]];
        [zfbView addSubview:zfbImageView];
        UILabel *zfbLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(jinheImageView.frame)+MARGIN/2, 0, 100, everyHeight)];
        [zfbLabel setFont:[UIFont fontByName:nil fontSize:16]];
        [zfbLabel setText:@"微信支付"];
        [zfbView addSubview:zfbLabel];
        
        _nhfRadioButton.rightViews = rightViews;
        [_nhfRadioButton updateView];

