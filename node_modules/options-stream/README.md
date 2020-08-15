#Options Stream

![travis build info](https://api.travis-ci.org/q3boy/options-stream.png)


```javascript
var os = require('options-stream');

var options = os({ // code default options
	a: 1
	b: 2
}, 'etc/options.default.json' // project default options
, 'etc/options.hostname.ini' // host options
, 'etc/hotfix.yaml' // hotfix options
, 'etc/hotfix.ion' // overwrite options
);
```

