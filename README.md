# angular-debounce-clear
Simple directive that adds a clear event for debounce. When using [ngModelOptions](https://docs.angularjs.org/api/ng/directive/ngModelOptions) to add debounce to your `ngModel` fields, this directive adds the possibility to use `clear` as an event, triggered by clearing the field.

## Usage
Just add `nl-debounce-clear` to your `ng-model` annotated fields to use `clear` as an event for the debounce and updateOn properties of `ng-model-options`.

```
<input type="text"
	ng-model="name"
	ng-model-options="{ updateOn: 'default clear', debounce: {'default': 1000, 'clear': 0} }"
	nl-debounce-clear />
```

The `clear` event is triggerend whenever a user decides to remove all content from a field.

## Installation
Just use bower to install the package:

```
bower install --save angular-debounce-clear
```

In your AngularJS app, add a dependency:

```
angular.module('myApp', ['myDependency', ..., 'angular-debounce-clear'])
```

Now, you are able to use it as described under *Usage*.

## Seeing before believing
Want to run an example first? Take these steps:

Clone the repo:

```
git clone https://github.com/nolemmings/angular-debounce-clear ./debounce && cd ./debounce
```

Install necessary tooling:

```
npm install
```

Run our example:

```
gulp example
```