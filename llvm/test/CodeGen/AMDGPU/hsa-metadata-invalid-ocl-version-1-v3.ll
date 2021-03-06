; RUN: llc -mattr=+code-object-v3 -mtriple=amdgcn-amd-amdhsa -filetype=obj -o - < %s | llvm-readelf --notes - | FileCheck %s

; Make sure llc does not crash for invalid opencl version metadata.

; CHECK: ---
; CHECK: amdhsa.version:
; CHECK-NEXT: - 1
; CHECK-NEXT: - 0
; CHECK: ...

!opencl.ocl.version = !{}
