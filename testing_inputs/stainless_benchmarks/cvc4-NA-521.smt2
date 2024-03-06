; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3690 () Bool)

(assert start!3690)

(declare-fun b!23805 () Bool)

(declare-fun res!10581 () Bool)

(declare-fun e!12362 () Bool)

(assert (=> b!23805 (=> (not res!10581) (not e!12362))))

(declare-datatypes () ((T!1797 (T!1798 (val!71 Int)))))

(declare-datatypes () ((Conc!48 (CC!47 (left!692 Conc!48) (right!695 Conc!48)) (Single!47 (x!8854 T!1797)) (Empty!58))))

(declare-fun xs!572 () Conc!48)

(declare-fun isEmpty!307 (Conc!48) Bool)

(assert (=> b!23805 (= res!10581 (not (isEmpty!307 xs!572)))))

(declare-fun b!23806 () Bool)

(declare-fun e!12361 () Bool)

(declare-fun tp_is_empty!141 () Bool)

(assert (=> b!23806 (= e!12361 tp_is_empty!141)))

(declare-fun res!10579 () Bool)

(assert (=> start!3690 (=> (not res!10579) (not e!12362))))

(declare-fun concInv!44 (Conc!48) Bool)

(assert (=> start!3690 (= res!10579 (concInv!44 xs!572))))

(assert (=> start!3690 e!12362))

(assert (=> start!3690 e!12361))

(assert (=> start!3690 true))

(assert (=> start!3690 tp_is_empty!141))

(declare-fun b!23807 () Bool)

(declare-fun res!10575 () Bool)

(assert (=> b!23807 (=> (not res!10575) (not e!12362))))

(declare-fun res!5557 () T!1797)

(declare-fun i!252 () Int)

(declare-fun lookup!8 (Conc!48 Int) T!1797)

(declare-fun size!254 (Conc!48) Int)

(assert (=> b!23807 (= res!10575 (= res!5557 (lookup!8 (right!695 xs!572) (- i!252 (size!254 (left!692 xs!572))))))))

(declare-fun e!12363 () Bool)

(declare-fun b!23808 () Bool)

(declare-datatypes () ((List!352 (Cons!346 (h!262 T!1797) (t!4357 List!352)) (Nil!347))))

(declare-fun apply!47 (List!352 Int) T!1797)

(declare-fun toList!107 (Conc!48) List!352)

(assert (=> b!23808 (= e!12363 (not (= res!5557 (apply!47 (toList!107 xs!572) i!252))))))

(declare-fun b!23809 () Bool)

(assert (=> b!23809 (= e!12362 e!12363)))

(declare-fun res!10577 () Bool)

(assert (=> b!23809 (=> res!10577 e!12363)))

(declare-fun instAppendIndexAxiom!8 (Conc!48 Int) Bool)

(assert (=> b!23809 (= res!10577 (not (instAppendIndexAxiom!8 xs!572 i!252)))))

(declare-fun b!23810 () Bool)

(declare-fun res!10578 () Bool)

(assert (=> b!23810 (=> (not res!10578) (not e!12362))))

(declare-fun balanced!45 (Conc!48) Bool)

(assert (=> b!23810 (= res!10578 (balanced!45 xs!572))))

(declare-fun b!23811 () Bool)

(declare-fun res!10576 () Bool)

(assert (=> b!23811 (=> (not res!10576) (not e!12362))))

(assert (=> b!23811 (= res!10576 (>= i!252 0))))

(declare-fun b!23812 () Bool)

(declare-fun res!10580 () Bool)

(assert (=> b!23812 (=> (not res!10580) (not e!12362))))

(assert (=> b!23812 (= res!10580 (< i!252 (size!254 xs!572)))))

(declare-fun b!23813 () Bool)

(declare-fun res!10574 () Bool)

(assert (=> b!23813 (=> (not res!10574) (not e!12362))))

(assert (=> b!23813 (= res!10574 (>= i!252 (size!254 (left!692 xs!572))))))

(declare-fun b!23814 () Bool)

(declare-fun res!10573 () Bool)

(assert (=> b!23814 (=> (not res!10573) (not e!12362))))

(assert (=> b!23814 (= res!10573 (not (is-Single!47 xs!572)))))

(declare-fun b!23815 () Bool)

(declare-fun tp!5154 () Bool)

(declare-fun tp!5155 () Bool)

(assert (=> b!23815 (= e!12361 (and tp!5154 tp!5155))))

(assert (= (and start!3690 res!10579) b!23810))

(assert (= (and b!23810 res!10578) b!23805))

(assert (= (and b!23805 res!10581) b!23811))

(assert (= (and b!23811 res!10576) b!23812))

(assert (= (and b!23812 res!10580) b!23814))

(assert (= (and b!23814 res!10573) b!23813))

(assert (= (and b!23813 res!10574) b!23807))

(assert (= (and b!23807 res!10575) b!23809))

(assert (= (and b!23809 (not res!10577)) b!23808))

(assert (= (and start!3690 (is-CC!47 xs!572)) b!23815))

(assert (= (and start!3690 (is-Single!47 xs!572)) b!23806))

(declare-fun m!25229 () Bool)

(assert (=> b!23812 m!25229))

(declare-fun m!25231 () Bool)

(assert (=> b!23813 m!25231))

(declare-fun m!25233 () Bool)

(assert (=> b!23805 m!25233))

(declare-fun m!25235 () Bool)

(assert (=> b!23809 m!25235))

(assert (=> b!23807 m!25231))

(declare-fun m!25237 () Bool)

(assert (=> b!23807 m!25237))

(declare-fun m!25239 () Bool)

(assert (=> start!3690 m!25239))

(declare-fun m!25241 () Bool)

(assert (=> b!23808 m!25241))

(assert (=> b!23808 m!25241))

(declare-fun m!25243 () Bool)

(assert (=> b!23808 m!25243))

(declare-fun m!25245 () Bool)

(assert (=> b!23810 m!25245))

(push 1)

(assert (not b!23810))

(assert (not b!23809))

(assert (not b!23807))

(assert (not b!23815))

(assert (not b!23813))

(assert (not start!3690))

(assert (not b!23812))

(assert tp_is_empty!141)

(assert (not b!23808))

(assert (not b!23805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!23834 () Bool)

(declare-fun e!12374 () T!1797)

(assert (=> b!23834 (= e!12374 (lookup!8 (left!692 (right!695 xs!572)) (- i!252 (size!254 (left!692 xs!572)))))))

(declare-fun e!12377 () Bool)

(declare-fun b!23835 () Bool)

(declare-fun lt!3692 () T!1797)

(assert (=> b!23835 (= e!12377 (= lt!3692 (apply!47 (toList!107 (right!695 xs!572)) (- i!252 (size!254 (left!692 xs!572))))))))

(declare-fun b!23836 () Bool)

(declare-fun e!12376 () Bool)

(assert (=> b!23836 (= e!12376 (balanced!45 (right!695 xs!572)))))

(declare-fun b!23837 () Bool)

(declare-fun res!10595 () Bool)

(declare-fun e!12378 () Bool)

(assert (=> b!23837 (=> (not res!10595) (not e!12378))))

(assert (=> b!23837 (= res!10595 (not (isEmpty!307 (right!695 xs!572))))))

(declare-fun b!23838 () Bool)

(declare-fun e!12375 () T!1797)

(assert (=> b!23838 (= e!12375 e!12374)))

(declare-fun c!5549 () Bool)

(assert (=> b!23838 (= c!5549 (< (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))))))

(declare-fun b!23839 () Bool)

(assert (=> b!23839 (= e!12374 (lookup!8 (right!695 (right!695 xs!572)) (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572))))))))

(declare-fun b!23840 () Bool)

(declare-fun res!10594 () Bool)

(assert (=> b!23840 (=> (not res!10594) (not e!12378))))

(assert (=> b!23840 (= res!10594 (>= (- i!252 (size!254 (left!692 xs!572))) 0))))

(declare-fun d!13407 () Bool)

(assert (=> d!13407 e!12377))

(declare-fun res!10596 () Bool)

(assert (=> d!13407 (=> (not res!10596) (not e!12377))))

(assert (=> d!13407 (= res!10596 (instAppendIndexAxiom!8 (right!695 xs!572) (- i!252 (size!254 (left!692 xs!572)))))))

(assert (=> d!13407 (= lt!3692 e!12375)))

(declare-fun c!5548 () Bool)

(assert (=> d!13407 (= c!5548 (is-Single!47 (right!695 xs!572)))))

(assert (=> d!13407 e!12378))

(declare-fun res!10593 () Bool)

(assert (=> d!13407 (=> (not res!10593) (not e!12378))))

(assert (=> d!13407 (= res!10593 e!12376)))

(declare-fun res!10597 () Bool)

(assert (=> d!13407 (=> (not res!10597) (not e!12376))))

(assert (=> d!13407 (= res!10597 (concInv!44 (right!695 xs!572)))))

(assert (=> d!13407 (= (lookup!8 (right!695 xs!572) (- i!252 (size!254 (left!692 xs!572)))) lt!3692)))

(declare-fun b!23841 () Bool)

(assert (=> b!23841 (= e!12375 (x!8854 (right!695 xs!572)))))

(declare-fun b!23842 () Bool)

