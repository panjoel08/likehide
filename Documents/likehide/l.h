  
#import <Foundation/Foundation.h>
#include    "HDownloadMedia.h"
#include "HCommon.h"
#include "HDownloadMediaWithProgress.h"



@interface BLSDKVideoPlayer : NSObject

@property(retain, nonatomic) NSString* videoUrl;

@end

@interface BVVideoPlayView : NSObject

@property(readonly, nonatomic) BLSDKVideoPlayer* videoPlayer;
@end

@interface BVVideodetailShortVideoViewController : UIViewController
@property(retain, nonatomic) BVVideoPlayView *videoPlayView;
@property(nonatomic, retain) UIButton *hDownloadButton; // new property
- (void)hDownloadButtonPressed; // new

@end

