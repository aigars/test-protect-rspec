# test-protect-rspec

### structure
```
test-protect-rspec/
├── apps/ - temporary location for apps
├── config/ - all config files use YAML format
│   ├── devices/ - config file for each decice
│   └── setups/ - user, controller and camera setup config
├── platforms/
│   └── ios/
│       ├── screens/
│       └── steps/
└── spec/ - rspec, tests and helper clases
```

### run ios
export DEVICE_CONFIG='config/devices/iphone_sim.yml'
export SETUP_CONFIG='config/setups/one_camera.yml'
rspec

### run android
export DEVICE_CONFIG='config/devices/pixel_emu.yml'
export SETUP_CONFIG='config/setups/one_camera.yml'
rspec

### debug
