# FileSystemStats

Reports total disk size, available disk size and relative disk usage under root directory (```"/"```). Uses ```statvfs``` in C. 

## Usage
``` swift
#import FileSystemStats

let total = getTotalSize()
let available = getAvailableSize()
let relativeUsage = getRelativeUsage()
```
