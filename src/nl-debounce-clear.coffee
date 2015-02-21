((angular) ->
  angular.module 'angular-debounce-clear', []
  .directive 'nlDebounceClear', ->
    require: 'ngModel'
    restrict: 'A'
    link: ($scope, element, attrs, ngModelCtrl) ->
      element.on 'input', ->
        if element.val() is ''
          ngModelCtrl.$setViewValue element.val(), 'clear'
)(angular)