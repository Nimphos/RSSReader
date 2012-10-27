//
//  RSSAlertView.h
//  RSSReader
//
//  Created by Admin on 22/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSAlertView : UIAlertView

- (id)initWithTitle:(NSString *)title message:(NSString *)message addRowBlock:(void (^)(BOOL cancelled, NSInteger buttonIndex, NSString *name, NSString *url))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

@end
