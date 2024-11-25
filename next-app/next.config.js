const path = require('path');

const nextConfig = {
    reactStrictMode: true,
    webpack: config => {
      config.resolve.fallback = { fs: false, net: false, tls: false };
      config.externals.push('pino-pretty', 'lokijs', 'encoding');
      config.resolve.alias['@'] = path.resolve(__dirname, 'src');
      return config;
    }
  };

  module.exports = nextConfig;
