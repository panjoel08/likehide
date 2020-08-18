#include "l.h"


%group Watermark
%hook BVVideodetailShortVideoViewController 
    %property (nonatomic, retain) UIButton *hDownloadButton;
- (void)viewDidLoad { 
	%orig;
	        self.hDownloadButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.hDownloadButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [self.hDownloadButton addTarget:self action:@selector(hDownloadButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.hDownloadButton setTitle:@"" forState:UIControlStateNormal];
        [self.hDownloadButton setImage:[UIImage imageWithContentsOfFile:@"/Library/Application Support/likeapp/download.png"] forState:UIControlStateNormal];
        self.hDownloadButton.imageEdgeInsets = UIEdgeInsetsMake(3.0, 3.0, 3.0, 3.0);
        self.hDownloadButton.frame = CGRectMake(self.view.frame.size.width - 40 - 10, 380.0, 35.0, 35.0);
        [self.view addSubview:self.hDownloadButton];
    }

     %new
    - (void)hDownloadButtonPressed:(UIButton *)sender {
      NSString *videoURLString = self.videoPlayView.videoPlayer.videoUrl;
      if ([videoURLString containsString:@".m3u8"]) {
        [HCommon showAlertMessage:@"This video format is not supported (.m3u8 file extension)" withTitle:@"Not supported" viewController:nil];
      }
      [[[HDownloadMediaWithProgress alloc] init] checkPermissionToPhotosAndDownload:videoURLString appendExtension:@"mp4" mediaType:Video toAlbum:@"Like" viewController:self];
    }

%end
%end


%ctor {
  %init(Watermark);
}