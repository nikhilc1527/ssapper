; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4076 () Bool)

(assert start!4076)

(declare-fun res!14858 () Bool)

(declare-fun e!16458 () Bool)

(assert (=> start!4076 (=> (not res!14858) (not e!16458))))

(declare-datatypes () ((T!1851 (T!1852 (val!98 Int)))))

(declare-datatypes () ((Conc!75 (CC!74 (left!719 Conc!75) (right!722 Conc!75)) (Single!74 (x!8985 T!1851)) (Empty!85))))

(declare-fun xs!586 () Conc!75)

(declare-fun concInv!67 (Conc!75) Bool)

(assert (=> start!4076 (= res!14858 (concInv!67 xs!586))))

(assert (=> start!4076 e!16458))

(declare-fun e!16456 () Bool)

(assert (=> start!4076 e!16456))

(declare-fun e!16459 () Bool)

(assert (=> start!4076 e!16459))

(declare-fun tp_is_empty!195 () Bool)

(assert (=> start!4076 tp_is_empty!195))

(declare-fun e!16457 () Bool)

(assert (=> start!4076 e!16457))

(assert (=> start!4076 true))

(declare-fun b!32353 () Bool)

(declare-fun res!14856 () Bool)

(assert (=> b!32353 (=> (not res!14856) (not e!16458))))

(declare-fun i!263 () Int)

(declare-fun size!285 (Conc!75) Int)

(assert (=> b!32353 (= res!14856 (< i!263 (size!285 (left!719 xs!586))))))

(declare-fun b!32354 () Bool)

(declare-fun tp!6720 () Bool)

(declare-fun tp!6718 () Bool)

(assert (=> b!32354 (= e!16459 (and tp!6720 tp!6718))))

(declare-fun b!32355 () Bool)

(declare-fun res!14865 () Bool)

(assert (=> b!32355 (=> (not res!14865) (not e!16458))))

(assert (=> b!32355 (= res!14865 (< i!263 (size!285 xs!586)))))

(declare-fun b!32356 () Bool)

(declare-fun res!14859 () Bool)

(assert (=> b!32356 (=> (not res!14859) (not e!16458))))

(declare-fun res!5578 () Conc!75)

(declare-fun y!785 () T!1851)

(declare-fun update!7 (Conc!75 Int T!1851) Conc!75)

(assert (=> b!32356 (= res!14859 (= res!5578 (CC!74 (update!7 (left!719 xs!586) i!263 y!785) (right!722 xs!586))))))

(declare-fun b!32357 () Bool)

(assert (=> b!32357 (= e!16459 tp_is_empty!195)))

(declare-fun b!32358 () Bool)

(declare-fun res!14863 () Bool)

(assert (=> b!32358 (=> (not res!14863) (not e!16458))))

(declare-fun balanced!68 (Conc!75) Bool)

(assert (=> b!32358 (= res!14863 (balanced!68 xs!586))))

(declare-fun b!32359 () Bool)

(declare-fun res!14860 () Bool)

(assert (=> b!32359 (=> (not res!14860) (not e!16458))))

(assert (=> b!32359 (= res!14860 (not (is-Single!74 xs!586)))))

(declare-fun b!32360 () Bool)

(assert (=> b!32360 (= e!16457 tp_is_empty!195)))

(declare-fun b!32361 () Bool)

(declare-fun tp!6717 () Bool)

(declare-fun tp!6719 () Bool)

(assert (=> b!32361 (= e!16456 (and tp!6717 tp!6719))))

(declare-fun b!32362 () Bool)

(declare-fun res!14864 () Bool)

(assert (=> b!32362 (=> (not res!14864) (not e!16458))))

(declare-fun isEmpty!329 (Conc!75) Bool)

(assert (=> b!32362 (= res!14864 (not (isEmpty!329 xs!586)))))

(declare-fun b!32363 () Bool)

(assert (=> b!32363 (= e!16456 tp_is_empty!195)))

(declare-fun b!32364 () Bool)

(declare-fun res!14857 () Bool)

(assert (=> b!32364 (=> (not res!14857) (not e!16458))))

(declare-fun y!794 () T!1851)

(declare-fun xs!591 () Conc!75)

(declare-fun i!270 () Int)

(assert (=> b!32364 (= res!14857 (and (= xs!591 xs!586) (= i!270 i!263) (= y!794 y!785)))))

(declare-fun b!32365 () Bool)

(declare-fun tp!6716 () Bool)

(declare-fun tp!6721 () Bool)

(assert (=> b!32365 (= e!16457 (and tp!6716 tp!6721))))

(declare-fun b!32366 () Bool)

(declare-fun res!14862 () Bool)

(assert (=> b!32366 (=> (not res!14862) (not e!16458))))

(assert (=> b!32366 (= res!14862 (>= i!263 0))))

(declare-fun b!32367 () Bool)

(declare-fun e!16460 () Bool)

(assert (=> b!32367 (= e!16460 (>= i!270 (size!285 xs!591)))))

(declare-fun b!32368 () Bool)

(assert (=> b!32368 (= e!16458 e!16460)))

(declare-fun res!14861 () Bool)

(assert (=> b!32368 (=> res!14861 e!16460)))

(assert (=> b!32368 (= res!14861 (< i!270 0))))

(assert (= (and start!4076 res!14858) b!32358))

(assert (= (and b!32358 res!14863) b!32362))

(assert (= (and b!32362 res!14864) b!32366))

(assert (= (and b!32366 res!14862) b!32355))

(assert (= (and b!32355 res!14865) b!32359))

(assert (= (and b!32359 res!14860) b!32353))

(assert (= (and b!32353 res!14856) b!32356))

(assert (= (and b!32356 res!14859) b!32364))

(assert (= (and b!32364 res!14857) b!32368))

(assert (= (and b!32368 (not res!14861)) b!32367))

(assert (= (and start!4076 (is-CC!74 xs!586)) b!32361))

(assert (= (and start!4076 (is-Single!74 xs!586)) b!32363))

(assert (= (and start!4076 (is-CC!74 res!5578)) b!32354))

(assert (= (and start!4076 (is-Single!74 res!5578)) b!32357))

(assert (= (and start!4076 (is-CC!74 xs!591)) b!32365))

(assert (= (and start!4076 (is-Single!74 xs!591)) b!32360))

(declare-fun m!35035 () Bool)

(assert (=> b!32353 m!35035))

(declare-fun m!35037 () Bool)

(assert (=> b!32356 m!35037))

(declare-fun m!35039 () Bool)

(assert (=> b!32362 m!35039))

(declare-fun m!35041 () Bool)

(assert (=> b!32355 m!35041))

(declare-fun m!35043 () Bool)

(assert (=> b!32367 m!35043))

(declare-fun m!35045 () Bool)

(assert (=> b!32358 m!35045))

(declare-fun m!35047 () Bool)

(assert (=> start!4076 m!35047))

(push 1)

(assert (not start!4076))

(assert (not b!32354))

(assert (not b!32353))

(assert tp_is_empty!195)

(assert (not b!32365))

(assert (not b!32362))

(assert (not b!32358))

(assert (not b!32355))

(assert (not b!32356))

(assert (not b!32367))

(assert (not b!32361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

