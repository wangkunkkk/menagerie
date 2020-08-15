if (require.extensions['.coffee']) {
  module.exports = require('./lib/options-stream.coffee');
} else {
  module.exports = require('./out/release/lib/options-stream.js');
}
