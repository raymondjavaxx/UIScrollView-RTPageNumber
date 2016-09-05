//
//  UIScrollView+RTPageNumber.m
//
//  Created by Ramon Torres on 12/24/11.
//  Copyright (c) 2011 Ramon Torres. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software
//  is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
//  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "UIScrollView+RTPageNumber.h"

@implementation UIScrollView (RTPageNumber)

-(NSInteger)rt_totalPages {
    return (NSInteger)ceil((self.contentSize.width/self.frame.size.width));
}

-(BOOL)rt_isLastPage {
    return (self.rt_pageNumber == (self.rt_totalPages - 1));
}

-(void)rt_setPageNumber:(NSInteger)pageNumber animated:(BOOL)animated {
    NSAssert(pageNumber >= 0, @"Page number cannot be negative");
    CGFloat offset = (self.frame.size.width * pageNumber);
    [self setContentOffset:CGPointMake(offset, 0.f) animated:animated];
}

-(void)rt_setPageNumber:(NSInteger)pageNumber {
    [self rt_setPageNumber:pageNumber animated:NO];
}

-(NSInteger)rt_pageNumber {
    CGFloat pageWidth = self.frame.size.width;
    return (NSInteger)floor((self.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
}

@end
