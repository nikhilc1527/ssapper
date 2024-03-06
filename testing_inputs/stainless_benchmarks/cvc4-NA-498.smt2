; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3374 () Bool)

(assert start!3374)

(declare-fun b!19755 () Bool)

(declare-fun e!10389 () Bool)

(declare-fun tp_is_empty!95 () Bool)

(assert (=> b!19755 (= e!10389 tp_is_empty!95)))

(declare-fun b!19756 () Bool)

(declare-fun tp!4584 () Bool)

(declare-fun tp!4583 () Bool)

(assert (=> b!19756 (= e!10389 (and tp!4584 tp!4583))))

(declare-fun b!19757 () Bool)

(declare-fun res!8583 () Bool)

(declare-fun e!10392 () Bool)

(assert (=> b!19757 (=> res!8583 e!10392)))

(declare-datatypes () ((T!1751 (T!1752 (val!48 Int)))))

(declare-datatypes () ((Conc!30 (CC!29 (left!674 Conc!30) (right!677 Conc!30)) (Single!29 (x!8783 T!1751)) (Empty!40))))

(declare-fun res!5600 () Conc!30)

(declare-fun xs!604 () Conc!30)

(declare-fun level!27 (Conc!30) Int)

(assert (=> b!19757 (= res!8583 (> (- (level!27 res!5600) (level!27 xs!604)) 1))))

(declare-fun b!19758 () Bool)

(declare-fun res!8581 () Bool)

(declare-fun e!10391 () Bool)

(assert (=> b!19758 (=> (not res!8581) (not e!10391))))

(declare-fun i!298 () Int)

(declare-fun size!219 (Conc!30) Int)

(assert (=> b!19758 (= res!8581 (<= i!298 (size!219 xs!604)))))

(declare-fun b!19759 () Bool)

(declare-fun res!8575 () Bool)

(assert (=> b!19759 (=> res!8575 e!10392)))

(declare-fun balanced!29 (Conc!30) Bool)

(assert (=> b!19759 (= res!8575 (not (balanced!29 res!5600)))))

(declare-fun b!19760 () Bool)

(declare-fun e!10390 () Bool)

(declare-fun tp!4582 () Bool)

(declare-fun tp!4581 () Bool)

(assert (=> b!19760 (= e!10390 (and tp!4582 tp!4581))))

(declare-fun res!8578 () Bool)

(assert (=> start!3374 (=> (not res!8578) (not e!10391))))

(declare-fun concInv!28 (Conc!30) Bool)

(assert (=> start!3374 (= res!8578 (concInv!28 xs!604))))

(assert (=> start!3374 e!10391))

(assert (=> start!3374 e!10390))

(assert (=> start!3374 true))

(assert (=> start!3374 e!10389))

(assert (=> start!3374 tp_is_empty!95))

(declare-fun b!19761 () Bool)

(declare-fun y!824 () T!1751)

(declare-datatypes () ((List!335 (Cons!329 (h!243 T!1751) (t!4330 List!335)) (Nil!330))))

(declare-fun toList!95 (Conc!30) List!335)

(declare-fun insertAtIndex!8 (List!335 Int T!1751) List!335)

(assert (=> b!19761 (= e!10392 (not (= (toList!95 res!5600) (insertAtIndex!8 (toList!95 xs!604) i!298 y!824))))))

(declare-fun b!19762 () Bool)

(declare-fun res!8576 () Bool)

(assert (=> b!19762 (=> res!8576 e!10392)))

(declare-fun insertAppendAxiomInst!10 (Conc!30 Int T!1751) Bool)

(assert (=> b!19762 (= res!8576 (not (insertAppendAxiomInst!10 xs!604 i!298 y!824)))))

(declare-fun b!19763 () Bool)

(assert (=> b!19763 (= e!10390 tp_is_empty!95)))

(declare-fun b!19764 () Bool)

(declare-fun res!8573 () Bool)

(assert (=> b!19764 (=> (not res!8573) (not e!10391))))

