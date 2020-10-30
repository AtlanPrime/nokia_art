; Copyright (C) 2017 The Android Open Source Project
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;      http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

.class                   public final ClassA
.super                   java/lang/Object

.method                  public static foo()V
   .limit stack          1
   .limit locals         0
   ; Obtain the ErrClass type from Dex cache of the first Dex file. Note that
   ; because the first Dex file has already been verified, we know the class
   ; is erroneous at this point.
   getstatic             ClassB/g LErrClass;
   ; Use the object in a way that will try to store the ErrClass type in
   ; the Dex cache of the second Dex file.
   invokevirtual         ErrClass/foo()V
   return
.end method