(assert (=> b!23842 (= e!12378 (< (- i!252 (size!254 (left!692 xs!572))) (size!254 (right!695 xs!572))))))

(assert (= (and d!13407 res!10597) b!23836))

(assert (= (and d!13407 res!10593) b!23837))

(assert (= (and b!23837 res!10595) b!23840))

(assert (= (and b!23840 res!10594) b!23842))

(assert (= (and b!23838 c!5549) b!23834))

(assert (= (and b!23838 (not c!5549)) b!23839))

(assert (= (and d!13407 c!5548) b!23841))

(assert (= (and d!13407 (not c!5548)) b!23838))

(assert (= (and d!13407 res!10596) b!23835))

(declare-fun m!25247 () Bool)

(assert (=> d!13407 m!25247))

(declare-fun m!25249 () Bool)

(assert (=> d!13407 m!25249))

(declare-fun m!25251 () Bool)

(assert (=> b!23835 m!25251))

(assert (=> b!23835 m!25251))

(declare-fun m!25253 () Bool)

(assert (=> b!23835 m!25253))

(declare-fun m!25255 () Bool)

(assert (=> b!23839 m!25255))

(declare-fun m!25257 () Bool)

(assert (=> b!23839 m!25257))

(declare-fun m!25259 () Bool)

(assert (=> b!23834 m!25259))

(declare-fun m!25261 () Bool)

(assert (=> b!23837 m!25261))

(declare-fun m!25263 () Bool)

(assert (=> b!23842 m!25263))

(declare-fun m!25265 () Bool)

(assert (=> b!23836 m!25265))

(assert (=> b!23838 m!25255))

(assert (=> b!23807 d!13407))

(declare-fun d!13409 () Bool)

(declare-fun lt!3695 () Int)

(assert (=> d!13409 (>= lt!3695 0)))

(declare-fun e!12383 () Int)

(assert (=> d!13409 (= lt!3695 e!12383)))

(declare-fun c!5555 () Bool)

(assert (=> d!13409 (= c!5555 (is-Empty!58 (left!692 xs!572)))))

(assert (=> d!13409 (= (size!254 (left!692 xs!572)) lt!3695)))

(declare-fun b!23854 () Bool)

(declare-fun e!12384 () Int)

(assert (=> b!23854 (= e!12384 (+ (size!254 (left!692 (left!692 xs!572))) (size!254 (right!695 (left!692 xs!572)))))))

(declare-fun b!23853 () Bool)

(assert (=> b!23853 (= e!12384 1)))

(declare-fun b!23851 () Bool)

(assert (=> b!23851 (= e!12383 0)))

(declare-fun b!23852 () Bool)

(assert (=> b!23852 (= e!12383 e!12384)))

(declare-fun c!5554 () Bool)

(assert (=> b!23852 (= c!5554 (is-Single!47 (left!692 xs!572)))))

(assert (= (and b!23852 c!5554) b!23853))

(assert (= (and b!23852 (not c!5554)) b!23854))

(assert (= (and d!13409 c!5555) b!23851))

(assert (= (and d!13409 (not c!5555)) b!23852))

(declare-fun m!25267 () Bool)

(assert (=> b!23854 m!25267))

(declare-fun m!25269 () Bool)

(assert (=> b!23854 m!25269))

(assert (=> b!23807 d!13409))

(declare-fun d!13411 () Bool)

(declare-fun e!12390 () Bool)

(assert (=> d!13411 e!12390))

(declare-fun res!10603 () Bool)

(assert (=> d!13411 (=> res!10603 e!12390)))

(assert (=> d!13411 (= res!10603 (not (is-CC!47 xs!572)))))

(declare-fun e!12389 () Bool)

(assert (=> d!13411 e!12389))

(declare-fun res!10602 () Bool)

(assert (=> d!13411 (=> (not res!10602) (not e!12389))))

(assert (=> d!13411 (= res!10602 (<= 0 i!252))))

(assert (=> d!13411 (= (instAppendIndexAxiom!8 xs!572 i!252) true)))

(declare-fun b!23859 () Bool)

(assert (=> b!23859 (= e!12389 (< i!252 (size!254 xs!572)))))

(declare-fun b!23860 () Bool)

(declare-fun appendIndex!7 (List!352 List!352 Int) Bool)

(assert (=> b!23860 (= e!12390 (appendIndex!7 (toList!107 (left!692 xs!572)) (toList!107 (right!695 xs!572)) i!252))))

(assert (= (and d!13411 res!10602) b!23859))

(assert (= (and d!13411 (not res!10603)) b!23860))

(assert (=> b!23859 m!25229))

(declare-fun m!25271 () Bool)

(assert (=> b!23860 m!25271))

(assert (=> b!23860 m!25251))

(assert (=> b!23860 m!25271))

(assert (=> b!23860 m!25251))

(declare-fun m!25273 () Bool)

(assert (=> b!23860 m!25273))

(assert (=> b!23809 d!13411))

(declare-fun d!13413 () Bool)

(declare-fun c!5558 () Bool)

(assert (=> d!13413 (= c!5558 (= i!252 0))))

(declare-fun e!12393 () T!1797)

(assert (=> d!13413 (= (apply!47 (toList!107 xs!572) i!252) e!12393)))

(declare-fun b!23865 () Bool)

(declare-fun head!539 (List!352) T!1797)

(assert (=> b!23865 (= e!12393 (head!539 (toList!107 xs!572)))))

(declare-fun b!23866 () Bool)

(declare-fun tail!566 (List!352) List!352)

(assert (=> b!23866 (= e!12393 (apply!47 (tail!566 (toList!107 xs!572)) (- i!252 1)))))

(assert (= (and d!13413 c!5558) b!23865))

(assert (= (and d!13413 (not c!5558)) b!23866))

(assert (=> b!23865 m!25241))

(declare-fun m!25275 () Bool)

(assert (=> b!23865 m!25275))

(assert (=> b!23866 m!25241))

(declare-fun m!25277 () Bool)

(assert (=> b!23866 m!25277))

(assert (=> b!23866 m!25277))

(declare-fun m!25279 () Bool)

(assert (=> b!23866 m!25279))

(assert (=> b!23808 d!13413))

(declare-fun d!13415 () Bool)

(declare-fun lt!3698 () List!352)

(declare-fun size!255 (List!352) Int)

(assert (=> d!13415 (= (size!255 lt!3698) (size!254 xs!572))))

(declare-fun e!12399 () List!352)

(assert (=> d!13415 (= lt!3698 e!12399)))

(declare-fun c!5563 () Bool)

(assert (=> d!13415 (= c!5563 (is-Empty!58 xs!572))))

(assert (=> d!13415 (= (toList!107 xs!572) lt!3698)))

(declare-fun b!23878 () Bool)

(declare-fun e!12398 () List!352)

(declare-fun ++!32 (List!352 List!352) List!352)

(assert (=> b!23878 (= e!12398 (++!32 (toList!107 (left!692 xs!572)) (toList!107 (right!695 xs!572))))))

(declare-fun b!23877 () Bool)

(assert (=> b!23877 (= e!12398 (Cons!346 (x!8854 xs!572) Nil!347))))

(declare-fun b!23875 () Bool)

(assert (=> b!23875 (= e!12399 Nil!347)))

(declare-fun b!23876 () Bool)

(assert (=> b!23876 (= e!12399 e!12398)))

(declare-fun c!5564 () Bool)

(assert (=> b!23876 (= c!5564 (is-Single!47 xs!572))))

(assert (= (and b!23876 c!5564) b!23877))

(assert (= (and b!23876 (not c!5564)) b!23878))

(assert (= (and d!13415 c!5563) b!23875))

(assert (= (and d!13415 (not c!5563)) b!23876))

(declare-fun m!25281 () Bool)

(assert (=> d!13415 m!25281))

(assert (=> d!13415 m!25229))

(assert (=> b!23878 m!25271))

(assert (=> b!23878 m!25251))

(assert (=> b!23878 m!25271))

(assert (=> b!23878 m!25251))

(declare-fun m!25283 () Bool)

(assert (=> b!23878 m!25283))

(assert (=> b!23808 d!13415))

(declare-fun d!13417 () Bool)

(assert (=> d!13417 (= (isEmpty!307 xs!572) (= xs!572 Empty!58))))

(assert (=> b!23805 d!13417))

(declare-fun d!13419 () Bool)

(declare-fun lt!3699 () Int)

(assert (=> d!13419 (>= lt!3699 0)))

(declare-fun e!12400 () Int)

(assert (=> d!13419 (= lt!3699 e!12400)))

(declare-fun c!5566 () Bool)

(assert (=> d!13419 (= c!5566 (is-Empty!58 xs!572))))

(assert (=> d!13419 (= (size!254 xs!572) lt!3699)))

(declare-fun b!23882 () Bool)

(declare-fun e!12401 () Int)

(assert (=> b!23882 (= e!12401 (+ (size!254 (left!692 xs!572)) (size!254 (right!695 xs!572))))))

(declare-fun b!23881 () Bool)

(assert (=> b!23881 (= e!12401 1)))

(declare-fun b!23879 () Bool)

(assert (=> b!23879 (= e!12400 0)))

(declare-fun b!23880 () Bool)

