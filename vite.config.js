import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

import copy from 'rollup-plugin-copy'

// https://vitejs.dev/config/
export default defineConfig({
  build: {
    rollupOptions: {
      plugins: [
        copy({
          targets: [
            {
              src: 'src/img',
              dest: 'dist/src'
            }
          ],
          hook: 'generateBundle'
        })
      ]
    }
  },
  plugins: [
    vue(),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
    }
  },

})
