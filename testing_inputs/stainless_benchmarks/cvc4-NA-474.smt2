; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3038 () Bool)

(assert start!3038)

(declare-fun b!14544 () Bool)

(declare-fun res!5838 () Bool)

(declare-fun e!8017 () Bool)

(assert (=> b!14544 (=> (not res!5838) (not e!8017))))

(declare-datatypes () ((T!1703 (T!1704 (val!24 Int)))))

(declare-datatypes () ((Conc!6 (CC!5 (left!650 Conc!6) (right!653 Conc!6)) (Single!5 (x!8690 T!1703)) (Empty!16))))

(declare-fun xs!637 () Conc!6)

(declare-fun n!315 () Int)

(declare-fun n!336 () Int)

(declare-fun size!184 (Conc!6) Int)

(assert (=> b!14544 (= res!5838 (= n!336 (- n!315 (size!184 (left!650 xs!637)))))))

(declare-fun b!14545 () Bool)

(declare-fun e!8015 () Bool)

(declare-fun xs!661 () Conc!6)

(declare-fun balanced!6 (Conc!6) Bool)

(assert (=> b!14545 (= e!8015 (not (balanced!6 xs!661)))))

(declare-fun b!14546 () Bool)

(declare-fun res!5835 () Bool)

(assert (=> b!14546 (=> (not res!5835) (not e!8017))))

(assert (=> b!14546 (= res!5835 (>= n!315 (size!184 (left!650 xs!637))))))

(declare-fun b!14547 () Bool)

(declare-fun e!8018 () Bool)

(declare-fun tp!3533 () Bool)

(declare-fun tp!3536 () Bool)

(assert (=> b!14547 (= e!8018 (and tp!3533 tp!3536))))

(declare-fun b!14548 () Bool)

(declare-fun tp_is_empty!47 () Bool)

(assert (=> b!14548 (= e!8018 tp_is_empty!47)))

(declare-fun b!14549 () Bool)

(declare-fun res!5836 () Bool)

(assert (=> b!14549 (=> (not res!5836) (not e!8017))))

(assert (=> b!14549 (= res!5836 (and (not (is-Empty!16 xs!637)) (not (is-Single!5 xs!637))))))

(declare-fun res!5840 () Bool)

(assert (=> start!3038 (=> (not res!5840) (not e!8017))))

(declare-fun concInv!5 (Conc!6) Bool)

(assert (=> start!3038 (= res!5840 (concInv!5 xs!637))))

(assert (=> start!3038 e!8017))

(assert (=> start!3038 e!8018))

(assert (=> start!3038 true))

(declare-fun e!8016 () Bool)

(assert (=> start!3038 e!8016))

(declare-fun b!14550 () Bool)

(declare-fun res!5833 () Bool)

(assert (=> b!14550 (=> (not res!5833) (not e!8017))))

(assert (=> b!14550 (= res!5833 (> n!315 (size!184 (left!650 xs!637))))))

(declare-fun b!14551 () Bool)

(declare-fun res!5834 () Bool)

(assert (=> b!14551 (=> (not res!5834) (not e!8017))))

(assert (=> b!14551 (= res!5834 (= xs!661 (right!653 xs!637)))))

(declare-fun b!14552 () Bool)

(declare-fun res!5837 () Bool)

(assert (=> b!14552 (=> (not res!5837) (not e!8017))))

(assert (=> b!14552 (= res!5837 (balanced!6 xs!637))))

(declare-fun b!14553 () Bool)

(assert (=> b!14553 (= e!8017 e!8015)))

(declare-fun res!5839 () Bool)

(assert (=> b!14553 (=> res!5839 e!8015)))

(assert (=> b!14553 (= res!5839 (not (concInv!5 xs!661)))))

(declare-fun b!14554 () Bool)

(assert (=> b!14554 (= e!8016 tp_is_empty!47)))

(declare-fun b!14555 () Bool)

(declare-fun tp!3535 () Bool)

(declare-fun tp!3534 () Bool)

(assert (=> b!14555 (= e!8016 (and tp!3535 tp!3534))))

(assert (= (and start!3038 res!5840) b!14552))

(assert (= (and b!14552 res!5837) b!14549))

(assert (= (and b!14549 res!5836) b!14546))

(assert (= (and b!14546 res!5835) b!14550))

(assert (= (and b!14550 res!5833) b!14551))

(assert (= (and b!14551 res!5834) b!14544))

(assert (= (and b!14544 res!5838) b!14553))

(assert (= (and b!14553 (not res!5839)) b!14545))

(assert (= (and start!3038 (is-CC!5 xs!637)) b!14547))

(assert (= (and start!3038 (is-Single!5 xs!637)) b!14548))

(assert (= (and start!3038 (is-CC!5 xs!661)) b!14555))

