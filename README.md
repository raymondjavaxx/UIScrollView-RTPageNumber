UIScrollView+PageNumber
===

Category for calculating and setting current page number on paging-enabled UIScrollViews

## Extra Methods

The category adds the following methods to UIScrollView and subclases:

* `-(NSInteger)rt_totalPages;`:

  Returns the total number of pages. Calculated from content and frame size.

* `-(void)rt_setPageNumber:(NSInteger)pageNumber animated:(BOOL)animated;`

  Sets the page number with animation.

* `-(void)rt_setPageNumber:(NSInteger)pageNumber;`
  
  Sets the page number without animation.

* `-(NSInteger)rt_pageNumber;`

  Returns the current page number.

* `-(BOOL)rt_isLastPage;`

  Returns true if current page is the last.

## Installation

Install via CocoaPods.

	pod 'UIScrollView+RTPageNumber', '~> 1.0'

## Usage

	#import <UIScrollView+RTPageNumber/UIScrollView+RTPageNumber.h>

	...

	UIScrollView *scrollView = ...;

	// Go to 3rd page
	[scrollView rt_setPageNumber:3 animated:YES];


Get current page:

	NSInteger currentPage = [scrollView rt_pageNumber];

Get total numbers of pages:

	NSInteger totalPages = [scrollView rt_totalPages];

Check for last page:

	-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
	    BOOL isOnLastPage = [scrollView rt_isLastPage];
	    if (isOnLastPage) {
	    	self.doneButton.hidden = NO;
	    }
	}

## Copyright

Copyright © 2011-2016 Ramon Torres. Released under the MIT License.
