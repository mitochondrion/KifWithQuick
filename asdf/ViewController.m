#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mySpecialLabel.text = @"OMGWTFBBQ";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttanDidTouchUpInside:(id)buttan {
    self.mySpecialLabel.text = self.textField.text;
}

@end