(assert (= (and start!3038 (is-Single!5 xs!661)) b!14554))

(declare-fun m!18253 () Bool)

(assert (=> b!14544 m!18253))

(declare-fun m!18255 () Bool)

(assert (=> b!14553 m!18255))

(assert (=> b!14550 m!18253))

(declare-fun m!18257 () Bool)

(assert (=> start!3038 m!18257))

(declare-fun m!18259 () Bool)

(assert (=> b!14552 m!18259))

(declare-fun m!18261 () Bool)

(assert (=> b!14545 m!18261))

(assert (=> b!14546 m!18253))

(push 1)

(assert (not start!3038))

(assert (not b!14552))

(assert (not b!14545))

(assert (not b!14553))

(assert tp_is_empty!47)

(assert (not b!14544))

(assert (not b!14546))

(assert (not b!14547))

(assert (not b!14555))

(assert (not b!14550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!11297 () Bool)

(declare-fun res!5849 () Bool)

(declare-fun e!8023 () Bool)

(assert (=> d!11297 (=> res!5849 e!8023)))

(assert (=> d!11297 (= res!5849 (not (is-CC!5 xs!637)))))

(assert (=> d!11297 (= (concInv!5 xs!637) e!8023)))

(declare-fun b!14567 () Bool)

(declare-fun e!8024 () Bool)

(assert (=> b!14567 (= e!8024 (concInv!5 (right!653 xs!637)))))

(declare-fun b!14565 () Bool)

(declare-fun res!5851 () Bool)

(assert (=> b!14565 (=> (not res!5851) (not e!8024))))

(declare-fun isEmpty!270 (Conc!6) Bool)

(assert (=> b!14565 (= res!5851 (not (isEmpty!270 (right!653 xs!637))))))

(declare-fun b!14564 () Bool)

(assert (=> b!14564 (= e!8023 e!8024)))

(declare-fun res!5852 () Bool)

(assert (=> b!14564 (=> (not res!5852) (not e!8024))))

(assert (=> b!14564 (= res!5852 (not (isEmpty!270 (left!650 xs!637))))))

(declare-fun b!14566 () Bool)

(declare-fun res!5850 () Bool)

(assert (=> b!14566 (=> (not res!5850) (not e!8024))))

(assert (=> b!14566 (= res!5850 (concInv!5 (left!650 xs!637)))))

(assert (= (and d!11297 (not res!5849)) b!14564))

(assert (= (and b!14564 res!5852) b!14565))

(assert (= (and b!14565 res!5851) b!14566))

(assert (= (and b!14566 res!5850) b!14567))

(declare-fun m!18263 () Bool)

(assert (=> b!14567 m!18263))

(declare-fun m!18265 () Bool)

(assert (=> b!14565 m!18265))

(declare-fun m!18267 () Bool)

(assert (=> b!14564 m!18267))

(declare-fun m!18269 () Bool)

(assert (=> b!14566 m!18269))

(assert (=> start!3038 d!11297))

(declare-fun b!14576 () Bool)

(declare-fun e!8029 () Bool)

(declare-fun e!8030 () Bool)

(assert (=> b!14576 (= e!8029 e!8030)))

(declare-fun res!5864 () Bool)

(assert (=> b!14576 (=> (not res!5864) (not e!8030))))

(declare-fun level!5 (Conc!6) Int)

(assert (=> b!14576 (= res!5864 (>= (- (level!5 (left!650 xs!661)) (level!5 (right!653 xs!661))) (- 1)))))

(declare-fun b!14577 () Bool)

(declare-fun res!5861 () Bool)

(assert (=> b!14577 (=> (not res!5861) (not e!8030))))

(assert (=> b!14577 (= res!5861 (<= (- (level!5 (left!650 xs!661)) (level!5 (right!653 xs!661))) 1))))

(declare-fun b!14578 () Bool)

(declare-fun res!5862 () Bool)

(assert (=> b!14578 (=> (not res!5862) (not e!8030))))

(assert (=> b!14578 (= res!5862 (balanced!6 (left!650 xs!661)))))

(declare-fun b!14579 () Bool)

(assert (=> b!14579 (= e!8030 (balanced!6 (right!653 xs!661)))))

(declare-fun d!11299 () Bool)

(declare-fun res!5863 () Bool)

(assert (=> d!11299 (=> res!5863 e!8029)))

(assert (=> d!11299 (= res!5863 (not (is-CC!5 xs!661)))))

(assert (=> d!11299 (= (balanced!6 xs!661) e!8029)))

(assert (= (and d!11299 (not res!5863)) b!14576))

(assert (= (and b!14576 res!5864) b!14577))

(assert (= (and b!14577 res!5861) b!14578))

(assert (= (and b!14578 res!5862) b!14579))

(declare-fun m!18271 () Bool)

(assert (=> b!14576 m!18271))

(declare-fun m!18273 () Bool)

(assert (=> b!14576 m!18273))

(assert (=> b!14577 m!18271))

(assert (=> b!14577 m!18273))

(declare-fun m!18275 () Bool)

(assert (=> b!14578 m!18275))

(declare-fun m!18277 () Bool)

(assert (=> b!14579 m!18277))

(assert (=> b!14545 d!11299))

(declare-fun b!14580 () Bool)

(declare-fun e!8031 () Bool)

(declare-fun e!8032 () Bool)

(assert (=> b!14580 (= e!8031 e!8032)))

(declare-fun res!5868 () Bool)

(assert (=> b!14580 (=> (not res!5868) (not e!8032))))

(assert (=> b!14580 (= res!5868 (>= (- (level!5 (left!650 xs!637)) (level!5 (right!653 xs!637))) (- 1)))))

(declare-fun b!14581 () Bool)

(declare-fun res!5865 () Bool)

(assert (=> b!14581 (=> (not res!5865) (not e!8032))))

(assert (=> b!14581 (= res!5865 (<= (- (level!5 (left!650 xs!637)) (level!5 (right!653 xs!637))) 1))))

(declare-fun b!14582 () Bool)

(declare-fun res!5866 () Bool)

(assert (=> b!14582 (=> (not res!5866) (not e!8032))))

(assert (=> b!14582 (= res!5866 (balanced!6 (left!650 xs!637)))))

(declare-fun b!14583 () Bool)

(assert (=> b!14583 (= e!8032 (balanced!6 (right!653 xs!637)))))

(declare-fun d!11301 () Bool)

(declare-fun res!5867 () Bool)

(assert (=> d!11301 (=> res!5867 e!8031)))

(assert (=> d!11301 (= res!5867 (not (is-CC!5 xs!637)))))

(assert (=> d!11301 (= (balanced!6 xs!637) e!8031)))

(assert (= (and d!11301 (not res!5867)) b!14580))

(assert (= (and b!14580 res!5868) b!14581))

(assert (= (and b!14581 res!5865) b!14582))

(assert (= (and b!14582 res!5866) b!14583))

(declare-fun m!18279 () Bool)

(assert (=> b!14580 m!18279))

(declare-fun m!18281 () Bool)

(assert (=> b!14580 m!18281))

(assert (=> b!14581 m!18279))

(assert (=> b!14581 m!18281))

(declare-fun m!18283 () Bool)

(assert (=> b!14582 m!18283))

(declare-fun m!18285 () Bool)

(assert (=> b!14583 m!18285))

(assert (=> b!14552 d!11301))

(declare-fun b!14594 () Bool)

(declare-fun e!8037 () Int)

(assert (=> b!14594 (= e!8037 1)))

(declare-fun b!14593 () Bool)

(declare-fun e!8038 () Int)

(assert (=> b!14593 (= e!8038 e!8037)))

(declare-fun c!3959 () Bool)

(assert (=> b!14593 (= c!3959 (is-Single!5 (left!650 xs!637)))))

(declare-fun b!14592 () Bool)

(assert (=> b!14592 (= e!8038 0)))

(declare-fun b!14595 () Bool)

(assert (=> b!14595 (= e!8037 (+ (size!184 (left!650 (left!650 xs!637))) (size!184 (right!653 (left!650 xs!637)))))))

(declare-fun d!11303 () Bool)

(declare-fun lt!2068 () Int)

(assert (=> d!11303 (>= lt!2068 0)))

(assert (=> d!11303 (= lt!2068 e!8038)))

(declare-fun c!3960 () Bool)

(assert (=> d!11303 (= c!3960 (is-Empty!16 (left!650 xs!637)))))

(assert (=> d!11303 (= (size!184 (left!650 xs!637)) lt!2068)))

(assert (= (and b!14593 c!3959) b!14594))

(assert (= (and b!14593 (not c!3959)) b!14595))

(assert (= (and d!11303 c!3960) b!14592))

(assert (= (and d!11303 (not c!3960)) b!14593))

(declare-fun m!18287 () Bool)

(assert (=> b!14595 m!18287))

(declare-fun m!18289 () Bool)

(assert (=> b!14595 m!18289))

(assert (=> b!14550 d!11303))

(assert (=> b!14544 d!11303))

(assert (=> b!14546 d!11303))

(declare-fun d!11305 () Bool)

(declare-fun res!5869 () Bool)

(declare-fun e!8039 () Bool)

(assert (=> d!11305 (=> res!5869 e!8039)))

(assert (=> d!11305 (= res!5869 (not (is-CC!5 xs!661)))))

(assert (=> d!11305 (= (concInv!5 xs!661) e!8039)))

(declare-fun b!14599 () Bool)

(declare-fun e!8040 () Bool)

(assert (=> b!14599 (= e!8040 (concInv!5 (right!653 xs!661)))))

(declare-fun b!14597 () Bool)

(declare-fun res!5871 () Bool)

(assert (=> b!14597 (=> (not res!5871) (not e!8040))))

(assert (=> b!14597 (= res!5871 (not (isEmpty!270 (right!653 xs!661))))))

(declare-fun b!14596 () Bool)

(assert (=> b!14596 (= e!8039 e!8040)))

(declare-fun res!5872 () Bool)

(assert (=> b!14596 (=> (not res!5872) (not e!8040))))

(assert (=> b!14596 (= res!5872 (not (isEmpty!270 (left!650 xs!661))))))

(declare-fun b!14598 () Bool)

(declare-fun res!5870 () Bool)

(assert (=> b!14598 (=> (not res!5870) (not e!8040))))

(assert (=> b!14598 (= res!5870 (concInv!5 (left!650 xs!661)))))

(assert (= (and d!11305 (not res!5869)) b!14596))

(assert (= (and b!14596 res!5872) b!14597))

(assert (= (and b!14597 res!5871) b!14598))

(assert (= (and b!14598 res!5870) b!14599))

(declare-fun m!18291 () Bool)

(assert (=> b!14599 m!18291))

(declare-fun m!18293 () Bool)

(assert (=> b!14597 m!18293))

(declare-fun m!18295 () Bool)

(assert (=> b!14596 m!18295))

(declare-fun m!18297 () Bool)

(assert (=> b!14598 m!18297))

(assert (=> b!14553 d!11305))

(declare-fun b!14606 () Bool)

(declare-fun e!8043 () Bool)

(declare-fun tp!3541 () Bool)

(declare-fun tp!3542 () Bool)

(assert (=> b!14606 (= e!8043 (and tp!3541 tp!3542))))

(declare-fun b!14607 () Bool)

(assert (=> b!14607 (= e!8043 tp_is_empty!47)))

(assert (=> b!14555 (= tp!3535 e!8043)))

(assert (= (and b!14555 (is-CC!5 (left!650 xs!661))) b!14606))

(assert (= (and b!14555 (is-Single!5 (left!650 xs!661))) b!14607))

(declare-fun b!14608 () Bool)

(declare-fun e!8044 () Bool)

(declare-fun tp!3543 () Bool)

(declare-fun tp!3544 () Bool)

(assert (=> b!14608 (= e!8044 (and tp!3543 tp!3544))))

(declare-fun b!14609 () Bool)

(assert (=> b!14609 (= e!8044 tp_is_empty!47)))

(assert (=> b!14555 (= tp!3534 e!8044)))

(assert (= (and b!14555 (is-CC!5 (right!653 xs!661))) b!14608))

(assert (= (and b!14555 (is-Single!5 (right!653 xs!661))) b!14609))

(declare-fun b!14610 () Bool)

(declare-fun e!8045 () Bool)

(declare-fun tp!3545 () Bool)

(declare-fun tp!3546 () Bool)

(assert (=> b!14610 (= e!8045 (and tp!3545 tp!3546))))

(declare-fun b!14611 () Bool)

(assert (=> b!14611 (= e!8045 tp_is_empty!47)))

(assert (=> b!14547 (= tp!3533 e!8045)))

(assert (= (and b!14547 (is-CC!5 (left!650 xs!637))) b!14610))

(assert (= (and b!14547 (is-Single!5 (left!650 xs!637))) b!14611))

(declare-fun b!14612 () Bool)

(declare-fun e!8046 () Bool)

(declare-fun tp!3547 () Bool)

(declare-fun tp!3548 () Bool)

(assert (=> b!14612 (= e!8046 (and tp!3547 tp!3548))))

(declare-fun b!14613 () Bool)

(assert (=> b!14613 (= e!8046 tp_is_empty!47)))

(assert (=> b!14547 (= tp!3536 e!8046)))

(assert (= (and b!14547 (is-CC!5 (right!653 xs!637))) b!14612))

(assert (= (and b!14547 (is-Single!5 (right!653 xs!637))) b!14613))

(push 1)

(assert (not b!14596))

(assert (not b!14565))

(assert (not b!14599))

(assert (not b!14583))

(assert (not b!14581))

(assert (not b!14612))

(assert (not b!14610))

(assert (not b!14576))

(assert (not b!14567))

(assert tp_is_empty!47)

(assert (not b!14578))

(assert (not b!14582))

(assert (not b!14595))

(assert (not b!14579))

(assert (not b!14598))

(assert (not b!14608))

(assert (not b!14564))

(assert (not b!14606))

(assert (not b!14580))

(assert (not b!14597))

(assert (not b!14566))

(assert (not b!14577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

