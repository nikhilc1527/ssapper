; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3226 () Bool)

(assert start!3226)

(declare-fun b!17899 () Bool)

(declare-fun res!7439 () Bool)

(declare-fun e!9655 () Bool)

(assert (=> b!17899 (=> (not res!7439) (not e!9655))))

(declare-datatypes () ((T!1723 (T!1724 (val!34 Int)))))

(declare-datatypes () ((Conc!16 (CC!15 (left!660 Conc!16) (right!663 Conc!16)) (Single!15 (x!8732 T!1723)) (Empty!26))))

(declare-fun res!5600 () Conc!16)

(declare-fun balanced!15 (Conc!16) Bool)

(assert (=> b!17899 (= res!7439 (balanced!15 res!5600))))

(declare-fun b!17900 () Bool)

(declare-fun e!9657 () Bool)

(declare-fun tp_is_empty!67 () Bool)

(assert (=> b!17900 (= e!9657 tp_is_empty!67)))

(declare-fun b!17901 () Bool)

(declare-fun e!9656 () Bool)

(declare-fun tp!4210 () Bool)

(declare-fun tp!4208 () Bool)

(assert (=> b!17901 (= e!9656 (and tp!4210 tp!4208))))

(declare-fun b!17902 () Bool)

(declare-fun res!7436 () Bool)

(assert (=> b!17902 (=> (not res!7436) (not e!9655))))

(declare-fun i!298 () Int)

(declare-fun xs!604 () Conc!16)

(declare-fun size!200 (Conc!16) Int)

(assert (=> b!17902 (= res!7436 (<= i!298 (size!200 xs!604)))))

(declare-fun b!17903 () Bool)

(declare-fun tp!4212 () Bool)

(declare-fun tp!4211 () Bool)

(assert (=> b!17903 (= e!9657 (and tp!4212 tp!4211))))

(declare-fun b!17904 () Bool)

(declare-fun e!9658 () Bool)

(declare-fun i!299 () Int)

(declare-fun xs!605 () Conc!16)

(assert (=> b!17904 (= e!9658 (> i!299 (size!200 xs!605)))))

(declare-fun b!17905 () Bool)

(declare-fun res!7437 () Bool)

(assert (=> b!17905 (=> (not res!7437) (not e!9655))))

(declare-fun concInv!14 (Conc!16) Bool)

(assert (=> b!17905 (= res!7437 (concInv!14 res!5600))))

(declare-fun b!17906 () Bool)

(declare-fun res!7431 () Bool)

(assert (=> b!17906 (=> (not res!7431) (not e!9655))))

(declare-fun y!829 () T!1723)

(declare-fun y!824 () T!1723)

(assert (=> b!17906 (= res!7431 (and (= xs!605 xs!604) (= i!299 i!298) (= y!829 y!824)))))

(declare-fun b!17907 () Bool)

(declare-fun e!9654 () Bool)

(declare-fun tp!4207 () Bool)

(declare-fun tp!4209 () Bool)

(assert (=> b!17907 (= e!9654 (and tp!4207 tp!4209))))

(declare-fun b!17908 () Bool)

(declare-fun res!7434 () Bool)

(assert (=> b!17908 (=> (not res!7434) (not e!9655))))

(assert (=> b!17908 (= res!7434 (>= i!298 0))))

(declare-fun b!17909 () Bool)

(declare-fun res!7432 () Bool)

(assert (=> b!17909 (=> (not res!7432) (not e!9655))))

(assert (=> b!17909 (= res!7432 (balanced!15 xs!604))))

(declare-fun res!7440 () Bool)

(assert (=> start!3226 (=> (not res!7440) (not e!9655))))

(assert (=> start!3226 (= res!7440 (concInv!14 xs!604))))

(assert (=> start!3226 e!9655))

(assert (=> start!3226 tp_is_empty!67))

(assert (=> start!3226 e!9656))

(assert (=> start!3226 e!9657))

(assert (=> start!3226 true))

(assert (=> start!3226 e!9654))

(declare-fun b!17910 () Bool)

(declare-fun res!7435 () Bool)

