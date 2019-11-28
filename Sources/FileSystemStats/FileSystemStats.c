#include <stdio.h>
#include <stdlib.h>
#include <sys/statvfs.h>
#include "include/FileSystemStats.h"


const unsigned long getTotalSize() {
  struct statvfs stat;
  
  if (statvfs("/", &stat) != EXIT_SUCCESS) {
    return EXIT_FAILURE;
  }
  
  const unsigned int GB = 1000 * 1000 * 1000;
  
  return stat.f_frsize * stat.f_blocks / GB;
}


const unsigned long getAvailableSize() {
  struct statvfs stat;
  
  if (statvfs("/", &stat) != EXIT_SUCCESS) {
    return EXIT_FAILURE;
  }
  
  const unsigned long GB = 1000 * 1000 * 1000;
  
  return stat.f_frsize * stat.f_bavail / GB;
}


const double getRelativeUsage() {
  struct statvfs stat;
  
  if (statvfs("/", &stat) != EXIT_SUCCESS) {
    return EXIT_FAILURE;
  }
  
  const unsigned long GB = 1000 * 1000 * 1000;
  
  const unsigned long total = stat.f_frsize * stat.f_blocks / GB;
  const unsigned long available = stat.f_frsize * stat.f_bavail / GB;
  const unsigned long reserved = total - available;
  
  return (double)((double)reserved / (double)total) * 100;
}
