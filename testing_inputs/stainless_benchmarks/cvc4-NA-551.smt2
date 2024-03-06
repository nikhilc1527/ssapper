; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4108 () Bool)

(assert start!4108)

(declare-fun b!32726 () Bool)

(declare-fun e!16604 () Bool)

(declare-fun i!276 () Int)

(declare-datatypes () ((T!1857 (T!1858 (val!101 Int)))))

(declare-datatypes () ((Conc!78 (CC!77 (left!722 Conc!78) (right!725 Conc!78)) (Single!77 (x!8995 T!1857)) (Empty!88))))

(declare-fun xs!595 () Conc!78)

(declare-fun size!289 (Conc!78) Int)

(assert (=> b!32726 (= e!16604 (>= i!276 (size!289 xs!595)))))

(declare-fun b!32727 () Bool)

(declare-fun res!15076 () Bool)

(declare-fun e!16606 () Bool)

(assert (=> b!32727 (=> (not res!15076) (not e!16606))))

(declare-fun xs!586 () Conc!78)

(assert (=> b!32727 (= res!15076 (not (is-Single!77 xs!586)))))

(declare-fun b!32728 () Bool)

(declare-fun e!16605 () Bool)

(declare-fun tp!6802 () Bool)

(declare-fun tp!6801 () Bool)

(assert (=> b!32728 (= e!16605 (and tp!6802 tp!6801))))

(declare-fun b!32729 () Bool)

(declare-fun e!16603 () Bool)

(declare-fun tp!6799 () Bool)

(declare-fun tp!6800 () Bool)

(assert (=> b!32729 (= e!16603 (and tp!6799 tp!6800))))

(declare-fun b!32730 () Bool)

(assert (=> b!32730 (= e!16606 e!16604)))

(declare-fun res!15069 () Bool)

(assert (=> b!32730 (=> res!15069 e!16604)))

(assert (=> b!32730 (= res!15069 (< i!276 0))))

(declare-fun res!15077 () Bool)

(assert (=> start!4108 (=> (not res!15077) (not e!16606))))

(declare-fun concInv!70 (Conc!78) Bool)

(assert (=> start!4108 (= res!15077 (concInv!70 xs!586))))

(assert (=> start!4108 e!16606))

(assert (=> start!4108 e!16603))

(declare-fun tp_is_empty!201 () Bool)

(assert (=> start!4108 tp_is_empty!201))

(assert (=> start!4108 true))

(declare-fun e!16602 () Bool)

(assert (=> start!4108 e!16602))

(assert (=> start!4108 e!16605))

(declare-fun b!32731 () Bool)

(declare-fun tp!6803 () Bool)

(declare-fun tp!6798 () Bool)

(assert (=> b!32731 (= e!16602 (and tp!6803 tp!6798))))

(declare-fun b!32732 () Bool)

(assert (=> b!32732 (= e!16605 tp_is_empty!201)))

(declare-fun b!32733 () Bool)

(declare-fun res!15072 () Bool)

(assert (=> b!32733 (=> (not res!15072) (not e!16606))))

(declare-fun i!263 () Int)

(assert (=> b!32733 (= res!15072 (>= i!263 0))))

(declare-fun b!32734 () Bool)

(declare-fun res!15073 () Bool)

(assert (=> b!32734 (=> (not res!15073) (not e!16606))))

(assert (=> b!32734 (= res!15073 (>= i!263 (size!289 (left!722 xs!586))))))

(declare-fun b!32735 () Bool)

(declare-fun res!15071 () Bool)

(assert (=> b!32735 (=> (not res!15071) (not e!16606))))

(declare-fun balanced!71 (Conc!78) Bool)

(assert (=> b!32735 (= res!15071 (balanced!71 xs!586))))

(declare-fun b!32736 () Bool)

(declare-fun res!15070 () Bool)

(assert (=> b!32736 (=> (not res!15070) (not e!16606))))

(declare-fun isEmpty!332 (Conc!78) Bool)

(assert (=> b!32736 (= res!15070 (not (isEmpty!332 xs!586)))))

(declare-fun b!32737 () Bool)

(declare-fun res!15078 () Bool)

(assert (=> b!32737 (=> (not res!15078) (not e!16606))))

(declare-fun y!785 () T!1857)

(declare-fun y!802 () T!1857)

(assert (=> b!32737 (= res!15078 (and (= xs!595 xs!586) (= i!276 i!263) (= y!802 y!785)))))

(declare-fun b!32738 () Bool)

(assert (=> b!32738 (= e!16603 tp_is_empty!201)))

(declare-fun b!32739 () Bool)

(declare-fun res!15074 () Bool)

(assert (=> b!32739 (=> (not res!15074) (not e!16606))))

(assert (=> b!32739 (= res!15074 (< i!263 (size!289 xs!586)))))

(declare-fun b!32740 () Bool)

(declare-fun res!15075 () Bool)

(assert (=> b!32740 (=> (not res!15075) (not e!16606))))

(declare-fun res!5582 () Conc!78)

(declare-fun update!9 (Conc!78 Int T!1857) Conc!78)

(assert (=> b!32740 (= res!15075 (= res!5582 (CC!77 (left!722 xs!586) (update!9 (right!725 xs!586) (- i!263 (size!289 (left!722 xs!586))) y!785))))))

(declare-fun b!32741 () Bool)

(assert (=> b!32741 (= e!16602 tp_is_empty!201)))

(assert (= (and start!4108 res!15077) b!32735))

(assert (= (and b!32735 res!15071) b!32736))

(assert (= (and b!32736 res!15070) b!32733))

(assert (= (and b!32733 res!15072) b!32739))

(assert (= (and b!32739 res!15074) b!32727))

(assert (= (and b!32727 res!15076) b!32734))

(assert (= (and b!32734 res!15073) b!32740))

(assert (= (and b!32740 res!15075) b!32737))

(assert (= (and b!32737 res!15078) b!32730))

(assert (= (and b!32730 (not res!15069)) b!32726))

(assert (= (and start!4108 (is-CC!77 xs!586)) b!32729))

(assert (= (and start!4108 (is-Single!77 xs!586)) b!32738))

(assert (= (and start!4108 (is-CC!77 res!5582)) b!32731))

(assert (= (and start!4108 (is-Single!77 res!5582)) b!32741))

(assert (= (and start!4108 (is-CC!77 xs!595)) b!32728))

(assert (= (and start!4108 (is-Single!77 xs!595)) b!32732))

(declare-fun m!35201 () Bool)

(assert (=> start!4108 m!35201))

(declare-fun m!35203 () Bool)

(assert (=> b!32735 m!35203))

(declare-fun m!35205 () Bool)

(assert (=> b!32726 m!35205))

(declare-fun m!35207 () Bool)

(assert (=> b!32734 m!35207))

(assert (=> b!32740 m!35207))

(declare-fun m!35209 () Bool)

(assert (=> b!32740 m!35209))

(declare-fun m!35211 () Bool)

(assert (=> b!32736 m!35211))

(declare-fun m!35213 () Bool)

(assert (=> b!32739 m!35213))

(push 1)

(assert (not b!32739))

(assert (not b!32735))

(assert (not b!32726))

(assert tp_is_empty!201)

(assert (not b!32728))

(assert (not b!32736))

(assert (not start!4108))

(assert (not b!32740))

(assert (not b!32731))

(assert (not b!32734))

(assert (not b!32729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