(assert (=> b!23880 (= e!12400 e!12401)))

(declare-fun c!5565 () Bool)

(assert (=> b!23880 (= c!5565 (is-Single!47 xs!572))))

(assert (= (and b!23880 c!5565) b!23881))

(assert (= (and b!23880 (not c!5565)) b!23882))

(assert (= (and d!13419 c!5566) b!23879))

(assert (= (and d!13419 (not c!5566)) b!23880))

(assert (=> b!23882 m!25231))

(assert (=> b!23882 m!25263))

(assert (=> b!23812 d!13419))

(assert (=> b!23813 d!13409))

(declare-fun b!23894 () Bool)

(declare-fun e!12406 () Bool)

(assert (=> b!23894 (= e!12406 (balanced!45 (right!695 xs!572)))))

(declare-fun b!23893 () Bool)

(declare-fun res!10615 () Bool)

(assert (=> b!23893 (=> (not res!10615) (not e!12406))))

(assert (=> b!23893 (= res!10615 (balanced!45 (left!692 xs!572)))))

(declare-fun b!23891 () Bool)

(declare-fun e!12407 () Bool)

(assert (=> b!23891 (= e!12407 e!12406)))

(declare-fun res!10616 () Bool)

(assert (=> b!23891 (=> (not res!10616) (not e!12406))))

(declare-fun level!39 (Conc!48) Int)

(assert (=> b!23891 (= res!10616 (>= (- (level!39 (left!692 xs!572)) (level!39 (right!695 xs!572))) (- 1)))))

(declare-fun b!23892 () Bool)

(declare-fun res!10614 () Bool)

(assert (=> b!23892 (=> (not res!10614) (not e!12406))))

(assert (=> b!23892 (= res!10614 (<= (- (level!39 (left!692 xs!572)) (level!39 (right!695 xs!572))) 1))))

(declare-fun d!13421 () Bool)

(declare-fun res!10613 () Bool)

(assert (=> d!13421 (=> res!10613 e!12407)))

(assert (=> d!13421 (= res!10613 (not (is-CC!47 xs!572)))))

(assert (=> d!13421 (= (balanced!45 xs!572) e!12407)))

(assert (= (and d!13421 (not res!10613)) b!23891))

(assert (= (and b!23891 res!10616) b!23892))

(assert (= (and b!23892 res!10614) b!23893))

(assert (= (and b!23893 res!10615) b!23894))

(assert (=> b!23894 m!25265))

(declare-fun m!25285 () Bool)

(assert (=> b!23893 m!25285))

(declare-fun m!25287 () Bool)

(assert (=> b!23891 m!25287))

(declare-fun m!25289 () Bool)

(assert (=> b!23891 m!25289))

(assert (=> b!23892 m!25287))

(assert (=> b!23892 m!25289))

(assert (=> b!23810 d!13421))

(declare-fun b!23905 () Bool)

(declare-fun res!10627 () Bool)

(declare-fun e!12412 () Bool)

(assert (=> b!23905 (=> (not res!10627) (not e!12412))))

(assert (=> b!23905 (= res!10627 (concInv!44 (left!692 xs!572)))))

(declare-fun d!13423 () Bool)

(declare-fun res!10625 () Bool)

(declare-fun e!12413 () Bool)

(assert (=> d!13423 (=> res!10625 e!12413)))

(assert (=> d!13423 (= res!10625 (not (is-CC!47 xs!572)))))

(assert (=> d!13423 (= (concInv!44 xs!572) e!12413)))

(declare-fun b!23904 () Bool)

(declare-fun res!10628 () Bool)

(assert (=> b!23904 (=> (not res!10628) (not e!12412))))

(assert (=> b!23904 (= res!10628 (not (isEmpty!307 (right!695 xs!572))))))

(declare-fun b!23906 () Bool)

(assert (=> b!23906 (= e!12412 (concInv!44 (right!695 xs!572)))))

(declare-fun b!23903 () Bool)

(assert (=> b!23903 (= e!12413 e!12412)))

(declare-fun res!10626 () Bool)

(assert (=> b!23903 (=> (not res!10626) (not e!12412))))

(assert (=> b!23903 (= res!10626 (not (isEmpty!307 (left!692 xs!572))))))

(assert (= (and d!13423 (not res!10625)) b!23903))

(assert (= (and b!23903 res!10626) b!23904))

(assert (= (and b!23904 res!10628) b!23905))

(assert (= (and b!23905 res!10627) b!23906))

(declare-fun m!25291 () Bool)

(assert (=> b!23905 m!25291))

(assert (=> b!23904 m!25261))

(assert (=> b!23906 m!25249))

(declare-fun m!25293 () Bool)

(assert (=> b!23903 m!25293))

(assert (=> start!3690 d!13423))

(declare-fun b!23913 () Bool)

(declare-fun e!12416 () Bool)

(declare-fun tp!5160 () Bool)

(declare-fun tp!5161 () Bool)

(assert (=> b!23913 (= e!12416 (and tp!5160 tp!5161))))

(declare-fun b!23914 () Bool)

(assert (=> b!23914 (= e!12416 tp_is_empty!141)))

(assert (=> b!23815 (= tp!5154 e!12416)))

(assert (= (and b!23815 (is-CC!47 (left!692 xs!572))) b!23913))

(assert (= (and b!23815 (is-Single!47 (left!692 xs!572))) b!23914))

(declare-fun b!23915 () Bool)

(declare-fun e!12417 () Bool)

(declare-fun tp!5162 () Bool)

(declare-fun tp!5163 () Bool)

(assert (=> b!23915 (= e!12417 (and tp!5162 tp!5163))))

(declare-fun b!23916 () Bool)

(assert (=> b!23916 (= e!12417 tp_is_empty!141)))

(assert (=> b!23815 (= tp!5155 e!12417)))

(assert (= (and b!23815 (is-CC!47 (right!695 xs!572))) b!23915))

(assert (= (and b!23815 (is-Single!47 (right!695 xs!572))) b!23916))

(push 1)

(assert (not b!23839))

(assert (not b!23891))

(assert (not b!23904))

(assert (not d!13407))

(assert (not b!23860))

(assert (not b!23878))

(assert (not b!23835))

(assert (not b!23837))

(assert (not b!23842))

(assert (not b!23892))

(assert (not d!13415))

(assert (not b!23906))

(assert (not b!23915))

(assert (not b!23893))

(assert (not b!23882))

(assert (not b!23894))

(assert (not b!23905))

(assert (not b!23865))

(assert (not b!23913))

(assert tp_is_empty!141)

(assert (not b!23859))

(assert (not b!23903))

(assert (not b!23866))

(assert (not b!23836))

(assert (not b!23838))

(assert (not b!23854))

(assert (not b!23834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13425 () Bool)

(assert (=> d!13425 (= (isEmpty!307 (right!695 xs!572)) (= (right!695 xs!572) Empty!58))))

(assert (=> b!23837 d!13425))

(declare-fun b!23917 () Bool)

(declare-fun e!12418 () T!1797)

(assert (=> b!23917 (= e!12418 (lookup!8 (left!692 (left!692 (right!695 xs!572))) (- i!252 (size!254 (left!692 xs!572)))))))

(declare-fun lt!3700 () T!1797)

(declare-fun e!12421 () Bool)

(declare-fun b!23918 () Bool)

(assert (=> b!23918 (= e!12421 (= lt!3700 (apply!47 (toList!107 (left!692 (right!695 xs!572))) (- i!252 (size!254 (left!692 xs!572))))))))

(declare-fun b!23919 () Bool)

(declare-fun e!12420 () Bool)

(assert (=> b!23919 (= e!12420 (balanced!45 (left!692 (right!695 xs!572))))))

(declare-fun b!23920 () Bool)

(declare-fun res!10631 () Bool)

(declare-fun e!12422 () Bool)

(assert (=> b!23920 (=> (not res!10631) (not e!12422))))

(assert (=> b!23920 (= res!10631 (not (isEmpty!307 (left!692 (right!695 xs!572)))))))

(declare-fun b!23921 () Bool)

(declare-fun e!12419 () T!1797)

(assert (=> b!23921 (= e!12419 e!12418)))

(declare-fun c!5568 () Bool)

(assert (=> b!23921 (= c!5568 (< (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (left!692 (right!695 xs!572))))))))

(declare-fun b!23922 () Bool)

(assert (=> b!23922 (= e!12418 (lookup!8 (right!695 (left!692 (right!695 xs!572))) (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (left!692 (right!695 xs!572)))))))))

(declare-fun b!23923 () Bool)

(declare-fun res!10630 () Bool)

(assert (=> b!23923 (=> (not res!10630) (not e!12422))))

(assert (=> b!23923 (= res!10630 (>= (- i!252 (size!254 (left!692 xs!572))) 0))))

(declare-fun d!13427 () Bool)

(assert (=> d!13427 e!12421))

(declare-fun res!10632 () Bool)

(assert (=> d!13427 (=> (not res!10632) (not e!12421))))

(assert (=> d!13427 (= res!10632 (instAppendIndexAxiom!8 (left!692 (right!695 xs!572)) (- i!252 (size!254 (left!692 xs!572)))))))

(assert (=> d!13427 (= lt!3700 e!12419)))

(declare-fun c!5567 () Bool)

