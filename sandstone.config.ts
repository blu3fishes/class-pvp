import type { SandstoneConfig } from 'sandstone'

export default {
  name: 'class-pvp',
  description: [ 'A ', { text: 'Sandstone', color: 'gold' }, ' data pack.' ],
  formatVersion: 7,
  namespace: 'class-pvp',
  packUid: 'e3l8cbqC',
  saveOptions: { path: 'dist' },
  onConflict: {
    default: 'warn',
  },
} as SandstoneConfig
