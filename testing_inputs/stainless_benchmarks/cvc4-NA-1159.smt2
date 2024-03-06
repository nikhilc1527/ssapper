; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8350 () Bool)

(assert start!8350)

(declare-fun res!27198 () Bool)

(declare-fun e!31223 () Bool)

(assert (=> start!8350 (=> (not res!27198) (not e!31223))))

(declare-datatypes () ((List!494 (Cons!468 (head!745 (_ BitVec 32)) (tail!771 List!494)) (Nil!469))))

(declare-fun xs!840 () List!494)

(assert (=> start!8350 (= res!27198 (is-Cons!468 xs!840))))

(assert (=> start!8350 e!31223))

(assert (=> start!8350 true))

(declare-fun b!58673 () Bool)

(declare-fun res!27199 () Bool)

(assert (=> b!58673 (=> (not res!27199) (not e!31223))))

(declare-fun zs!15 () List!494)

(declare-fun inductVal!150 () Bool)

(declare-fun ys!189 () List!494)

(declare-fun appendAssoc!1 (List!494 List!494 List!494) Bool)

(assert (=> b!58673 (= res!27199 (= inductVal!150 (appendAssoc!1 (tail!771 xs!840) ys!189 zs!15)))))

(declare-fun b!58674 () Bool)

(declare-fun append!9 (List!494 List!494) List!494)

(assert (=> b!58674 (= e!31223 (not (= (append!9 (append!9 xs!840 ys!189) zs!15) (append!9 xs!840 (append!9 ys!189 zs!15)))))))

(assert (= (and start!8350 res!27198) b!58673))

(assert (= (and b!58673 res!27199) b!58674))

(declare-fun m!63212 () Bool)

(assert (=> b!58673 m!63212))

(declare-fun m!63214 () Bool)

(assert (=> b!58674 m!63214))

(assert (=> b!58674 m!63214))

(declare-fun m!63216 () Bool)

(assert (=> b!58674 m!63216))

(declare-fun m!63218 () Bool)

(assert (=> b!58674 m!63218))

(assert (=> b!58674 m!63218))

(declare-fun m!63220 () Bool)

(assert (=> b!58674 m!63220))

(push 1)

(assert (not b!58673))