(assert (=> b!17910 (=> (not res!7435) (not e!9655))))

(declare-fun level!13 (Conc!16) Int)

(assert (=> b!17910 (= res!7435 (>= (level!13 res!5600) (level!13 xs!604)))))

(declare-fun b!17911 () Bool)

(assert (=> b!17911 (= e!9654 tp_is_empty!67)))

(declare-fun b!17912 () Bool)

(declare-fun res!7433 () Bool)

(assert (=> b!17912 (=> (not res!7433) (not e!9655))))

(assert (=> b!17912 (= res!7433 (<= (- (level!13 res!5600) (level!13 xs!604)) 1))))

(declare-fun b!17913 () Bool)

(declare-fun res!7430 () Bool)

(assert (=> b!17913 (=> (not res!7430) (not e!9655))))

(assert (=> b!17913 (= res!7430 (and (is-Empty!26 xs!604) (= res!5600 (Single!15 y!824))))))

(declare-fun b!17914 () Bool)

(declare-fun res!7441 () Bool)

(assert (=> b!17914 (=> (not res!7441) (not e!9655))))

(declare-fun isEmpty!278 (Conc!16) Bool)

(assert (=> b!17914 (= res!7441 (not (isEmpty!278 res!5600)))))

(declare-fun b!17915 () Bool)

(assert (=> b!17915 (= e!9656 tp_is_empty!67)))

(declare-fun b!17916 () Bool)

(assert (=> b!17916 (= e!9655 e!9658)))

(declare-fun res!7438 () Bool)

(assert (=> b!17916 (=> res!7438 e!9658)))

(assert (=> b!17916 (= res!7438 (< i!299 0))))

(assert (= (and start!3226 res!7440) b!17909))

(assert (= (and b!17909 res!7432) b!17908))

(assert (= (and b!17908 res!7434) b!17902))

(assert (= (and b!17902 res!7436) b!17913))

(assert (= (and b!17913 res!7430) b!17905))

(assert (= (and b!17905 res!7437) b!17899))

(assert (= (and b!17899 res!7439) b!17912))

(assert (= (and b!17912 res!7433) b!17910))

(assert (= (and b!17910 res!7435) b!17914))

(assert (= (and b!17914 res!7441) b!17906))

(assert (= (and b!17906 res!7431) b!17916))

(assert (= (and b!17916 (not res!7438)) b!17904))

(assert (= (and start!3226 (is-CC!15 xs!604)) b!17901))

(assert (= (and start!3226 (is-Single!15 xs!604)) b!17915))

(assert (= (and start!3226 (is-CC!15 xs!605)) b!17903))

(assert (= (and start!3226 (is-Single!15 xs!605)) b!17900))

(assert (= (and start!3226 (is-CC!15 res!5600)) b!17907))

(assert (= (and start!3226 (is-Single!15 res!5600)) b!17911))

(declare-fun m!20993 () Bool)

(assert (=> b!17905 m!20993))

(declare-fun m!20995 () Bool)

(assert (=> b!17910 m!20995))

(declare-fun m!20997 () Bool)

(assert (=> b!17910 m!20997))

(declare-fun m!20999 () Bool)

(assert (=> b!17902 m!20999))

(assert (=> b!17912 m!20995))

(assert (=> b!17912 m!20997))

(declare-fun m!21001 () Bool)

(assert (=> b!17904 m!21001))

(declare-fun m!21003 () Bool)

(assert (=> b!17899 m!21003))

(declare-fun m!21005 () Bool)

(assert (=> start!3226 m!21005))

(declare-fun m!21007 () Bool)

(assert (=> b!17909 m!21007))

(declare-fun m!21009 () Bool)

(assert (=> b!17914 m!21009))

(push 1)

(assert (not b!17909))

(assert (not b!17899))

(assert (not b!17912))

(assert (not b!17910))

(assert (not b!17907))

(assert (not b!17914))

(assert (not b!17902))

(assert (not b!17903))

(assert (not start!3226))

(assert tp_is_empty!67)

(assert (not b!17904))

(assert (not b!17901))

(assert (not b!17905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

