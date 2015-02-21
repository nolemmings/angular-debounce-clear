(function(angular) {
  return angular.module('angular-debounce-clear', []).directive('nlDebounceClear', function() {
    return {
      require: 'ngModel',
      restrict: 'A',
      link: function($scope, element, attrs, ngModelCtrl) {
        return element.on('input', function() {
          if (element.val() === '') {
            return ngModelCtrl.$setViewValue(element.val(), 'clear');
          }
        });
      }
    };
  });
})(angular);
