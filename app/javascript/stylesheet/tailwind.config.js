const defaultTheme = require('tailwindcss/defaultTheme')
module.exports = {
  theme: {
    extend: {
      fontFamily: {
        sans: ['Effra', ...defaultTheme.fontFamily.sans],
        // serif: ['Henriette', ...defaultTheme.fontFamily.serif],
      },
      // colors: {
      //   'color-primary': 'var(--color-primary)',
      //   'color-primary-purple': 'var(--color-primary-purple)',
      //   'color-secondary': 'var(--color-secondary)',
      //   'color-accent': 'var(--color-accent)',
      //   'color-primary-cta': 'var(--color-primary-cta)',
      //   'color-background': 'var(--color-background)',
      // },
      // backgroundImage: theme => ({
      //    'application-form': "url('https://dl.dropboxusercontent.com/s/v7u8yn3yastjeno/background.png')",
      //   })
    },
  },
  // plugins: [
  //   require('@tailwindcss/ui'),
  // ]
}