(assert (not b!58674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!58679 () Bool)

(declare-fun e!31226 () Bool)

(assert (=> b!58679 (= e!31226 (= (append!9 (append!9 (tail!771 xs!840) ys!189) zs!15) (append!9 (tail!771 xs!840) (append!9 ys!189 zs!15))))))

(declare-fun lt!10750 () Bool)

(assert (=> b!58679 (= lt!10750 (appendAssoc!1 (tail!771 (tail!771 xs!840)) ys!189 zs!15))))

(declare-fun d!50696 () Bool)

(assert (=> d!50696 e!31226))

(declare-fun c!12587 () Bool)

(assert (=> d!50696 (= c!12587 (is-Cons!468 (tail!771 xs!840)))))

(assert (=> d!50696 (= (appendAssoc!1 (tail!771 xs!840) ys!189 zs!15) true)))

(declare-fun b!58680 () Bool)

(assert (=> b!58680 (= e!31226 (= (append!9 (append!9 (tail!771 xs!840) ys!189) zs!15) (append!9 (tail!771 xs!840) (append!9 ys!189 zs!15))))))

(assert (= (and d!50696 c!12587) b!58679))

(assert (= (and d!50696 (not c!12587)) b!58680))

(assert (=> b!58679 m!63218))

(declare-fun m!63222 () Bool)

(assert (=> b!58679 m!63222))

(declare-fun m!63224 () Bool)

(assert (=> b!58679 m!63224))

(assert (=> b!58679 m!63218))

(declare-fun m!63226 () Bool)

(assert (=> b!58679 m!63226))

(declare-fun m!63228 () Bool)

(assert (=> b!58679 m!63228))

(assert (=> b!58679 m!63226))

(assert (=> b!58680 m!63226))

(assert (=> b!58680 m!63226))

(assert (=> b!58680 m!63228))

(assert (=> b!58680 m!63218))

(assert (=> b!58680 m!63218))

(assert (=> b!58680 m!63222))

(assert (=> b!58673 d!50696))

(declare-fun lt!10753 () List!494)

(declare-fun d!50698 () Bool)

(declare-fun content!16 (List!494) (Set (_ BitVec 32)))

(assert (=> d!50698 (= (content!16 lt!10753) (union (content!16 (append!9 xs!840 ys!189)) (content!16 zs!15)))))

(declare-fun e!31229 () List!494)

(assert (=> d!50698 (= lt!10753 e!31229)))

(declare-fun c!12590 () Bool)

(assert (=> d!50698 (= c!12590 (is-Nil!469 (append!9 xs!840 ys!189)))))

(assert (=> d!50698 (= (append!9 (append!9 xs!840 ys!189) zs!15) lt!10753)))

(declare-fun b!58685 () Bool)

(assert (=> b!58685 (= e!31229 zs!15)))

(declare-fun b!58686 () Bool)

(assert (=> b!58686 (= e!31229 (Cons!468 (head!745 (append!9 xs!840 ys!189)) (append!9 (tail!771 (append!9 xs!840 ys!189)) zs!15)))))

(assert (= (and d!50698 c!12590) b!58685))

(assert (= (and d!50698 (not c!12590)) b!58686))

(declare-fun m!63230 () Bool)

(assert (=> d!50698 m!63230))

(assert (=> d!50698 m!63214))

(declare-fun m!63232 () Bool)

(assert (=> d!50698 m!63232))

(declare-fun m!63234 () Bool)

(assert (=> d!50698 m!63234))

(declare-fun m!63236 () Bool)

(assert (=> b!58686 m!63236))

(assert (=> b!58674 d!50698))

(declare-fun d!50700 () Bool)

(declare-fun lt!10754 () List!494)

(assert (=> d!50700 (= (content!16 lt!10754) (union (content!16 xs!840) (content!16 ys!189)))))

(declare-fun e!31230 () List!494)

(assert (=> d!50700 (= lt!10754 e!31230)))

(declare-fun c!12591 () Bool)

(assert (=> d!50700 (= c!12591 (is-Nil!469 xs!840))))

(assert (=> d!50700 (= (append!9 xs!840 ys!189) lt!10754)))

(declare-fun b!58687 () Bool)

(assert (=> b!58687 (= e!31230 ys!189)))

(declare-fun b!58688 () Bool)

(assert (=> b!58688 (= e!31230 (Cons!468 (head!745 xs!840) (append!9 (tail!771 xs!840) ys!189)))))

(assert (= (and d!50700 c!12591) b!58687))

(assert (= (and d!50700 (not c!12591)) b!58688))

(declare-fun m!63238 () Bool)

(assert (=> d!50700 m!63238))

(declare-fun m!63240 () Bool)

(assert (=> d!50700 m!63240))

(declare-fun m!63242 () Bool)

(assert (=> d!50700 m!63242))

(assert (=> b!58688 m!63226))

(assert (=> b!58674 d!50700))

(declare-fun lt!10755 () List!494)

(declare-fun d!50702 () Bool)

(assert (=> d!50702 (= (content!16 lt!10755) (union (content!16 xs!840) (content!16 (append!9 ys!189 zs!15))))))

(declare-fun e!31231 () List!494)

(assert (=> d!50702 (= lt!10755 e!31231)))

(declare-fun c!12592 () Bool)

(assert (=> d!50702 (= c!12592 (is-Nil!469 xs!840))))

(assert (=> d!50702 (= (append!9 xs!840 (append!9 ys!189 zs!15)) lt!10755)))

(declare-fun b!58689 () Bool)

(assert (=> b!58689 (= e!31231 (append!9 ys!189 zs!15))))

(declare-fun b!58690 () Bool)

(assert (=> b!58690 (= e!31231 (Cons!468 (head!745 xs!840) (append!9 (tail!771 xs!840) (append!9 ys!189 zs!15))))))

(assert (= (and d!50702 c!12592) b!58689))

(assert (= (and d!50702 (not c!12592)) b!58690))

(declare-fun m!63244 () Bool)

(assert (=> d!50702 m!63244))

(assert (=> d!50702 m!63240))

(assert (=> d!50702 m!63218))

(declare-fun m!63246 () Bool)

(assert (=> d!50702 m!63246))

(assert (=> b!58690 m!63218))

(assert (=> b!58690 m!63222))

(assert (=> b!58674 d!50702))

(declare-fun d!50704 () Bool)

(declare-fun lt!10756 () List!494)

(assert (=> d!50704 (= (content!16 lt!10756) (union (content!16 ys!189) (content!16 zs!15)))))

(declare-fun e!31232 () List!494)

(assert (=> d!50704 (= lt!10756 e!31232)))

(declare-fun c!12593 () Bool)

(assert (=> d!50704 (= c!12593 (is-Nil!469 ys!189))))

(assert (=> d!50704 (= (append!9 ys!189 zs!15) lt!10756)))

(declare-fun b!58691 () Bool)

(assert (=> b!58691 (= e!31232 zs!15)))

(declare-fun b!58692 () Bool)

(assert (=> b!58692 (= e!31232 (Cons!468 (head!745 ys!189) (append!9 (tail!771 ys!189) zs!15)))))

(assert (= (and d!50704 c!12593) b!58691))

(assert (= (and d!50704 (not c!12593)) b!58692))

(declare-fun m!63248 () Bool)

(assert (=> d!50704 m!63248))

(assert (=> d!50704 m!63242))

(assert (=> d!50704 m!63234))

(declare-fun m!63250 () Bool)

(assert (=> b!58692 m!63250))

(assert (=> b!58674 d!50704))

(push 1)

(assert (not b!58679))

(assert (not d!50704))

(assert (not b!58680))

(assert (not b!58690))

(assert (not b!58692))

(assert (not d!50702))

(assert (not d!50698))

(assert (not b!58688))

(assert (not b!58686))

(assert (not d!50700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