(assert (=> d!13427 (= c!5567 (is-Single!47 (left!692 (right!695 xs!572))))))

(assert (=> d!13427 e!12422))

(declare-fun res!10629 () Bool)

(assert (=> d!13427 (=> (not res!10629) (not e!12422))))

(assert (=> d!13427 (= res!10629 e!12420)))

(declare-fun res!10633 () Bool)

(assert (=> d!13427 (=> (not res!10633) (not e!12420))))

(assert (=> d!13427 (= res!10633 (concInv!44 (left!692 (right!695 xs!572))))))

(assert (=> d!13427 (= (lookup!8 (left!692 (right!695 xs!572)) (- i!252 (size!254 (left!692 xs!572)))) lt!3700)))

(declare-fun b!23924 () Bool)

(assert (=> b!23924 (= e!12419 (x!8854 (left!692 (right!695 xs!572))))))

(declare-fun b!23925 () Bool)

(assert (=> b!23925 (= e!12422 (< (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))))))

(assert (= (and d!13427 res!10633) b!23919))

(assert (= (and d!13427 res!10629) b!23920))

(assert (= (and b!23920 res!10631) b!23923))

(assert (= (and b!23923 res!10630) b!23925))

(assert (= (and b!23921 c!5568) b!23917))

(assert (= (and b!23921 (not c!5568)) b!23922))

(assert (= (and d!13427 c!5567) b!23924))

(assert (= (and d!13427 (not c!5567)) b!23921))

(assert (= (and d!13427 res!10632) b!23918))

(declare-fun m!25295 () Bool)

(assert (=> d!13427 m!25295))

(declare-fun m!25297 () Bool)

(assert (=> d!13427 m!25297))

(declare-fun m!25299 () Bool)

(assert (=> b!23918 m!25299))

(assert (=> b!23918 m!25299))

(declare-fun m!25301 () Bool)

(assert (=> b!23918 m!25301))

(declare-fun m!25303 () Bool)

(assert (=> b!23922 m!25303))

(declare-fun m!25305 () Bool)

(assert (=> b!23922 m!25305))

(declare-fun m!25307 () Bool)

(assert (=> b!23917 m!25307))

(declare-fun m!25309 () Bool)

(assert (=> b!23920 m!25309))

(assert (=> b!23925 m!25255))

(declare-fun m!25311 () Bool)

(assert (=> b!23919 m!25311))

(assert (=> b!23921 m!25303))

(assert (=> b!23834 d!13427))

(declare-fun b!23929 () Bool)

(declare-fun e!12423 () Bool)

(assert (=> b!23929 (= e!12423 (balanced!45 (right!695 (right!695 xs!572))))))

(declare-fun b!23928 () Bool)

(declare-fun res!10636 () Bool)

(assert (=> b!23928 (=> (not res!10636) (not e!12423))))

(assert (=> b!23928 (= res!10636 (balanced!45 (left!692 (right!695 xs!572))))))

(declare-fun b!23926 () Bool)

(declare-fun e!12424 () Bool)

(assert (=> b!23926 (= e!12424 e!12423)))

(declare-fun res!10637 () Bool)

(assert (=> b!23926 (=> (not res!10637) (not e!12423))))

(assert (=> b!23926 (= res!10637 (>= (- (level!39 (left!692 (right!695 xs!572))) (level!39 (right!695 (right!695 xs!572)))) (- 1)))))

(declare-fun b!23927 () Bool)

(declare-fun res!10635 () Bool)

(assert (=> b!23927 (=> (not res!10635) (not e!12423))))

(assert (=> b!23927 (= res!10635 (<= (- (level!39 (left!692 (right!695 xs!572))) (level!39 (right!695 (right!695 xs!572)))) 1))))

(declare-fun d!13429 () Bool)

(declare-fun res!10634 () Bool)

(assert (=> d!13429 (=> res!10634 e!12424)))

(assert (=> d!13429 (= res!10634 (not (is-CC!47 (right!695 xs!572))))))

(assert (=> d!13429 (= (balanced!45 (right!695 xs!572)) e!12424)))

(assert (= (and d!13429 (not res!10634)) b!23926))

(assert (= (and b!23926 res!10637) b!23927))

(assert (= (and b!23927 res!10635) b!23928))

(assert (= (and b!23928 res!10636) b!23929))

(declare-fun m!25313 () Bool)

(assert (=> b!23929 m!25313))

(assert (=> b!23928 m!25311))

(declare-fun m!25315 () Bool)

(assert (=> b!23926 m!25315))

(declare-fun m!25317 () Bool)

(assert (=> b!23926 m!25317))

(assert (=> b!23927 m!25315))

(assert (=> b!23927 m!25317))

(assert (=> b!23836 d!13429))

(declare-fun b!23935 () Bool)

(declare-fun e!12427 () Int)

(declare-fun lt!3709 () Int)

(declare-fun lt!3707 () Int)

(assert (=> b!23935 (= e!12427 (+ 1 (ite (>= lt!3709 lt!3707) lt!3709 lt!3707)))))

(assert (=> b!23935 (= lt!3707 (level!39 (right!695 (left!692 xs!572))))))

(assert (=> b!23935 (= lt!3709 (level!39 (left!692 (left!692 xs!572))))))

(declare-fun d!13431 () Bool)

(declare-fun lt!3708 () Int)

(assert (=> d!13431 (>= lt!3708 0)))

(assert (=> d!13431 (= lt!3708 e!12427)))

(declare-fun c!5571 () Bool)

(assert (=> d!13431 (= c!5571 (or (is-Empty!58 (left!692 xs!572)) (is-Single!47 (left!692 xs!572))))))

(assert (=> d!13431 (= (level!39 (left!692 xs!572)) lt!3708)))

(declare-fun b!23934 () Bool)

(assert (=> b!23934 (= e!12427 0)))

(assert (= (and d!13431 c!5571) b!23934))

(assert (= (and d!13431 (not c!5571)) b!23935))

(declare-fun m!25319 () Bool)

(assert (=> b!23935 m!25319))

(declare-fun m!25321 () Bool)

(assert (=> b!23935 m!25321))

(assert (=> b!23892 d!13431))

(declare-fun b!23937 () Bool)

(declare-fun e!12428 () Int)

(declare-fun lt!3712 () Int)

(declare-fun lt!3710 () Int)

(assert (=> b!23937 (= e!12428 (+ 1 (ite (>= lt!3712 lt!3710) lt!3712 lt!3710)))))

(assert (=> b!23937 (= lt!3710 (level!39 (right!695 (right!695 xs!572))))))

(assert (=> b!23937 (= lt!3712 (level!39 (left!692 (right!695 xs!572))))))

(declare-fun d!13433 () Bool)

(declare-fun lt!3711 () Int)

(assert (=> d!13433 (>= lt!3711 0)))

(assert (=> d!13433 (= lt!3711 e!12428)))

(declare-fun c!5572 () Bool)

(assert (=> d!13433 (= c!5572 (or (is-Empty!58 (right!695 xs!572)) (is-Single!47 (right!695 xs!572))))))

(assert (=> d!13433 (= (level!39 (right!695 xs!572)) lt!3711)))

(declare-fun b!23936 () Bool)

(assert (=> b!23936 (= e!12428 0)))

(assert (= (and d!13433 c!5572) b!23936))

(assert (= (and d!13433 (not c!5572)) b!23937))

(assert (=> b!23937 m!25317))

(assert (=> b!23937 m!25315))

(assert (=> b!23892 d!13433))

(declare-fun d!13435 () Bool)

(declare-fun lt!3713 () Int)

(assert (=> d!13435 (>= lt!3713 0)))

(declare-fun e!12429 () Int)

(assert (=> d!13435 (= lt!3713 e!12429)))

(declare-fun c!5574 () Bool)

(assert (=> d!13435 (= c!5574 (is-Empty!58 (right!695 xs!572)))))

(assert (=> d!13435 (= (size!254 (right!695 xs!572)) lt!3713)))

(declare-fun b!23941 () Bool)

(declare-fun e!12430 () Int)

(assert (=> b!23941 (= e!12430 (+ (size!254 (left!692 (right!695 xs!572))) (size!254 (right!695 (right!695 xs!572)))))))

(declare-fun b!23940 () Bool)

(assert (=> b!23940 (= e!12430 1)))

(declare-fun b!23938 () Bool)

(assert (=> b!23938 (= e!12429 0)))

(declare-fun b!23939 () Bool)

(assert (=> b!23939 (= e!12429 e!12430)))

(declare-fun c!5573 () Bool)

(assert (=> b!23939 (= c!5573 (is-Single!47 (right!695 xs!572)))))

(assert (= (and b!23939 c!5573) b!23940))

(assert (= (and b!23939 (not c!5573)) b!23941))

(assert (= (and d!13435 c!5574) b!23938))

(assert (= (and d!13435 (not c!5574)) b!23939))

(assert (=> b!23941 m!25255))

(declare-fun m!25323 () Bool)

(assert (=> b!23941 m!25323))

(assert (=> b!23842 d!13435))

(declare-fun d!13437 () Bool)

(declare-fun e!12432 () Bool)

(assert (=> d!13437 e!12432))

(declare-fun res!10639 () Bool)

