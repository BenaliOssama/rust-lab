; ModuleID = 'main.6d5145388994a7b7-cgu.0'
source_filename = "main.6d5145388994a7b7-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc5c80766bbcf279aE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h18d63a7c90dbc9c0E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1962c5aca547dd61E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1962c5aca547dd61E" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_560206a49c61adca6f3f0639a12632eb = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_1b0ce78f34c5bce3dd9bfed67a07568d = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"/build/rustc-kAv1jW/rustc-1.75.0+dfsg0ubuntu1~bpo0/library/core/src/fmt/mod.rs" }>, align 1
@alloc_a34b426ff25fd763c91b0622f5e22377 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1b0ce78f34c5bce3dd9bfed67a07568d, [16 x i8] c"N\00\00\00\00\00\00\00C\01\00\00\0D\00\00\00" }>, align 8
@alloc_3213114faf700a46436312d7d5d956d1 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Hello, world!\0A" }>, align 1
@alloc_004b71e11835e37789f0750656a25291 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_3213114faf700a46436312d7d5d956d1, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h1193aac50ee9d14aE(ptr %f) unnamed_addr #0 {
start:
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h5d724ca421cd982bE(ptr %f)
  call void asm sideeffect "", "~{memory}"(), !srcloc !4
  ret void
}

; std::rt::lang_start
; Function Attrs: noinline nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h040b733811702e3fE(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 {
start:
  %_8 = alloca ptr, align 8
  %_5 = alloca i64, align 8
  store ptr %main, ptr %_8, align 8
; call std::rt::lang_start_internal
  %0 = call i64 @_ZN3std2rt19lang_start_internal17hea207582130b429dE(ptr align 1 %_8, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  store i64 %0, ptr %_5, align 8
  %v = load i64, ptr %_5, align 8, !noundef !5
  ret i64 %v
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1962c5aca547dd61E"(ptr align 8 %_1) unnamed_addr #1 {
start:
  %self = alloca i8, align 1
  %_4 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h1193aac50ee9d14aE(ptr %_4)
; call <() as std::process::Termination>::report
  %0 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd26f2c2679d5a432E"()
  store i8 %0, ptr %self, align 1
  %_6 = load i8, ptr %self, align 1, !noundef !5
  %_0 = zext i8 %_6 to i32
  ret i32 %_0
}

; core::fmt::Arguments::new_const
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments9new_const17hc9af73fb616e6796E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1) unnamed_addr #1 {
start:
  %_7 = alloca { ptr, i64 }, align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %_2 = icmp ugt i64 %pieces.1, 1
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  store ptr null, ptr %_7, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %pieces.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %pieces.1, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !align !6, !noundef !5
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 0
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 1
  %10 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 1
  store i64 0, ptr %11, align 8
  ret void

bb1:                                              ; preds = %start
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17hc9af73fb616e6796E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_5, ptr align 8 @alloc_560206a49c61adca6f3f0639a12632eb, i64 1)
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hef0307862026e6f9E(ptr align 8 %_5, ptr align 8 @alloc_a34b426ff25fd763c91b0622f5e22377) #5
  unreachable
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h18d63a7c90dbc9c0E"(ptr %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  %0 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17hc4f7e2b82d30b6deE(ptr %0)
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h5d724ca421cd982bE(ptr %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  ret void
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17hc4f7e2b82d30b6deE(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1962c5aca547dd61E"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !noundef !5
  %3 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 8, !noundef !5
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %9, ptr %11, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc5c80766bbcf279aE"(ptr align 8 %_1) unnamed_addr #1 {
start:
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd26f2c2679d5a432E"() unnamed_addr #1 {
start:
  ret i8 0
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17hc4cefe299e4696a2E() unnamed_addr #2 {
start:
  %_2 = alloca %"core::fmt::Arguments<'_>", align 8
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17hc9af73fb616e6796E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_2, ptr align 8 @alloc_004b71e11835e37789f0750656a25291, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h0e398db3be30978cE(ptr align 8 %_2)
  ret void
}

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hea207582130b429dE(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #2

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17hef0307862026e6f9E(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #2

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h0e398db3be30978cE(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #4 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17h040b733811702e3fE(ptr @_ZN4main4main17hc4cefe299e4696a2E, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind "target-cpu"="x86-64" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)"}
!4 = !{i32 1422397}
!5 = !{}
!6 = !{i64 8}
