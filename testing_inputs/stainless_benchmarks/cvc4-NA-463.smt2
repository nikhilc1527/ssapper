; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2992 () Bool)

(assert start!2992)

(declare-fun res!5369 () Bool)

(declare-fun e!7776 () Bool)

(assert (=> start!2992 (=> (not res!5369) (not e!7776))))

(declare-fun i!234 () Int)

(assert (=> start!2992 (= res!5369 (and (>= i!234 0) (not (= i!234 0))))))

(assert (=> start!2992 e!7776))

(assert (=> start!2992 true))

(declare-fun b!14077 () Bool)

(declare-fun res!5370 () Bool)

(assert (=> b!14077 (=> (not res!5370) (not e!7776))))

(declare-datatypes () ((List!316 (Cons!312 (head!534 (_ BitVec 32)) (tail!546 List!316)) (Nil!313))))

(declare-fun size!22 (List!316) Int)

(declare-fun createListOfSize!0 (Int) List!316)

(assert (=> b!14077 (= res!5370 (= (size!22 (createListOfSize!0 i!234)) i!234))))

(declare-fun b!14078 () Bool)

(declare-fun res!5371 () Bool)

(assert (=> b!14078 (=> (not res!5371) (not e!7776))))

(declare-fun x$2!127 () List!316)

(declare-fun res!205 () List!316)

(assert (=> b!14078 (= res!5371 (= x$2!127 res!205))))

(assert (=> b!14078 (= (size!22 res!205) i!234)))

(declare-fun b!14079 () Bool)

(assert (=> b!14079 (= e!7776 (not (= (size!22 x$2!127) i!234)))))

(assert (= (and start!2992 res!5369) b!14077))

(assert (= (and b!14077 res!5370) b!14078))

(assert (= (and b!14078 res!5371) b!14079))

(declare-fun m!17971 () Bool)

(assert (=> b!14077 m!17971))

(assert (=> b!14077 m!17971))

(declare-fun m!17973 () Bool)

(assert (=> b!14077 m!17973))

(declare-fun m!17975 () Bool)

(assert (=> b!14078 m!17975))

(declare-fun m!17977 () Bool)

(assert (=> b!14079 m!17977))

(push 1)

(assert (not b!14079))

(assert (not b!14078))

(assert (not b!14077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

