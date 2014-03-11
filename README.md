# cordova-appsee

Cordova Appsee plugin repository. It works with cordova-3.4.0.

## Installation

1. You can install it as part of cordova hooks.

2. or just run the following in your project:

```
cordova plugin add https://github.com/reallyenglish/cordova-appsee.git
```

## Usage

Use the following code at the time of app initialization. You need to
sign-up with the [Appsee](http://appsee.com/) to get a valid key.

```
plugins.appsee.init(key);
```

We've tested it with a backbone application and it worked fine for us.