(assert (=> b!19764 (= res!8573 (and (is-Empty!40 xs!604) (= res!5600 (Single!29 y!824))))))

(declare-fun b!19765 () Bool)

(declare-fun res!8577 () Bool)

(assert (=> b!19765 (=> res!8577 e!10392)))

(assert (=> b!19765 (= res!8577 (< (level!27 res!5600) (level!27 xs!604)))))

(declare-fun b!19766 () Bool)

(declare-fun res!8582 () Bool)

(assert (=> b!19766 (=> (not res!8582) (not e!10391))))

(assert (=> b!19766 (= res!8582 (>= i!298 0))))

(declare-fun b!19767 () Bool)

(declare-fun res!8574 () Bool)

(assert (=> b!19767 (=> (not res!8574) (not e!10391))))

(assert (=> b!19767 (= res!8574 (balanced!29 xs!604))))

(declare-fun b!19768 () Bool)

(assert (=> b!19768 (= e!10391 e!10392)))

(declare-fun res!8580 () Bool)

(assert (=> b!19768 (=> res!8580 e!10392)))

(assert (=> b!19768 (= res!8580 (not (concInv!28 res!5600)))))

(declare-fun b!19769 () Bool)

(declare-fun res!8579 () Bool)

(assert (=> b!19769 (=> res!8579 e!10392)))

(declare-fun isEmpty!292 (Conc!30) Bool)

(assert (=> b!19769 (= res!8579 (isEmpty!292 res!5600))))

(assert (= (and start!3374 res!8578) b!19767))

(assert (= (and b!19767 res!8574) b!19766))

(assert (= (and b!19766 res!8582) b!19758))

(assert (= (and b!19758 res!8581) b!19764))

(assert (= (and b!19764 res!8573) b!19768))

(assert (= (and b!19768 (not res!8580)) b!19759))

(assert (= (and b!19759 (not res!8575)) b!19757))

(assert (= (and b!19757 (not res!8583)) b!19765))

(assert (= (and b!19765 (not res!8577)) b!19769))

(assert (= (and b!19769 (not res!8579)) b!19762))

(assert (= (and b!19762 (not res!8576)) b!19761))

(assert (= (and start!3374 (is-CC!29 xs!604)) b!19760))

(assert (= (and start!3374 (is-Single!29 xs!604)) b!19763))

(assert (= (and start!3374 (is-CC!29 res!5600)) b!19756))

(assert (= (and start!3374 (is-Single!29 res!5600)) b!19755))

(declare-fun m!21877 () Bool)

(assert (=> b!19767 m!21877))

(declare-fun m!21879 () Bool)

(assert (=> b!19765 m!21879))

(declare-fun m!21881 () Bool)

(assert (=> b!19765 m!21881))

(declare-fun m!21883 () Bool)

(assert (=> b!19762 m!21883))

(declare-fun m!21885 () Bool)

(assert (=> b!19768 m!21885))

(declare-fun m!21887 () Bool)

(assert (=> b!19758 m!21887))

(declare-fun m!21889 () Bool)

(assert (=> b!19769 m!21889))

(declare-fun m!21891 () Bool)

(assert (=> start!3374 m!21891))

(declare-fun m!21893 () Bool)

(assert (=> b!19759 m!21893))

(assert (=> b!19757 m!21879))

(assert (=> b!19757 m!21881))

(declare-fun m!21895 () Bool)

(assert (=> b!19761 m!21895))

(declare-fun m!21897 () Bool)

(assert (=> b!19761 m!21897))

(assert (=> b!19761 m!21897))

(declare-fun m!21899 () Bool)

(assert (=> b!19761 m!21899))

(push 1)

(assert (not b!19756))

(assert tp_is_empty!95)

(assert (not b!19761))

(assert (not start!3374))

(assert (not b!19762))

(assert (not b!19759))

(assert (not b!19760))

(assert (not b!19767))

(assert (not b!19769))

(assert (not b!19765))

