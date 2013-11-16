//
//  MapViewController.m
//  MapSearch
//
//  Created by Timothy Ward on 11/16/13.
//
//

#import "MapViewController.h"
#import "MapBox.h"

@implementation MapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    RMMapBoxSource *tileSource = [[RMMapBoxSource alloc] initWithMapID:@"examples.map-z2effxa8"];
    
    CLLocationDegrees lat = 37;
    CLLocationDegrees lon = -122;
    CLLocationCoordinate2D Coord = CLLocationCoordinate2DMake(lat, lon);

    float initialTileSourceZoomLevel = 1.0f;
    
    float initialTileSourceMaxZoomLevel = 1.0f;
    float initialTileSourceMinZoomLevel = 0.001f;
    
    
    //TODO: frame.size WTF
  
    NSLog(@"self.view.bounds = %@", NSStringFromCGRect(self.view.bounds));
    NSLog(@"self.view.frame = %@", NSStringFromCGRect(self.view.bounds));
    
    CGRect Size = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    CGRect Size2 = CGRectMake(0, 0, 320, 568);
    
    NSLog(@"Size = %@", NSStringFromCGRect(Size));
    NSLog(@"Size2 = %@", NSStringFromCGRect(Size2));
    
    
    RMMapView *mapView = [[RMMapView alloc]
                          initWithFrame:CGRectMake(0, 0, 320, 568)
                                            andTilesource:tileSource
                                         centerCoordinate:Coord
                                                zoomLevel:initialTileSourceZoomLevel
                                             maxZoomLevel:initialTileSourceMaxZoomLevel
                                             minZoomLevel:initialTileSourceMinZoomLevel
                                          backgroundImage:nil];
    
    
    [self.MapViewLayer addSubview:mapView];
    
    
    RMPointAnnotation *jon = [[RMPointAnnotation alloc] initWithMapView:mapView
                                                                    coordinate:mapView.centerCoordinate
                                                                      andTitle:@"Susie - 329 pts"];
    
    [mapView addAnnotation:jon];
    
    NSLog(@"self.view.bounds = %@", NSStringFromCGRect(self.view.bounds));
    NSLog(@"self.view.frame = %@", NSStringFromCGRect(self.view.bounds));
    NSLog(@"mapView.frame = %@", NSStringFromCGRect(mapView.frame));
    NSLog(@"mapView.bounds = %@", NSStringFromCGRect(mapView.bounds));
    
}
- (IBAction)ProfileClick:(id)sender {

    
}

@end
