; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3306 () Bool)

(assert start!3306)

(declare-fun b!18805 () Bool)

(declare-fun res!7962 () Bool)

(declare-fun e!10013 () Bool)

(assert (=> b!18805 (=> (not res!7962) (not e!10013))))

(declare-fun i!298 () Int)

(declare-datatypes () ((T!1739 (T!1740 (val!42 Int)))))

(declare-datatypes () ((Conc!24 (CC!23 (left!668 Conc!24) (right!671 Conc!24)) (Single!23 (x!8759 T!1739)) (Empty!34))))

(declare-fun xs!604 () Conc!24)

(declare-fun size!211 (Conc!24) Int)

(assert (=> b!18805 (= res!7962 (<= i!298 (size!211 xs!604)))))

(declare-fun b!18806 () Bool)

(declare-fun res!7959 () Bool)

(assert (=> b!18806 (=> (not res!7959) (not e!10013))))

(declare-fun xs!615 () Conc!24)

(declare-fun y!824 () T!1739)

(declare-fun i!313 () Int)

(declare-fun y!857 () T!1739)

(assert (=> b!18806 (= res!7959 (and (= xs!615 xs!604) (= i!313 i!298) (= y!857 y!824)))))

(declare-fun b!18807 () Bool)

(declare-fun res!7967 () Bool)

(assert (=> b!18807 (=> (not res!7967) (not e!10013))))

(declare-fun res!5609 () Conc!24)

(declare-fun level!21 (Conc!24) Int)

(assert (=> b!18807 (= res!7967 (>= (level!21 res!5609) (level!21 xs!604)))))

(declare-fun b!18808 () Bool)

(declare-fun e!10014 () Bool)

(assert (=> b!18808 (= e!10014 (> i!313 (size!211 xs!615)))))

(declare-fun b!18809 () Bool)

(declare-fun e!10012 () Bool)

(declare-fun tp_is_empty!83 () Bool)

(assert (=> b!18809 (= e!10012 tp_is_empty!83)))

(declare-fun b!18810 () Bool)

(declare-fun res!7957 () Bool)

(assert (=> b!18810 (=> (not res!7957) (not e!10013))))

(declare-fun balanced!23 (Conc!24) Bool)

(assert (=> b!18810 (= res!7957 (balanced!23 res!5609))))

(declare-fun b!18811 () Bool)

(declare-fun res!7955 () Bool)

(assert (=> b!18811 (=> (not res!7955) (not e!10013))))

(declare-fun concInv!22 (Conc!24) Bool)

(assert (=> b!18811 (= res!7955 (concInv!22 res!5609))))

(declare-fun res!7958 () Bool)

(assert (=> start!3306 (=> (not res!7958) (not e!10013))))

(assert (=> start!3306 (= res!7958 (concInv!22 xs!604))))

(assert (=> start!3306 e!10013))

(declare-fun e!10011 () Bool)

(assert (=> start!3306 e!10011))

(assert (=> start!3306 tp_is_empty!83))

(declare-fun e!10010 () Bool)

(assert (=> start!3306 e!10010))

(assert (=> start!3306 true))

(assert (=> start!3306 e!10012))

(declare-fun b!18812 () Bool)

(assert (=> b!18812 (= e!10013 e!10014)))

(declare-fun res!7965 () Bool)

(assert (=> b!18812 (=> res!7965 e!10014)))

(assert (=> b!18812 (= res!7965 (< i!313 0))))

(declare-fun b!18813 () Bool)

(declare-fun res!7954 () Bool)

(assert (=> b!18813 (=> (not res!7954) (not e!10013))))

(declare-fun isEmpty!286 (Conc!24) Bool)

(assert (=> b!18813 (= res!7954 (not (isEmpty!286 res!5609)))))

(declare-fun b!18814 () Bool)

(assert (=> b!18814 (= e!10011 tp_is_empty!83)))

(declare-fun b!18815 () Bool)

(declare-fun tp!4414 () Bool)

(declare-fun tp!4413 () Bool)

(assert (=> b!18815 (= e!10012 (and tp!4414 tp!4413))))

(declare-fun b!18816 () Bool)

(assert (=> b!18816 (= e!10010 tp_is_empty!83)))

(declare-fun b!18817 () Bool)

(declare-fun res!7961 () Bool)

(assert (=> b!18817 (=> (not res!7961) (not e!10013))))

(declare-fun concatNonEmpty!6 (Conc!24 Conc!24) Conc!24)

(declare-fun insert!15 (Conc!24 Int T!1739) Conc!24)

(assert (=> b!18817 (= res!7961 (= res!5609 (concatNonEmpty!6 (insert!15 (left!668 xs!604) i!298 y!824) (right!671 xs!604))))))