(assert (=> d!13437 (=> res!10639 e!12432)))

(assert (=> d!13437 (= res!10639 (not (is-CC!47 (right!695 xs!572))))))

(declare-fun e!12431 () Bool)

(assert (=> d!13437 e!12431))

(declare-fun res!10638 () Bool)

(assert (=> d!13437 (=> (not res!10638) (not e!12431))))

(assert (=> d!13437 (= res!10638 (<= 0 (- i!252 (size!254 (left!692 xs!572)))))))

(assert (=> d!13437 (= (instAppendIndexAxiom!8 (right!695 xs!572) (- i!252 (size!254 (left!692 xs!572)))) true)))

(declare-fun b!23942 () Bool)

(assert (=> b!23942 (= e!12431 (< (- i!252 (size!254 (left!692 xs!572))) (size!254 (right!695 xs!572))))))

(declare-fun b!23943 () Bool)

(assert (=> b!23943 (= e!12432 (appendIndex!7 (toList!107 (left!692 (right!695 xs!572))) (toList!107 (right!695 (right!695 xs!572))) (- i!252 (size!254 (left!692 xs!572)))))))

(assert (= (and d!13437 res!10638) b!23942))

(assert (= (and d!13437 (not res!10639)) b!23943))

(assert (=> b!23942 m!25263))

(assert (=> b!23943 m!25299))

(declare-fun m!25325 () Bool)

(assert (=> b!23943 m!25325))

(assert (=> b!23943 m!25299))

(assert (=> b!23943 m!25325))

(declare-fun m!25327 () Bool)

(assert (=> b!23943 m!25327))

(assert (=> d!13407 d!13437))

(declare-fun b!23946 () Bool)

(declare-fun res!10642 () Bool)

(declare-fun e!12433 () Bool)

(assert (=> b!23946 (=> (not res!10642) (not e!12433))))

(assert (=> b!23946 (= res!10642 (concInv!44 (left!692 (right!695 xs!572))))))

(declare-fun d!13439 () Bool)

(declare-fun res!10640 () Bool)

(declare-fun e!12434 () Bool)

(assert (=> d!13439 (=> res!10640 e!12434)))

(assert (=> d!13439 (= res!10640 (not (is-CC!47 (right!695 xs!572))))))

(assert (=> d!13439 (= (concInv!44 (right!695 xs!572)) e!12434)))

(declare-fun b!23945 () Bool)

(declare-fun res!10643 () Bool)

(assert (=> b!23945 (=> (not res!10643) (not e!12433))))

(assert (=> b!23945 (= res!10643 (not (isEmpty!307 (right!695 (right!695 xs!572)))))))

(declare-fun b!23947 () Bool)

(assert (=> b!23947 (= e!12433 (concInv!44 (right!695 (right!695 xs!572))))))

(declare-fun b!23944 () Bool)

(assert (=> b!23944 (= e!12434 e!12433)))

(declare-fun res!10641 () Bool)

(assert (=> b!23944 (=> (not res!10641) (not e!12433))))

(assert (=> b!23944 (= res!10641 (not (isEmpty!307 (left!692 (right!695 xs!572)))))))

(assert (= (and d!13439 (not res!10640)) b!23944))

(assert (= (and b!23944 res!10641) b!23945))

(assert (= (and b!23945 res!10643) b!23946))

(assert (= (and b!23946 res!10642) b!23947))

(assert (=> b!23946 m!25297))

(declare-fun m!25329 () Bool)

(assert (=> b!23945 m!25329))

(declare-fun m!25331 () Bool)

(assert (=> b!23947 m!25331))

(assert (=> b!23944 m!25309))

(assert (=> d!13407 d!13439))

(declare-fun d!13441 () Bool)

(declare-fun c!5575 () Bool)

(assert (=> d!13441 (= c!5575 (= (- i!252 1) 0))))

(declare-fun e!12435 () T!1797)

(assert (=> d!13441 (= (apply!47 (tail!566 (toList!107 xs!572)) (- i!252 1)) e!12435)))

(declare-fun b!23948 () Bool)

(assert (=> b!23948 (= e!12435 (head!539 (tail!566 (toList!107 xs!572))))))

(declare-fun b!23949 () Bool)

(assert (=> b!23949 (= e!12435 (apply!47 (tail!566 (tail!566 (toList!107 xs!572))) (- (- i!252 1) 1)))))

(assert (= (and d!13441 c!5575) b!23948))

(assert (= (and d!13441 (not c!5575)) b!23949))

(assert (=> b!23948 m!25277))

(declare-fun m!25333 () Bool)

(assert (=> b!23948 m!25333))

(assert (=> b!23949 m!25277))

(declare-fun m!25335 () Bool)

(assert (=> b!23949 m!25335))

(assert (=> b!23949 m!25335))

(declare-fun m!25337 () Bool)

(assert (=> b!23949 m!25337))

(assert (=> b!23866 d!13441))

(declare-fun d!13443 () Bool)

(assert (=> d!13443 (= (tail!566 (toList!107 xs!572)) (t!4357 (toList!107 xs!572)))))

(assert (=> b!23866 d!13443))

(declare-fun d!13445 () Bool)

(assert (=> d!13445 (= (head!539 (toList!107 xs!572)) (h!262 (toList!107 xs!572)))))

(assert (=> b!23865 d!13445))

(declare-fun d!13447 () Bool)

(declare-fun lt!3716 () Int)

(assert (=> d!13447 (>= lt!3716 0)))

(declare-fun e!12438 () Int)

(assert (=> d!13447 (= lt!3716 e!12438)))

(declare-fun c!5578 () Bool)

(assert (=> d!13447 (= c!5578 (is-Nil!347 lt!3698))))

(assert (=> d!13447 (= (size!255 lt!3698) lt!3716)))

(declare-fun b!23954 () Bool)

(assert (=> b!23954 (= e!12438 0)))

(declare-fun b!23955 () Bool)

(assert (=> b!23955 (= e!12438 (+ 1 (size!255 (t!4357 lt!3698))))))

(assert (= (and d!13447 c!5578) b!23954))

(assert (= (and d!13447 (not c!5578)) b!23955))

(declare-fun m!25339 () Bool)

(assert (=> b!23955 m!25339))

(assert (=> d!13415 d!13447))

(assert (=> d!13415 d!13419))

(declare-fun d!13449 () Bool)

(declare-fun c!5579 () Bool)

(assert (=> d!13449 (= c!5579 (= (- i!252 (size!254 (left!692 xs!572))) 0))))

(declare-fun e!12439 () T!1797)

(assert (=> d!13449 (= (apply!47 (toList!107 (right!695 xs!572)) (- i!252 (size!254 (left!692 xs!572)))) e!12439)))

(declare-fun b!23956 () Bool)

(assert (=> b!23956 (= e!12439 (head!539 (toList!107 (right!695 xs!572))))))

(declare-fun b!23957 () Bool)

(assert (=> b!23957 (= e!12439 (apply!47 (tail!566 (toList!107 (right!695 xs!572))) (- (- i!252 (size!254 (left!692 xs!572))) 1)))))

(assert (= (and d!13449 c!5579) b!23956))

(assert (= (and d!13449 (not c!5579)) b!23957))

(assert (=> b!23956 m!25251))

(declare-fun m!25341 () Bool)

(assert (=> b!23956 m!25341))

(assert (=> b!23957 m!25251))

(declare-fun m!25343 () Bool)

(assert (=> b!23957 m!25343))

(assert (=> b!23957 m!25343))

(declare-fun m!25345 () Bool)

(assert (=> b!23957 m!25345))

(assert (=> b!23835 d!13449))

(declare-fun d!13451 () Bool)

(declare-fun lt!3717 () List!352)

(assert (=> d!13451 (= (size!255 lt!3717) (size!254 (right!695 xs!572)))))

(declare-fun e!12441 () List!352)

(assert (=> d!13451 (= lt!3717 e!12441)))

(declare-fun c!5580 () Bool)

(assert (=> d!13451 (= c!5580 (is-Empty!58 (right!695 xs!572)))))

(assert (=> d!13451 (= (toList!107 (right!695 xs!572)) lt!3717)))

(declare-fun b!23961 () Bool)

(declare-fun e!12440 () List!352)

(assert (=> b!23961 (= e!12440 (++!32 (toList!107 (left!692 (right!695 xs!572))) (toList!107 (right!695 (right!695 xs!572)))))))

(declare-fun b!23960 () Bool)

(assert (=> b!23960 (= e!12440 (Cons!346 (x!8854 (right!695 xs!572)) Nil!347))))

(declare-fun b!23958 () Bool)

(assert (=> b!23958 (= e!12441 Nil!347)))

(declare-fun b!23959 () Bool)

(assert (=> b!23959 (= e!12441 e!12440)))

(declare-fun c!5581 () Bool)

(assert (=> b!23959 (= c!5581 (is-Single!47 (right!695 xs!572)))))

(assert (= (and b!23959 c!5581) b!23960))

(assert (= (and b!23959 (not c!5581)) b!23961))

(assert (= (and d!13451 c!5580) b!23958))

(assert (= (and d!13451 (not c!5580)) b!23959))

(declare-fun m!25347 () Bool)

(assert (=> d!13451 m!25347))

(assert (=> d!13451 m!25263))

