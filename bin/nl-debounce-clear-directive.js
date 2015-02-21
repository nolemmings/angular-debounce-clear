(function(angular) {
  return angular.module('angularDebounceClear', []).directive('nlDebounceClear', function() {
    return {
      require: 'ngModel',
      restrict: 'A',
      link: function($scope, element, attrs, ngModelCtrl) {
        return console.log('Im here. Honey! Boney!');
      }
    };
  });
});
