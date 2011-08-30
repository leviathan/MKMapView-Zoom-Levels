//
//  MKMapView+ZoomLevel.h
//  Maps Zoom Level Demo
//
//  Created by colins on 30/08/11.
//  Copyright 2011 mobile melting GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MKMapView (ZoomLevel)

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
                  zoomLevel:(NSUInteger)zoomLevel
                   animated:(BOOL)animated;

@end