(assert (=> b!23961 m!25299))

(assert (=> b!23961 m!25325))

(assert (=> b!23961 m!25299))

(assert (=> b!23961 m!25325))

(declare-fun m!25349 () Bool)

(assert (=> b!23961 m!25349))

(assert (=> b!23835 d!13451))

(assert (=> b!23859 d!13419))

(declare-fun d!13453 () Bool)

(declare-fun lt!3718 () Int)

(assert (=> d!13453 (>= lt!3718 0)))

(declare-fun e!12442 () Int)

(assert (=> d!13453 (= lt!3718 e!12442)))

(declare-fun c!5583 () Bool)

(assert (=> d!13453 (= c!5583 (is-Empty!58 (left!692 (right!695 xs!572))))))

(assert (=> d!13453 (= (size!254 (left!692 (right!695 xs!572))) lt!3718)))

(declare-fun b!23965 () Bool)

(declare-fun e!12443 () Int)

(assert (=> b!23965 (= e!12443 (+ (size!254 (left!692 (left!692 (right!695 xs!572)))) (size!254 (right!695 (left!692 (right!695 xs!572))))))))

(declare-fun b!23964 () Bool)

(assert (=> b!23964 (= e!12443 1)))

(declare-fun b!23962 () Bool)

(assert (=> b!23962 (= e!12442 0)))

(declare-fun b!23963 () Bool)

(assert (=> b!23963 (= e!12442 e!12443)))

(declare-fun c!5582 () Bool)

(assert (=> b!23963 (= c!5582 (is-Single!47 (left!692 (right!695 xs!572))))))

(assert (= (and b!23963 c!5582) b!23964))

(assert (= (and b!23963 (not c!5582)) b!23965))

(assert (= (and d!13453 c!5583) b!23962))

(assert (= (and d!13453 (not c!5583)) b!23963))

(assert (=> b!23965 m!25303))

(declare-fun m!25351 () Bool)

(assert (=> b!23965 m!25351))

(assert (=> b!23838 d!13453))

(declare-fun b!23969 () Bool)

(declare-fun e!12444 () Bool)

(assert (=> b!23969 (= e!12444 (balanced!45 (right!695 (left!692 xs!572))))))

(declare-fun b!23968 () Bool)

(declare-fun res!10646 () Bool)

(assert (=> b!23968 (=> (not res!10646) (not e!12444))))

(assert (=> b!23968 (= res!10646 (balanced!45 (left!692 (left!692 xs!572))))))

(declare-fun b!23966 () Bool)

(declare-fun e!12445 () Bool)

(assert (=> b!23966 (= e!12445 e!12444)))

(declare-fun res!10647 () Bool)

(assert (=> b!23966 (=> (not res!10647) (not e!12444))))

(assert (=> b!23966 (= res!10647 (>= (- (level!39 (left!692 (left!692 xs!572))) (level!39 (right!695 (left!692 xs!572)))) (- 1)))))

(declare-fun b!23967 () Bool)

(declare-fun res!10645 () Bool)

(assert (=> b!23967 (=> (not res!10645) (not e!12444))))

(assert (=> b!23967 (= res!10645 (<= (- (level!39 (left!692 (left!692 xs!572))) (level!39 (right!695 (left!692 xs!572)))) 1))))

(declare-fun d!13455 () Bool)

(declare-fun res!10644 () Bool)

(assert (=> d!13455 (=> res!10644 e!12445)))

(assert (=> d!13455 (= res!10644 (not (is-CC!47 (left!692 xs!572))))))

(assert (=> d!13455 (= (balanced!45 (left!692 xs!572)) e!12445)))

(assert (= (and d!13455 (not res!10644)) b!23966))

(assert (= (and b!23966 res!10647) b!23967))

(assert (= (and b!23967 res!10645) b!23968))

(assert (= (and b!23968 res!10646) b!23969))

(declare-fun m!25353 () Bool)

(assert (=> b!23969 m!25353))

(declare-fun m!25355 () Bool)

(assert (=> b!23968 m!25355))

(assert (=> b!23966 m!25321))

(assert (=> b!23966 m!25319))

(assert (=> b!23967 m!25321))

(assert (=> b!23967 m!25319))

(assert (=> b!23893 d!13455))

(declare-fun b!23970 () Bool)

(declare-fun e!12446 () T!1797)

(assert (=> b!23970 (= e!12446 (lookup!8 (left!692 (right!695 (right!695 xs!572))) (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572))))))))

(declare-fun e!12449 () Bool)

(declare-fun b!23971 () Bool)

(declare-fun lt!3719 () T!1797)

(assert (=> b!23971 (= e!12449 (= lt!3719 (apply!47 (toList!107 (right!695 (right!695 xs!572))) (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))))))))

(declare-fun b!23972 () Bool)

(declare-fun e!12448 () Bool)

(assert (=> b!23972 (= e!12448 (balanced!45 (right!695 (right!695 xs!572))))))

(declare-fun b!23973 () Bool)

(declare-fun res!10650 () Bool)

(declare-fun e!12450 () Bool)

(assert (=> b!23973 (=> (not res!10650) (not e!12450))))

(assert (=> b!23973 (= res!10650 (not (isEmpty!307 (right!695 (right!695 xs!572)))))))

(declare-fun b!23974 () Bool)

(declare-fun e!12447 () T!1797)

(assert (=> b!23974 (= e!12447 e!12446)))

(declare-fun c!5585 () Bool)

(assert (=> b!23974 (= c!5585 (< (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))) (size!254 (left!692 (right!695 (right!695 xs!572))))))))

(declare-fun b!23975 () Bool)

(assert (=> b!23975 (= e!12446 (lookup!8 (right!695 (right!695 (right!695 xs!572))) (- (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))) (size!254 (left!692 (right!695 (right!695 xs!572)))))))))

(declare-fun b!23976 () Bool)

(declare-fun res!10649 () Bool)

(assert (=> b!23976 (=> (not res!10649) (not e!12450))))

(assert (=> b!23976 (= res!10649 (>= (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))) 0))))

(declare-fun d!13457 () Bool)

(assert (=> d!13457 e!12449))

(declare-fun res!10651 () Bool)

(assert (=> d!13457 (=> (not res!10651) (not e!12449))))

(assert (=> d!13457 (= res!10651 (instAppendIndexAxiom!8 (right!695 (right!695 xs!572)) (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572))))))))

(assert (=> d!13457 (= lt!3719 e!12447)))

(declare-fun c!5584 () Bool)

(assert (=> d!13457 (= c!5584 (is-Single!47 (right!695 (right!695 xs!572))))))

(assert (=> d!13457 e!12450))

(declare-fun res!10648 () Bool)

(assert (=> d!13457 (=> (not res!10648) (not e!12450))))

(assert (=> d!13457 (= res!10648 e!12448)))

(declare-fun res!10652 () Bool)

(assert (=> d!13457 (=> (not res!10652) (not e!12448))))

(assert (=> d!13457 (= res!10652 (concInv!44 (right!695 (right!695 xs!572))))))

(assert (=> d!13457 (= (lookup!8 (right!695 (right!695 xs!572)) (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572))))) lt!3719)))

(declare-fun b!23977 () Bool)

(assert (=> b!23977 (= e!12447 (x!8854 (right!695 (right!695 xs!572))))))

(declare-fun b!23978 () Bool)

(assert (=> b!23978 (= e!12450 (< (- (- i!252 (size!254 (left!692 xs!572))) (size!254 (left!692 (right!695 xs!572)))) (size!254 (right!695 (right!695 xs!572)))))))

(assert (= (and d!13457 res!10652) b!23972))

(assert (= (and d!13457 res!10648) b!23973))

(assert (= (and b!23973 res!10650) b!23976))

(assert (= (and b!23976 res!10649) b!23978))

(assert (= (and b!23974 c!5585) b!23970))

(assert (= (and b!23974 (not c!5585)) b!23975))

(assert (= (and d!13457 c!5584) b!23977))

(assert (= (and d!13457 (not c!5584)) b!23974))

(assert (= (and d!13457 res!10651) b!23971))

(declare-fun m!25357 () Bool)

(assert (=> d!13457 m!25357))

(assert (=> d!13457 m!25331))

(assert (=> b!23971 m!25325))

(assert (=> b!23971 m!25325))

(declare-fun m!25359 () Bool)

(assert (=> b!23971 m!25359))

(declare-fun m!25361 () Bool)

(assert (=> b!23975 m!25361))

(declare-fun m!25363 () Bool)

(assert (=> b!23975 m!25363))

(declare-fun m!25365 () Bool)

(assert (=> b!23970 m!25365))

(assert (=> b!23973 m!25329))

(assert (=> b!23978 m!25323))

(assert (=> b!23972 m!25313))

(assert (=> b!23974 m!25361))

(assert (=> b!23839 d!13457))

(assert (=> b!23839 d!13453))

(assert (=> b!23906 d!13439))

(assert (=> b!23882 d!13409))

(assert (=> b!23882 d!13435))

(declare-fun b!23981 () Bool)

(declare-fun res!10655 () Bool)

(declare-fun e!12451 () Bool)

(assert (=> b!23981 (=> (not res!10655) (not e!12451))))

