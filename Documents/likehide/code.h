// code injection like 
// mod by p4n7o3L
@interface BLSDKVideoPlayer : NSObject
@property(retain, nonatomic) NSString* videoUrl;
@end

@interface BVVideoPlayView : NSObject
@property(readonly, nonatomic) BLSDKVideoPlayer* videoPlayer;
@end

@interface BVVideodetailShortVideoViewController : UIViewController
@property(retain, nonatomic) BVVideoPlayView *videoPlayView;
@property(nonatomic, retain) UIButton *hDownloadButton; // button buat download
- (void)hDownloadButtonPressed; // button buat download
@end

./code load url 
NSString *loadurl = self.videoPlayView.videoPlayer.videoUrl ;

/////////////////////////////////////////////////////////////////////////////