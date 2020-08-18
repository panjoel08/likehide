#line 1 "Tweak.xm"
#include "l.h"



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class BVVideodetailShortVideoViewController; 


#line 4 "Tweak.xm"
static void (*_logos_orig$Watermark$BVVideodetailShortVideoViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL BVVideodetailShortVideoViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$Watermark$BVVideodetailShortVideoViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL BVVideodetailShortVideoViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButtonPressed$(_LOGOS_SELF_TYPE_NORMAL BVVideodetailShortVideoViewController* _LOGOS_SELF_CONST, SEL, UIButton *); 
 
    __attribute__((used)) static UIButton * _logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButton(BVVideodetailShortVideoViewController * __unused self, SEL __unused _cmd) { return (UIButton *)objc_getAssociatedObject(self, (void *)_logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButton); }; __attribute__((used)) static void _logos_method$Watermark$BVVideodetailShortVideoViewController$setHDownloadButton(BVVideodetailShortVideoViewController * __unused self, SEL __unused _cmd, UIButton * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButton, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
static void _logos_method$Watermark$BVVideodetailShortVideoViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL BVVideodetailShortVideoViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { 
	_logos_orig$Watermark$BVVideodetailShortVideoViewController$viewDidLoad(self, _cmd);
	        self.hDownloadButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.hDownloadButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [self.hDownloadButton addTarget:self action:@selector(hDownloadButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.hDownloadButton setTitle:@"" forState:UIControlStateNormal];
        [self.hDownloadButton setImage:[UIImage imageWithContentsOfFile:@"/Library/Application Support/likeapp/download.png"] forState:UIControlStateNormal];
        self.hDownloadButton.imageEdgeInsets = UIEdgeInsetsMake(3.0, 3.0, 3.0, 3.0);
        self.hDownloadButton.frame = CGRectMake(self.view.frame.size.width - 40 - 10, 380.0, 35.0, 35.0);
        [self.view addSubview:self.hDownloadButton];
    }

     
    static void _logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButtonPressed$(_LOGOS_SELF_TYPE_NORMAL BVVideodetailShortVideoViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIButton * sender) {
      NSString *videoURLString = self.videoPlayView.videoPlayer.videoUrl;
      if ([videoURLString containsString:@".m3u8"]) {
        [HCommon showAlertMessage:@"This video format is not supported (.m3u8 file extension)" withTitle:@"Not supported" viewController:nil];
      }
      [[[HDownloadMediaWithProgress alloc] init] checkPermissionToPhotosAndDownload:videoURLString appendExtension:@"mp4" mediaType:Video toAlbum:@"Like" viewController:self];
    }
	



















static __attribute__((constructor)) void _logosLocalCtor_a2cc5a99(int __unused argc, char __unused **argv, char __unused **envp) {
  {Class _logos_class$Watermark$BVVideodetailShortVideoViewController = objc_getClass("BVVideodetailShortVideoViewController"); MSHookMessageEx(_logos_class$Watermark$BVVideodetailShortVideoViewController, @selector(viewDidLoad), (IMP)&_logos_method$Watermark$BVVideodetailShortVideoViewController$viewDidLoad, (IMP*)&_logos_orig$Watermark$BVVideodetailShortVideoViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIButton *), strlen(@encode(UIButton *))); i += strlen(@encode(UIButton *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$Watermark$BVVideodetailShortVideoViewController, @selector(hDownloadButtonPressed:), (IMP)&_logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButtonPressed$, _typeEncoding); }{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIButton *)); class_addMethod(_logos_class$Watermark$BVVideodetailShortVideoViewController, @selector(hDownloadButton), (IMP)&_logos_method$Watermark$BVVideodetailShortVideoViewController$hDownloadButton, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIButton *)); class_addMethod(_logos_class$Watermark$BVVideodetailShortVideoViewController, @selector(setHDownloadButton:), (IMP)&_logos_method$Watermark$BVVideodetailShortVideoViewController$setHDownloadButton, _typeEncoding); } }
}