(assert (=> b!23981 (= res!10655 (concInv!44 (left!692 (left!692 xs!572))))))

(declare-fun d!13459 () Bool)

(declare-fun res!10653 () Bool)

(declare-fun e!12452 () Bool)

(assert (=> d!13459 (=> res!10653 e!12452)))

(assert (=> d!13459 (= res!10653 (not (is-CC!47 (left!692 xs!572))))))

(assert (=> d!13459 (= (concInv!44 (left!692 xs!572)) e!12452)))

(declare-fun b!23980 () Bool)

(declare-fun res!10656 () Bool)

(assert (=> b!23980 (=> (not res!10656) (not e!12451))))

(assert (=> b!23980 (= res!10656 (not (isEmpty!307 (right!695 (left!692 xs!572)))))))

(declare-fun b!23982 () Bool)

(assert (=> b!23982 (= e!12451 (concInv!44 (right!695 (left!692 xs!572))))))

(declare-fun b!23979 () Bool)

(assert (=> b!23979 (= e!12452 e!12451)))

(declare-fun res!10654 () Bool)

(assert (=> b!23979 (=> (not res!10654) (not e!12451))))

(assert (=> b!23979 (= res!10654 (not (isEmpty!307 (left!692 (left!692 xs!572)))))))

(assert (= (and d!13459 (not res!10653)) b!23979))

(assert (= (and b!23979 res!10654) b!23980))

(assert (= (and b!23980 res!10656) b!23981))

(assert (= (and b!23981 res!10655) b!23982))

(declare-fun m!25367 () Bool)

(assert (=> b!23981 m!25367))

(declare-fun m!25369 () Bool)

(assert (=> b!23980 m!25369))

(declare-fun m!25371 () Bool)

(assert (=> b!23982 m!25371))

(declare-fun m!25373 () Bool)

(assert (=> b!23979 m!25373))

(assert (=> b!23905 d!13459))

(declare-fun d!13461 () Bool)

(declare-fun e!12458 () Bool)

(assert (=> d!13461 e!12458))

(declare-fun res!10663 () Bool)

(assert (=> d!13461 (=> (not res!10663) (not e!12458))))

(declare-fun lt!3722 () List!352)

(declare-fun content!65 (List!352) (Set T!1797))

(assert (=> d!13461 (= res!10663 (= (content!65 lt!3722) (union (content!65 (toList!107 (left!692 xs!572))) (content!65 (toList!107 (right!695 xs!572))))))))

(declare-fun e!12457 () List!352)

(assert (=> d!13461 (= lt!3722 e!12457)))

(declare-fun c!5588 () Bool)

(assert (=> d!13461 (= c!5588 (is-Nil!347 (toList!107 (left!692 xs!572))))))

(assert (=> d!13461 (= (++!32 (toList!107 (left!692 xs!572)) (toList!107 (right!695 xs!572))) lt!3722)))

(declare-fun b!23994 () Bool)

(assert (=> b!23994 (= e!12458 (or (not (= (toList!107 (right!695 xs!572)) Nil!347)) (= lt!3722 (toList!107 (left!692 xs!572)))))))

(declare-fun b!23993 () Bool)

(declare-fun res!10662 () Bool)

(assert (=> b!23993 (=> (not res!10662) (not e!12458))))

(assert (=> b!23993 (= res!10662 (= (size!255 lt!3722) (+ (size!255 (toList!107 (left!692 xs!572))) (size!255 (toList!107 (right!695 xs!572))))))))

(declare-fun b!23992 () Bool)

(assert (=> b!23992 (= e!12457 (Cons!346 (h!262 (toList!107 (left!692 xs!572))) (++!32 (t!4357 (toList!107 (left!692 xs!572))) (toList!107 (right!695 xs!572)))))))

(declare-fun b!23991 () Bool)

(assert (=> b!23991 (= e!12457 (toList!107 (right!695 xs!572)))))

(assert (= (and d!13461 c!5588) b!23991))

(assert (= (and d!13461 (not c!5588)) b!23992))

(assert (= (and d!13461 res!10663) b!23993))

(assert (= (and b!23993 res!10662) b!23994))

(declare-fun m!25375 () Bool)

(assert (=> d!13461 m!25375))

(assert (=> d!13461 m!25271))

(declare-fun m!25377 () Bool)

(assert (=> d!13461 m!25377))

(assert (=> d!13461 m!25251))

(declare-fun m!25379 () Bool)

(assert (=> d!13461 m!25379))

(declare-fun m!25381 () Bool)

(assert (=> b!23993 m!25381))

(assert (=> b!23993 m!25271))

(declare-fun m!25383 () Bool)

(assert (=> b!23993 m!25383))

(assert (=> b!23993 m!25251))

(declare-fun m!25385 () Bool)

(assert (=> b!23993 m!25385))

(assert (=> b!23992 m!25251))

(declare-fun m!25387 () Bool)

(assert (=> b!23992 m!25387))

(assert (=> b!23878 d!13461))

(declare-fun d!13463 () Bool)

(declare-fun lt!3723 () List!352)

(assert (=> d!13463 (= (size!255 lt!3723) (size!254 (left!692 xs!572)))))

(declare-fun e!12460 () List!352)

(assert (=> d!13463 (= lt!3723 e!12460)))

(declare-fun c!5589 () Bool)

(assert (=> d!13463 (= c!5589 (is-Empty!58 (left!692 xs!572)))))

(assert (=> d!13463 (= (toList!107 (left!692 xs!572)) lt!3723)))

(declare-fun b!23998 () Bool)

(declare-fun e!12459 () List!352)

(assert (=> b!23998 (= e!12459 (++!32 (toList!107 (left!692 (left!692 xs!572))) (toList!107 (right!695 (left!692 xs!572)))))))

(declare-fun b!23997 () Bool)

(assert (=> b!23997 (= e!12459 (Cons!346 (x!8854 (left!692 xs!572)) Nil!347))))

(declare-fun b!23995 () Bool)

(assert (=> b!23995 (= e!12460 Nil!347)))

(declare-fun b!23996 () Bool)

(assert (=> b!23996 (= e!12460 e!12459)))

(declare-fun c!5590 () Bool)

(assert (=> b!23996 (= c!5590 (is-Single!47 (left!692 xs!572)))))

(assert (= (and b!23996 c!5590) b!23997))

(assert (= (and b!23996 (not c!5590)) b!23998))

(assert (= (and d!13463 c!5589) b!23995))

(assert (= (and d!13463 (not c!5589)) b!23996))

(declare-fun m!25389 () Bool)

(assert (=> d!13463 m!25389))

(assert (=> d!13463 m!25231))

(declare-fun m!25391 () Bool)

(assert (=> b!23998 m!25391))

(declare-fun m!25393 () Bool)

(assert (=> b!23998 m!25393))

(assert (=> b!23998 m!25391))

(assert (=> b!23998 m!25393))

(declare-fun m!25395 () Bool)

(assert (=> b!23998 m!25395))

(assert (=> b!23878 d!13463))

(assert (=> b!23878 d!13451))

(assert (=> b!23904 d!13425))

(declare-fun d!13465 () Bool)

(declare-fun e!12468 () T!1797)

(assert (=> d!13465 (= (apply!47 (++!32 (toList!107 (left!692 xs!572)) (toList!107 (right!695 xs!572))) i!252) e!12468)))

(declare-fun c!5593 () Bool)

(assert (=> d!13465 (= c!5593 (< i!252 (size!255 (toList!107 (left!692 xs!572)))))))

(declare-fun lt!3726 () Bool)

(declare-fun e!12467 () Bool)

(assert (=> d!13465 (= lt!3726 e!12467)))

(declare-fun res!10672 () Bool)

(assert (=> d!13465 (=> res!10672 e!12467)))

(assert (=> d!13465 (= res!10672 (or (is-Nil!347 (toList!107 (left!692 xs!572))) (= i!252 0)))))

(declare-fun e!12469 () Bool)

(assert (=> d!13465 e!12469))

(declare-fun res!10673 () Bool)

(assert (=> d!13465 (=> (not res!10673) (not e!12469))))

(assert (=> d!13465 (= res!10673 (<= 0 i!252))))

(assert (=> d!13465 (= (appendIndex!7 (toList!107 (left!692 xs!572)) (toList!107 (right!695 xs!572)) i!252) true)))

(declare-fun b!24007 () Bool)

(assert (=> b!24007 (= e!12469 (< i!252 (+ (size!255 (toList!107 (left!692 xs!572))) (size!255 (toList!107 (right!695 xs!572))))))))

(declare-fun b!24009 () Bool)

(assert (=> b!24009 (= e!12468 (apply!47 (toList!107 (left!692 xs!572)) i!252))))

(declare-fun b!24010 () Bool)

(assert (=> b!24010 (= e!12468 (apply!47 (toList!107 (right!695 xs!572)) (- i!252 (size!255 (toList!107 (left!692 xs!572))))))))

(declare-fun b!24008 () Bool)

(assert (=> b!24008 (= e!12467 (appendIndex!7 (t!4357 (toList!107 (left!692 xs!572))) (toList!107 (right!695 xs!572)) (- i!252 1)))))

(assert (= (and d!13465 res!10673) b!24007))

(assert (= (and d!13465 (not res!10672)) b!24008))

