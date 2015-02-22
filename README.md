# angular-debounce-clear
Simple AngularJS directive that adds a clear event for debounce.

Use the `nl-debounce-clear` directive to supplement [ngModelOptions](https://docs.angularjs.org/api/ng/directive/ngModelOptions) with a `clear` event for `debounce`, which is triggered when a user clears the `ngModel` field.

## Usage
Just add `nl-debounce-clear` to your `ng-model` annotated fields to use `clear` as an event for the `debounce` and `updateOn` properties of `ng-model-options`.

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

In your AngularJS app, add `angular-debounce-clear` as dependency:

```
angular.module('myApp', ['angular-debounce-clear'])
```

Now, you are able to use the `nl-debounce-clear` directive as described under *Usage*.

## Seeing before believing
Want to run a working example? Take these steps:

1. Clone the repo  
`git clone https://github.com/nolemmings/angular-debounce-clear ./debounce && cd ./debounce`

2. Install necessary tooling  
`npm install`

3. Run our example  
`gulp example`