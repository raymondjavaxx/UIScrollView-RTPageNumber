//
//  UIScrollView+RTPageNumber.h
//
//  Created by Ramon Torres on 12/24/11.
//  Copyright (c) 2011-2016 Ramon Torres
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

#import <UIKit/UIKit.h>

/**
 This category adds a few methods to `UIScrollView` to make it
 easier to deal with page numbers.
 */
@interface UIScrollView (RTPageNumber)

/**
 Sets the page number.

 @param pageNumber The page.
 @param animated Whether or not to animate.
 */
-(void)rt_setPageNumber:(NSInteger)pageNumber animated:(BOOL)animated;

/**
 Sets the page number without animation.

 @param pageNumber The page to jump to.
 */
-(void)rt_setPageNumber:(NSInteger)pageNumber;

/**
 Returns the current page number.

 @return current page number.
 */
-(NSInteger)rt_pageNumber;


/**
 Returns `YES` if current page is last page.

 @return `YES` if last page, otherwise `NO`.
 */
-(BOOL)rt_isLastPage;

@end
