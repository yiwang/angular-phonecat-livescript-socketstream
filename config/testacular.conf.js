basePath = '../';

files = [
  JASMINE,
  JASMINE_ADAPTER,
  'client/static/assets/app/*.js',
  'test/lib/angular/angular-mocks.js',
  'test/unit/**/*.js',
  'test/unit/**/*.ls'
];

autoWatch = false;

browsers = ['PhantomJS'];

singleRun = true;

preprocessors ={
  '**/*.ls': 'live'
}

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
};
