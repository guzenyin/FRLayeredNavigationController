/*
 * This file is part of FRLayeredNavigationController.
 *
 * Copyright (c) 2012, Apurva Mehta <apurva.1618@gmail.com>
 *               2013, Johannes Weiß <weiss@tux4u.de>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * The name of the author may not be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#import "FRNavigationBar.h"

static FRNavigationBar *_appearance = nil;

@implementation FRNavigationBar

+ (NSDictionary *)defaultTextAttributesIO6AndOlder
{
    return @{UITextAttributeFont: [UIFont boldSystemFontOfSize:20.5],
             UITextAttributeTextShadowColor: [UIColor whiteColor],
             UITextAttributeTextColor:[UIColor colorWithRed:111.0f/255.0f
                                                      green:118.0f/255.0f
                                                       blue:126.0f/255.0f
                                                      alpha:1.0f]};
}

+ (NSDictionary *)defaultTextAttributesIO7AndNewer
{
    return @{UITextAttributeFont: [UIFont boldSystemFontOfSize:18],
             UITextAttributeTextColor:[UIColor blackColor]};
}

+ (NSDictionary *)defaultTextAttributes
{
    return [FRNavigationBar defaultTextAttributesIO7AndNewer];
}

+ (FRNavigationBar *)appearance
{

    if (!_appearance){
        _appearance = [[FRNavigationBar alloc] init];
        _appearance.backgroundImage = nil;

        _appearance.titleTextAttributes = [FRNavigationBar defaultTextAttributes];
    }

    return _appearance;
}

+ (FRNavigationBar *)appearanceWhenContainedIn:(__unused Class <UIAppearanceContainer>)ContainerClass,...
{
    return [FRNavigationBar appearance];
}

@end