(assert (not b!19768))

(assert (not b!19757))

(assert (not b!19758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!19778 () Bool)

(declare-fun e!10397 () List!335)

(assert (=> b!19778 (= e!10397 Nil!330)))

(declare-fun d!12325 () Bool)

(declare-fun lt!2955 () List!335)

(declare-fun size!220 (List!335) Int)

(assert (=> d!12325 (= (size!220 lt!2955) (size!219 res!5600))))

(assert (=> d!12325 (= lt!2955 e!10397)))

(declare-fun c!4769 () Bool)

(assert (=> d!12325 (= c!4769 (is-Empty!40 res!5600))))

(assert (=> d!12325 (= (toList!95 res!5600) lt!2955)))

(declare-fun b!19779 () Bool)

(declare-fun e!10398 () List!335)

(assert (=> b!19779 (= e!10397 e!10398)))

(declare-fun c!4770 () Bool)

(assert (=> b!19779 (= c!4770 (is-Single!29 res!5600))))

(declare-fun b!19780 () Bool)

(assert (=> b!19780 (= e!10398 (Cons!329 (x!8783 res!5600) Nil!330))))

(declare-fun b!19781 () Bool)

(declare-fun ++!18 (List!335 List!335) List!335)

(assert (=> b!19781 (= e!10398 (++!18 (toList!95 (left!674 res!5600)) (toList!95 (right!677 res!5600))))))

(assert (= (and b!19779 c!4770) b!19780))

(assert (= (and b!19779 (not c!4770)) b!19781))

(assert (= (and d!12325 c!4769) b!19778))

(assert (= (and d!12325 (not c!4769)) b!19779))

(declare-fun m!21901 () Bool)

(assert (=> d!12325 m!21901))

(declare-fun m!21903 () Bool)

(assert (=> d!12325 m!21903))

(declare-fun m!21905 () Bool)

(assert (=> b!19781 m!21905))

(declare-fun m!21907 () Bool)

(assert (=> b!19781 m!21907))

(assert (=> b!19781 m!21905))

(assert (=> b!19781 m!21907))

(declare-fun m!21909 () Bool)

(assert (=> b!19781 m!21909))

(assert (=> b!19761 d!12325))

(declare-fun d!12327 () Bool)

(declare-fun c!4775 () Bool)

(assert (=> d!12327 (= c!4775 (is-Nil!330 (toList!95 xs!604)))))

(declare-fun e!10403 () List!335)

(assert (=> d!12327 (= (insertAtIndex!8 (toList!95 xs!604) i!298 y!824) e!10403)))

(declare-fun b!19790 () Bool)

(assert (=> b!19790 (= e!10403 (Cons!329 y!824 Nil!330))))

(declare-fun e!10404 () List!335)

(declare-fun b!19793 () Bool)

(assert (=> b!19793 (= e!10404 (Cons!329 (h!243 (toList!95 xs!604)) (insertAtIndex!8 (t!4330 (toList!95 xs!604)) (- i!298 1) y!824)))))

(declare-fun b!19792 () Bool)

(assert (=> b!19792 (= e!10404 (Cons!329 y!824 (toList!95 xs!604)))))

(declare-fun b!19791 () Bool)

(assert (=> b!19791 (= e!10403 e!10404)))

(declare-fun c!4776 () Bool)

(assert (=> b!19791 (= c!4776 (= i!298 0))))

(assert (= (and b!19791 c!4776) b!19792))

(assert (= (and b!19791 (not c!4776)) b!19793))

(assert (= (and d!12327 c!4775) b!19790))

(assert (= (and d!12327 (not c!4775)) b!19791))

(declare-fun m!21911 () Bool)

(assert (=> b!19793 m!21911))

(assert (=> b!19761 d!12327))

(declare-fun b!19794 () Bool)

(declare-fun e!10405 () List!335)

(assert (=> b!19794 (= e!10405 Nil!330)))

(declare-fun d!12329 () Bool)

(declare-fun lt!2956 () List!335)

(assert (=> d!12329 (= (size!220 lt!2956) (size!219 xs!604))))

(assert (=> d!12329 (= lt!2956 e!10405)))

(declare-fun c!4777 () Bool)

(assert (=> d!12329 (= c!4777 (is-Empty!40 xs!604))))

(assert (=> d!12329 (= (toList!95 xs!604) lt!2956)))

(declare-fun b!19795 () Bool)

(declare-fun e!10406 () List!335)

(assert (=> b!19795 (= e!10405 e!10406)))

(declare-fun c!4778 () Bool)

(assert (=> b!19795 (= c!4778 (is-Single!29 xs!604))))

(declare-fun b!19796 () Bool)

(assert (=> b!19796 (= e!10406 (Cons!329 (x!8783 xs!604) Nil!330))))

(declare-fun b!19797 () Bool)

(assert (=> b!19797 (= e!10406 (++!18 (toList!95 (left!674 xs!604)) (toList!95 (right!677 xs!604))))))

(assert (= (and b!19795 c!4778) b!19796))

(assert (= (and b!19795 (not c!4778)) b!19797))

(assert (= (and d!12329 c!4777) b!19794))

(assert (= (and d!12329 (not c!4777)) b!19795))

(declare-fun m!21913 () Bool)

(assert (=> d!12329 m!21913))

(assert (=> d!12329 m!21887))

(declare-fun m!21915 () Bool)

(assert (=> b!19797 m!21915))

(declare-fun m!21917 () Bool)

(assert (=> b!19797 m!21917))

(assert (=> b!19797 m!21915))

(assert (=> b!19797 m!21917))

(declare-fun m!21919 () Bool)

(assert (=> b!19797 m!21919))

(assert (=> b!19761 d!12329))

(declare-fun b!19809 () Bool)

(declare-fun e!10412 () Bool)

(assert (=> b!19809 (= e!10412 (balanced!29 (right!677 res!5600)))))

(declare-fun b!19807 () Bool)

(declare-fun res!8596 () Bool)

(assert (=> b!19807 (=> (not res!8596) (not e!10412))))

(assert (=> b!19807 (= res!8596 (<= (- (level!27 (left!674 res!5600)) (level!27 (right!677 res!5600))) 1))))

(declare-fun b!19808 () Bool)

(declare-fun res!8593 () Bool)

(assert (=> b!19808 (=> (not res!8593) (not e!10412))))

(assert (=> b!19808 (= res!8593 (balanced!29 (left!674 res!5600)))))

(declare-fun b!19806 () Bool)

(declare-fun e!10411 () Bool)

(assert (=> b!19806 (= e!10411 e!10412)))

(declare-fun res!8595 () Bool)

(assert (=> b!19806 (=> (not res!8595) (not e!10412))))

(assert (=> b!19806 (= res!8595 (>= (- (level!27 (left!674 res!5600)) (level!27 (right!677 res!5600))) (- 1)))))

(declare-fun d!12331 () Bool)

(declare-fun res!8594 () Bool)

(assert (=> d!12331 (=> res!8594 e!10411)))

(assert (=> d!12331 (= res!8594 (not (is-CC!29 res!5600)))))

(assert (=> d!12331 (= (balanced!29 res!5600) e!10411)))

(assert (= (and d!12331 (not res!8594)) b!19806))

(assert (= (and b!19806 res!8595) b!19807))

(assert (= (and b!19807 res!8596) b!19808))

(assert (= (and b!19808 res!8593) b!19809))

(declare-fun m!21921 () Bool)

(assert (=> b!19809 m!21921))

(declare-fun m!21923 () Bool)

(assert (=> b!19807 m!21923))

(declare-fun m!21925 () Bool)

(assert (=> b!19807 m!21925))

(declare-fun m!21927 () Bool)

(assert (=> b!19808 m!21927))

(assert (=> b!19806 m!21923))

(assert (=> b!19806 m!21925))

(assert (=> b!19759 d!12331))

(declare-fun d!12333 () Bool)

(declare-fun res!8605 () Bool)

(declare-fun e!10417 () Bool)

(assert (=> d!12333 (=> res!8605 e!10417)))

(assert (=> d!12333 (= res!8605 (not (is-CC!29 res!5600)))))

(assert (=> d!12333 (= (concInv!28 res!5600) e!10417)))

(declare-fun b!19818 () Bool)

(declare-fun e!10418 () Bool)

(assert (=> b!19818 (= e!10417 e!10418)))

(declare-fun res!8607 () Bool)

(assert (=> b!19818 (=> (not res!8607) (not e!10418))))

(assert (=> b!19818 (= res!8607 (not (isEmpty!292 (left!674 res!5600))))))

(declare-fun b!19821 () Bool)

(assert (=> b!19821 (= e!10418 (concInv!28 (right!677 res!5600)))))

(declare-fun b!19819 () Bool)

(declare-fun res!8608 () Bool)

(assert (=> b!19819 (=> (not res!8608) (not e!10418))))

(assert (=> b!19819 (= res!8608 (not (isEmpty!292 (right!677 res!5600))))))

(declare-fun b!19820 () Bool)

(declare-fun res!8606 () Bool)

(assert (=> b!19820 (=> (not res!8606) (not e!10418))))

(assert (=> b!19820 (= res!8606 (concInv!28 (left!674 res!5600)))))

(assert (= (and d!12333 (not res!8605)) b!19818))

(assert (= (and b!19818 res!8607) b!19819))

(assert (= (and b!19819 res!8608) b!19820))

(assert (= (and b!19820 res!8606) b!19821))

(declare-fun m!21929 () Bool)

(assert (=> b!19818 m!21929))

(declare-fun m!21931 () Bool)

(assert (=> b!19821 m!21931))

(declare-fun m!21933 () Bool)

(assert (=> b!19819 m!21933))

(declare-fun m!21935 () Bool)

(assert (=> b!19820 m!21935))

(assert (=> b!19768 d!12333))

(declare-fun d!12335 () Bool)

(declare-fun res!8609 () Bool)

(declare-fun e!10419 () Bool)

(assert (=> d!12335 (=> res!8609 e!10419)))

(assert (=> d!12335 (= res!8609 (not (is-CC!29 xs!604)))))

(assert (=> d!12335 (= (concInv!28 xs!604) e!10419)))

(declare-fun b!19822 () Bool)

(declare-fun e!10420 () Bool)

(assert (=> b!19822 (= e!10419 e!10420)))

(declare-fun res!8611 () Bool)

(assert (=> b!19822 (=> (not res!8611) (not e!10420))))

(assert (=> b!19822 (= res!8611 (not (isEmpty!292 (left!674 xs!604))))))

(declare-fun b!19825 () Bool)

(assert (=> b!19825 (= e!10420 (concInv!28 (right!677 xs!604)))))

(declare-fun b!19823 () Bool)

(declare-fun res!8612 () Bool)

(assert (=> b!19823 (=> (not res!8612) (not e!10420))))

(assert (=> b!19823 (= res!8612 (not (isEmpty!292 (right!677 xs!604))))))

(declare-fun b!19824 () Bool)

(declare-fun res!8610 () Bool)

(assert (=> b!19824 (=> (not res!8610) (not e!10420))))

(assert (=> b!19824 (= res!8610 (concInv!28 (left!674 xs!604)))))

(assert (= (and d!12335 (not res!8609)) b!19822))

(assert (= (and b!19822 res!8611) b!19823))

(assert (= (and b!19823 res!8612) b!19824))

(assert (= (and b!19824 res!8610) b!19825))

(declare-fun m!21937 () Bool)

(assert (=> b!19822 m!21937))

(declare-fun m!21939 () Bool)

(assert (=> b!19825 m!21939))

(declare-fun m!21941 () Bool)

(assert (=> b!19823 m!21941))

(declare-fun m!21943 () Bool)

(assert (=> b!19824 m!21943))

(assert (=> start!3374 d!12335))

(declare-fun d!12337 () Bool)

(assert (=> d!12337 (= (isEmpty!292 res!5600) (= res!5600 Empty!40))))

(assert (=> b!19769 d!12337))

(declare-fun b!19831 () Bool)

(declare-fun e!10423 () Int)

(declare-fun lt!2965 () Int)

(declare-fun lt!2964 () Int)

(assert (=> b!19831 (= e!10423 (+ 1 (ite (>= lt!2965 lt!2964) lt!2965 lt!2964)))))

(assert (=> b!19831 (= lt!2964 (level!27 (right!677 res!5600)))))

(assert (=> b!19831 (= lt!2965 (level!27 (left!674 res!5600)))))

(declare-fun d!12339 () Bool)

(declare-fun lt!2963 () Int)

(assert (=> d!12339 (>= lt!2963 0)))

(assert (=> d!12339 (= lt!2963 e!10423)))

(declare-fun c!4781 () Bool)

(assert (=> d!12339 (= c!4781 (or (is-Empty!40 res!5600) (is-Single!29 res!5600)))))

(assert (=> d!12339 (= (level!27 res!5600) lt!2963)))

(declare-fun b!19830 () Bool)

(assert (=> b!19830 (= e!10423 0)))

(assert (= (and d!12339 c!4781) b!19830))

(assert (= (and d!12339 (not c!4781)) b!19831))

(assert (=> b!19831 m!21925))

(assert (=> b!19831 m!21923))

(assert (=> b!19765 d!12339))

(declare-fun b!19833 () Bool)

(declare-fun e!10424 () Int)

(declare-fun lt!2968 () Int)

(declare-fun lt!2967 () Int)

(assert (=> b!19833 (= e!10424 (+ 1 (ite (>= lt!2968 lt!2967) lt!2968 lt!2967)))))

(assert (=> b!19833 (= lt!2967 (level!27 (right!677 xs!604)))))

(assert (=> b!19833 (= lt!2968 (level!27 (left!674 xs!604)))))

(declare-fun d!12341 () Bool)

(declare-fun lt!2966 () Int)

(assert (=> d!12341 (>= lt!2966 0)))

(assert (=> d!12341 (= lt!2966 e!10424)))

(declare-fun c!4782 () Bool)

(assert (=> d!12341 (= c!4782 (or (is-Empty!40 xs!604) (is-Single!29 xs!604)))))

(assert (=> d!12341 (= (level!27 xs!604) lt!2966)))

(declare-fun b!19832 () Bool)

(assert (=> b!19832 (= e!10424 0)))

(assert (= (and d!12341 c!4782) b!19832))

(assert (= (and d!12341 (not c!4782)) b!19833))

(declare-fun m!21945 () Bool)

(assert (=> b!19833 m!21945))

(declare-fun m!21947 () Bool)

(assert (=> b!19833 m!21947))

(assert (=> b!19765 d!12341))

(declare-fun b!19844 () Bool)

(declare-fun e!10430 () Int)

(assert (=> b!19844 (= e!10430 1)))

(declare-fun b!19845 () Bool)

(assert (=> b!19845 (= e!10430 (+ (size!219 (left!674 xs!604)) (size!219 (right!677 xs!604))))))

(declare-fun d!12343 () Bool)

(declare-fun lt!2971 () Int)

(assert (=> d!12343 (>= lt!2971 0)))

(declare-fun e!10429 () Int)

(assert (=> d!12343 (= lt!2971 e!10429)))

(declare-fun c!4787 () Bool)

(assert (=> d!12343 (= c!4787 (is-Empty!40 xs!604))))

(assert (=> d!12343 (= (size!219 xs!604) lt!2971)))

(declare-fun b!19843 () Bool)

(assert (=> b!19843 (= e!10429 e!10430)))

(declare-fun c!4788 () Bool)

(assert (=> b!19843 (= c!4788 (is-Single!29 xs!604))))

(declare-fun b!19842 () Bool)

(assert (=> b!19842 (= e!10429 0)))

(assert (= (and b!19843 c!4788) b!19844))

(assert (= (and b!19843 (not c!4788)) b!19845))

(assert (= (and d!12343 c!4787) b!19842))

(assert (= (and d!12343 (not c!4787)) b!19843))

(declare-fun m!21949 () Bool)

(assert (=> b!19845 m!21949))

(declare-fun m!21951 () Bool)

(assert (=> b!19845 m!21951))

(assert (=> b!19758 d!12343))

(assert (=> b!19757 d!12339))

(assert (=> b!19757 d!12341))

(declare-fun d!12345 () Bool)

(declare-fun e!10436 () Bool)

(assert (=> d!12345 e!10436))

(declare-fun res!8618 () Bool)

(assert (=> d!12345 (=> res!8618 e!10436)))

(assert (=> d!12345 (= res!8618 (not (is-CC!29 xs!604)))))

(declare-fun e!10435 () Bool)

(assert (=> d!12345 e!10435))

(declare-fun res!8617 () Bool)

(assert (=> d!12345 (=> (not res!8617) (not e!10435))))

(assert (=> d!12345 (= res!8617 (>= i!298 0))))

(assert (=> d!12345 (= (insertAppendAxiomInst!10 xs!604 i!298 y!824) true)))

(declare-fun b!19850 () Bool)

(assert (=> b!19850 (= e!10435 (<= i!298 (size!219 xs!604)))))

(declare-fun b!19851 () Bool)

(declare-fun appendInsertIndex!9 (List!335 List!335 Int T!1751) Bool)

(assert (=> b!19851 (= e!10436 (appendInsertIndex!9 (toList!95 (left!674 xs!604)) (toList!95 (right!677 xs!604)) i!298 y!824))))

(assert (= (and d!12345 res!8617) b!19850))

(assert (= (and d!12345 (not res!8618)) b!19851))

(assert (=> b!19850 m!21887))

(assert (=> b!19851 m!21915))

(assert (=> b!19851 m!21917))

(assert (=> b!19851 m!21915))

(assert (=> b!19851 m!21917))

(declare-fun m!21953 () Bool)

(assert (=> b!19851 m!21953))

(assert (=> b!19762 d!12345))

(declare-fun b!19855 () Bool)

(declare-fun e!10438 () Bool)

(assert (=> b!19855 (= e!10438 (balanced!29 (right!677 xs!604)))))

(declare-fun b!19853 () Bool)

(declare-fun res!8622 () Bool)

(assert (=> b!19853 (=> (not res!8622) (not e!10438))))

(assert (=> b!19853 (= res!8622 (<= (- (level!27 (left!674 xs!604)) (level!27 (right!677 xs!604))) 1))))

(declare-fun b!19854 () Bool)

(declare-fun res!8619 () Bool)

(assert (=> b!19854 (=> (not res!8619) (not e!10438))))

(assert (=> b!19854 (= res!8619 (balanced!29 (left!674 xs!604)))))

(declare-fun b!19852 () Bool)

(declare-fun e!10437 () Bool)

(assert (=> b!19852 (= e!10437 e!10438)))

(declare-fun res!8621 () Bool)

(assert (=> b!19852 (=> (not res!8621) (not e!10438))))

(assert (=> b!19852 (= res!8621 (>= (- (level!27 (left!674 xs!604)) (level!27 (right!677 xs!604))) (- 1)))))

(declare-fun d!12347 () Bool)

(declare-fun res!8620 () Bool)

(assert (=> d!12347 (=> res!8620 e!10437)))

(assert (=> d!12347 (= res!8620 (not (is-CC!29 xs!604)))))

(assert (=> d!12347 (= (balanced!29 xs!604) e!10437)))

(assert (= (and d!12347 (not res!8620)) b!19852))

(assert (= (and b!19852 res!8621) b!19853))

(assert (= (and b!19853 res!8622) b!19854))

(assert (= (and b!19854 res!8619) b!19855))

(declare-fun m!21955 () Bool)

(assert (=> b!19855 m!21955))

(assert (=> b!19853 m!21947))

(assert (=> b!19853 m!21945))

(declare-fun m!21957 () Bool)

(assert (=> b!19854 m!21957))

(assert (=> b!19852 m!21947))

(assert (=> b!19852 m!21945))

(assert (=> b!19767 d!12347))

(declare-fun b!19862 () Bool)

(declare-fun e!10441 () Bool)

(declare-fun tp!4589 () Bool)

(declare-fun tp!4590 () Bool)

(assert (=> b!19862 (= e!10441 (and tp!4589 tp!4590))))

(declare-fun b!19863 () Bool)

(assert (=> b!19863 (= e!10441 tp_is_empty!95)))

(assert (=> b!19756 (= tp!4584 e!10441)))

(assert (= (and b!19756 (is-CC!29 (left!674 res!5600))) b!19862))

(assert (= (and b!19756 (is-Single!29 (left!674 res!5600))) b!19863))

(declare-fun b!19864 () Bool)

(declare-fun e!10442 () Bool)

(declare-fun tp!4591 () Bool)

(declare-fun tp!4592 () Bool)

(assert (=> b!19864 (= e!10442 (and tp!4591 tp!4592))))

(declare-fun b!19865 () Bool)

(assert (=> b!19865 (= e!10442 tp_is_empty!95)))

(assert (=> b!19756 (= tp!4583 e!10442)))

(assert (= (and b!19756 (is-CC!29 (right!677 res!5600))) b!19864))

(assert (= (and b!19756 (is-Single!29 (right!677 res!5600))) b!19865))

(declare-fun b!19866 () Bool)

(declare-fun e!10443 () Bool)

(declare-fun tp!4593 () Bool)

(declare-fun tp!4594 () Bool)

(assert (=> b!19866 (= e!10443 (and tp!4593 tp!4594))))

(declare-fun b!19867 () Bool)

(assert (=> b!19867 (= e!10443 tp_is_empty!95)))

(assert (=> b!19760 (= tp!4582 e!10443)))

(assert (= (and b!19760 (is-CC!29 (left!674 xs!604))) b!19866))

(assert (= (and b!19760 (is-Single!29 (left!674 xs!604))) b!19867))

(declare-fun b!19868 () Bool)

(declare-fun e!10444 () Bool)

(declare-fun tp!4595 () Bool)

(declare-fun tp!4596 () Bool)

(assert (=> b!19868 (= e!10444 (and tp!4595 tp!4596))))

(declare-fun b!19869 () Bool)

(assert (=> b!19869 (= e!10444 tp_is_empty!95)))

(assert (=> b!19760 (= tp!4581 e!10444)))

(assert (= (and b!19760 (is-CC!29 (right!677 xs!604))) b!19868))

(assert (= (and b!19760 (is-Single!29 (right!677 xs!604))) b!19869))

(push 1)

(assert (not b!19855))

(assert (not d!12325))

(assert (not b!19818))

(assert (not b!19868))

(assert (not b!19806))

(assert tp_is_empty!95)

(assert (not b!19831))

(assert (not b!19824))

(assert (not b!19854))

(assert (not b!19809))

(assert (not b!19781))

(assert (not b!19822))

(assert (not b!19850))

(assert (not b!19825))

(assert (not b!19853))

(assert (not b!19819))

(assert (not d!12329))

(assert (not b!19862))

(assert (not b!19797))

(assert (not b!19866))

(assert (not b!19864))

(assert (not b!19821))

(assert (not b!19833))

(assert (not b!19793))

(assert (not b!19845))

(assert (not b!19823))

(assert (not b!19851))

(assert (not b!19807))

(assert (not b!19820))

(assert (not b!19852))

(assert (not b!19808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

