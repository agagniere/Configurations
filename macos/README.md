# MacOS specific tweaks

Remap the key just below [esc] to be [`]
```shell
$ hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'
```
