
#import <UIKit/UIKit.h>

@class CFCoverFlowView;
@protocol CFCoverFlowViewDelegate <NSObject>

@optional
- (void)coverFlowView:(CFCoverFlowView *)coverFlowView didScrollPageItemToIndex:(NSInteger)index;
- (void)coverFlowView:(CFCoverFlowView *)coverFlowView didSelectPageItemAtIndex:(NSInteger)index;

@end

@interface CFCoverFlowView : UIView

@property (nonatomic, weak) id <CFCoverFlowViewDelegate> delegate;

@property (nonatomic, assign) CFTimeInterval animationDuration;
@property (nonatomic, getter = isAutoAnimation) BOOL autoAnimation;

/**
 *  default width is half of cover flow view's width
 */
@property (nonatomic, assign) CGFloat pageItemWidth;

/**
 *  default height is cover flow view's height
 */
@property (nonatomic, assign) CGFloat pageItemHeight;

/**
 *  default corner radius is 0.0
 */
@property (nonatomic, assign) CGFloat pageItemCornerRadius;

/**
 *  adjust pageItemCoverWidth and pageItemWidth to change the space between page items
 */
@property (nonatomic, assign) CGFloat pageItemCoverWidth;

- (void)setPageItemsWithImageNames:(NSArray *)imageNames;
//- (void)setPageItemsWithImageURLs:(NSArray *)urls placeholderImage:(UIImage *)placeholder;

@end
