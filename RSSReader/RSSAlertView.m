//
//  RSSAlertView.m
//  RSSReader
//
//  Created by Admin on 22/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "RSSAlertView.h"

@interface RSSAlertView ()
@property (nonatomic, copy) void (^addRowBlock)(BOOL, NSInteger, NSString *, NSString *);
@end

@implementation RSSAlertView

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
        addRowBlock:(void (^)(BOOL cancelled, NSInteger buttonIndex, NSString *name, NSString *url))addRowBlock
  cancelButtonTitle:(NSString *)cancelButtonTitle
  otherButtonTitles:(NSString *)otherButtonTitles, ... {
    
    self = [self initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil ];
    
    if (self) {
        self.addRowBlock = addRowBlock;
        
        va_list _arguments;
        va_start(_arguments, otherButtonTitles);
        
        for (NSString *key = otherButtonTitles; key != nil; key = (NSString *)va_arg(_arguments, void *)) {
            [self addButtonWithTitle:key];
        }
        va_end(_arguments);
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    self.addRowBlock(buttonIndex==self.cancelButtonIndex, buttonIndex, [[self textFieldAtIndex:0] text], [[self textFieldAtIndex:1] text]);
}

@end