(assert (= (and d!13465 c!5593) b!24009))

(assert (= (and d!13465 (not c!5593)) b!24010))

(assert (=> b!24007 m!25271))

(assert (=> b!24007 m!25383))

(assert (=> b!24007 m!25251))

(assert (=> b!24007 m!25385))

(assert (=> d!13465 m!25271))

(assert (=> d!13465 m!25251))

(assert (=> d!13465 m!25283))

(assert (=> d!13465 m!25283))

(declare-fun m!25397 () Bool)

(assert (=> d!13465 m!25397))

(assert (=> d!13465 m!25271))

(assert (=> d!13465 m!25383))

(assert (=> b!24008 m!25251))

(declare-fun m!25399 () Bool)

(assert (=> b!24008 m!25399))

(assert (=> b!24010 m!25271))

(assert (=> b!24010 m!25383))

(assert (=> b!24010 m!25251))

(declare-fun m!25401 () Bool)

(assert (=> b!24010 m!25401))

(assert (=> b!24009 m!25271))

(declare-fun m!25403 () Bool)

(assert (=> b!24009 m!25403))

(assert (=> b!23860 d!13465))

(assert (=> b!23860 d!13463))

(assert (=> b!23860 d!13451))

(assert (=> b!23894 d!13429))

(assert (=> b!23891 d!13431))

(assert (=> b!23891 d!13433))

(declare-fun d!13467 () Bool)

(assert (=> d!13467 (= (isEmpty!307 (left!692 xs!572)) (= (left!692 xs!572) Empty!58))))

(assert (=> b!23903 d!13467))

(declare-fun d!13469 () Bool)

(declare-fun lt!3727 () Int)

(assert (=> d!13469 (>= lt!3727 0)))

(declare-fun e!12470 () Int)

(assert (=> d!13469 (= lt!3727 e!12470)))

(declare-fun c!5595 () Bool)

(assert (=> d!13469 (= c!5595 (is-Empty!58 (left!692 (left!692 xs!572))))))

(assert (=> d!13469 (= (size!254 (left!692 (left!692 xs!572))) lt!3727)))

(declare-fun b!24014 () Bool)

(declare-fun e!12471 () Int)

(assert (=> b!24014 (= e!12471 (+ (size!254 (left!692 (left!692 (left!692 xs!572)))) (size!254 (right!695 (left!692 (left!692 xs!572))))))))

(declare-fun b!24013 () Bool)

(assert (=> b!24013 (= e!12471 1)))

(declare-fun b!24011 () Bool)

(assert (=> b!24011 (= e!12470 0)))

(declare-fun b!24012 () Bool)

(assert (=> b!24012 (= e!12470 e!12471)))

(declare-fun c!5594 () Bool)

(assert (=> b!24012 (= c!5594 (is-Single!47 (left!692 (left!692 xs!572))))))

(assert (= (and b!24012 c!5594) b!24013))

(assert (= (and b!24012 (not c!5594)) b!24014))

(assert (= (and d!13469 c!5595) b!24011))

(assert (= (and d!13469 (not c!5595)) b!24012))

(declare-fun m!25405 () Bool)

(assert (=> b!24014 m!25405))

(declare-fun m!25407 () Bool)

(assert (=> b!24014 m!25407))

(assert (=> b!23854 d!13469))

(declare-fun d!13471 () Bool)

(declare-fun lt!3728 () Int)

(assert (=> d!13471 (>= lt!3728 0)))

(declare-fun e!12472 () Int)

(assert (=> d!13471 (= lt!3728 e!12472)))

(declare-fun c!5597 () Bool)

(assert (=> d!13471 (= c!5597 (is-Empty!58 (right!695 (left!692 xs!572))))))

(assert (=> d!13471 (= (size!254 (right!695 (left!692 xs!572))) lt!3728)))

(declare-fun b!24018 () Bool)

(declare-fun e!12473 () Int)

(assert (=> b!24018 (= e!12473 (+ (size!254 (left!692 (right!695 (left!692 xs!572)))) (size!254 (right!695 (right!695 (left!692 xs!572))))))))

(declare-fun b!24017 () Bool)

(assert (=> b!24017 (= e!12473 1)))

(declare-fun b!24015 () Bool)

(assert (=> b!24015 (= e!12472 0)))

(declare-fun b!24016 () Bool)

(assert (=> b!24016 (= e!12472 e!12473)))

(declare-fun c!5596 () Bool)

(assert (=> b!24016 (= c!5596 (is-Single!47 (right!695 (left!692 xs!572))))))

(assert (= (and b!24016 c!5596) b!24017))

(assert (= (and b!24016 (not c!5596)) b!24018))

(assert (= (and d!13471 c!5597) b!24015))

(assert (= (and d!13471 (not c!5597)) b!24016))

(declare-fun m!25409 () Bool)

(assert (=> b!24018 m!25409))

(declare-fun m!25411 () Bool)

(assert (=> b!24018 m!25411))

(assert (=> b!23854 d!13471))

(declare-fun b!24019 () Bool)

(declare-fun e!12474 () Bool)

(declare-fun tp!5164 () Bool)

(declare-fun tp!5165 () Bool)

(assert (=> b!24019 (= e!12474 (and tp!5164 tp!5165))))

(declare-fun b!24020 () Bool)

(assert (=> b!24020 (= e!12474 tp_is_empty!141)))

(assert (=> b!23915 (= tp!5162 e!12474)))

(assert (= (and b!23915 (is-CC!47 (left!692 (right!695 xs!572)))) b!24019))

(assert (= (and b!23915 (is-Single!47 (left!692 (right!695 xs!572)))) b!24020))

(declare-fun b!24021 () Bool)

(declare-fun e!12475 () Bool)

(declare-fun tp!5166 () Bool)

(declare-fun tp!5167 () Bool)

(assert (=> b!24021 (= e!12475 (and tp!5166 tp!5167))))

(declare-fun b!24022 () Bool)

(assert (=> b!24022 (= e!12475 tp_is_empty!141)))

(assert (=> b!23915 (= tp!5163 e!12475)))

(assert (= (and b!23915 (is-CC!47 (right!695 (right!695 xs!572)))) b!24021))

(assert (= (and b!23915 (is-Single!47 (right!695 (right!695 xs!572)))) b!24022))

(declare-fun b!24023 () Bool)

(declare-fun e!12476 () Bool)

(declare-fun tp!5168 () Bool)

(declare-fun tp!5169 () Bool)

(assert (=> b!24023 (= e!12476 (and tp!5168 tp!5169))))

(declare-fun b!24024 () Bool)

(assert (=> b!24024 (= e!12476 tp_is_empty!141)))

(assert (=> b!23913 (= tp!5160 e!12476)))

(assert (= (and b!23913 (is-CC!47 (left!692 (left!692 xs!572)))) b!24023))

(assert (= (and b!23913 (is-Single!47 (left!692 (left!692 xs!572)))) b!24024))

(declare-fun b!24025 () Bool)

(declare-fun e!12477 () Bool)

(declare-fun tp!5170 () Bool)

(declare-fun tp!5171 () Bool)

(assert (=> b!24025 (= e!12477 (and tp!5170 tp!5171))))

(declare-fun b!24026 () Bool)

(assert (=> b!24026 (= e!12477 tp_is_empty!141)))

(assert (=> b!23913 (= tp!5161 e!12477)))

(assert (= (and b!23913 (is-CC!47 (right!695 (left!692 xs!572)))) b!24025))

(assert (= (and b!23913 (is-Single!47 (right!695 (left!692 xs!572)))) b!24026))

(push 1)

(assert (not b!24010))

(assert (not b!23935))

(assert (not b!23975))

(assert (not b!23979))

(assert (not b!23943))

(assert (not b!23956))

(assert (not b!23965))

(assert (not d!13451))

(assert (not b!23918))

(assert (not b!23969))

(assert (not d!13427))

(assert (not b!24018))

(assert (not b!24019))

(assert (not b!24014))

(assert (not b!24025))

(assert (not b!23968))

(assert (not b!23948))

(assert (not b!23920))

(assert (not b!23998))

(assert (not b!24023))

(assert (not b!23941))

(assert (not b!23929))

(assert (not b!23922))

(assert (not b!23955))

(assert (not d!13461))

(assert (not b!23927))

(assert (not b!23982))

(assert (not b!23974))

(assert (not b!23926))

(assert (not b!24009))

(assert (not b!23945))

(assert (not b!24007))

(assert (not b!23981))

(assert (not b!23937))

(assert (not b!23970))

(assert (not b!23921))

(assert (not b!23947))

(assert (not b!23942))

(assert (not b!23944))

(assert (not b!24021))

(assert (not b!23973))

(assert (not b!23978))

(assert (not b!23961))

(assert (not b!23949))

(assert (not d!13465))

(assert tp_is_empty!141)

(assert (not b!23925))

(assert (not b!23993))

(assert (not b!23919))

(assert (not d!13457))

(assert (not b!23917))

(assert (not b!23957))

(assert (not b!23946))

(assert (not b!23967))

(assert (not d!13463))

(assert (not b!23972))

(assert (not b!23992))

(assert (not b!23980))

(assert (not b!23966))

(assert (not b!24008))

(assert (not b!23971))

(assert (not b!23928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

