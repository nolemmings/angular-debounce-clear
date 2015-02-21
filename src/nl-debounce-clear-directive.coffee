(angular) ->
  angular.module 'angularDebounceClear', []
  .directive 'nlDebounceClear', ->
    require: 'ngModel'
    restrict: 'A'
    link: ($scope, element, attrs, ngModelCtrl) ->
      console.log 'Im here. Honey! Boney!'