(declare-fun b!18818 () Bool)

(declare-fun res!7966 () Bool)

(assert (=> b!18818 (=> (not res!7966) (not e!10013))))

(assert (=> b!18818 (= res!7966 (<= (- (level!21 res!5609) (level!21 xs!604)) 1))))

(declare-fun b!18819 () Bool)

(declare-fun tp!4410 () Bool)

(declare-fun tp!4412 () Bool)

(assert (=> b!18819 (= e!10011 (and tp!4410 tp!4412))))

(declare-fun b!18820 () Bool)

(declare-fun res!7960 () Bool)

(assert (=> b!18820 (=> (not res!7960) (not e!10013))))

(assert (=> b!18820 (= res!7960 (and (not (is-Empty!34 xs!604)) (not (is-Single!23 xs!604))))))

(declare-fun b!18821 () Bool)

(declare-fun res!7963 () Bool)

(assert (=> b!18821 (=> (not res!7963) (not e!10013))))

(assert (=> b!18821 (= res!7963 (balanced!23 xs!604))))

(declare-fun b!18822 () Bool)

(declare-fun res!7964 () Bool)

(assert (=> b!18822 (=> (not res!7964) (not e!10013))))

(assert (=> b!18822 (= res!7964 (< i!298 (size!211 (left!668 xs!604))))))

(declare-fun b!18823 () Bool)

(declare-fun tp!4411 () Bool)

(declare-fun tp!4409 () Bool)

(assert (=> b!18823 (= e!10010 (and tp!4411 tp!4409))))

(declare-fun b!18824 () Bool)

(declare-fun res!7956 () Bool)

(assert (=> b!18824 (=> (not res!7956) (not e!10013))))

(assert (=> b!18824 (= res!7956 (>= i!298 0))))

(assert (= (and start!3306 res!7958) b!18821))

(assert (= (and b!18821 res!7963) b!18824))

(assert (= (and b!18824 res!7956) b!18805))

(assert (= (and b!18805 res!7962) b!18820))

(assert (= (and b!18820 res!7960) b!18822))

(assert (= (and b!18822 res!7964) b!18817))

(assert (= (and b!18817 res!7961) b!18811))

(assert (= (and b!18811 res!7955) b!18810))

(assert (= (and b!18810 res!7957) b!18818))

(assert (= (and b!18818 res!7966) b!18807))

(assert (= (and b!18807 res!7967) b!18813))

(assert (= (and b!18813 res!7954) b!18806))

(assert (= (and b!18806 res!7959) b!18812))

(assert (= (and b!18812 (not res!7965)) b!18808))

(assert (= (and start!3306 (is-CC!23 xs!615)) b!18819))

(assert (= (and start!3306 (is-Single!23 xs!615)) b!18814))

(assert (= (and start!3306 (is-CC!23 xs!604)) b!18823))

(assert (= (and start!3306 (is-Single!23 xs!604)) b!18816))

(assert (= (and start!3306 (is-CC!23 res!5609)) b!18815))

(assert (= (and start!3306 (is-Single!23 res!5609)) b!18809))

(declare-fun m!21413 () Bool)

(assert (=> b!18808 m!21413))

(declare-fun m!21415 () Bool)

(assert (=> b!18821 m!21415))

(declare-fun m!21417 () Bool)

(assert (=> b!18813 m!21417))

(declare-fun m!21419 () Bool)

(assert (=> start!3306 m!21419))

(declare-fun m!21421 () Bool)

(assert (=> b!18807 m!21421))

(declare-fun m!21423 () Bool)

(assert (=> b!18807 m!21423))

(declare-fun m!21425 () Bool)

(assert (=> b!18805 m!21425))

(declare-fun m!21427 () Bool)

(assert (=> b!18817 m!21427))

(assert (=> b!18817 m!21427))

(declare-fun m!21429 () Bool)

(assert (=> b!18817 m!21429))

(assert (=> b!18818 m!21421))

(assert (=> b!18818 m!21423))

(declare-fun m!21431 () Bool)

(assert (=> b!18811 m!21431))

(declare-fun m!21433 () Bool)

(assert (=> b!18810 m!21433))

(declare-fun m!21435 () Bool)

(assert (=> b!18822 m!21435))

(push 1)

(assert (not b!18811))

(assert (not start!3306))

(assert (not b!18817))

(assert (not b!18810))

(assert (not b!18822))

(assert (not b!18807))

(assert (not b!18818))

(assert (not b!18819))

(assert (not b!18813))

(assert (not b!18821))

(assert (not b!18823))

(assert (not b!18808))

(assert (not b!18815))

(assert tp_is_empty!83)

(assert (not b!18805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

