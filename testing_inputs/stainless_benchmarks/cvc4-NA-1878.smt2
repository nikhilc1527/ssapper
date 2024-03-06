; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12596 () Bool)

(assert start!12596)

(declare-fun res!48789 () Bool)

(declare-fun e!50724 () Bool)

(assert (=> start!12596 (=> (not res!48789) (not e!50724))))

(declare-datatypes () ((List!795 (Cons!737 (head!1167 (_ BitVec 32)) (tail!1163 List!795)) (Nil!739))))

(declare-fun l1!498 () List!795)

(assert (=> start!12596 (= res!48789 (is-Cons!737 l1!498))))

(assert (=> start!12596 e!50724))

(assert (=> start!12596 true))

(declare-fun b!92702 () Bool)

(declare-fun res!48790 () Bool)

(assert (=> b!92702 (=> (not res!48790) (not e!50724))))

(declare-fun l2!490 () List!795)

(declare-fun inductVal!1050 () List!795)

(declare-fun l3!58 () List!795)

(declare-fun concat0!1 (List!795 List!795 List!795) List!795)

(assert (=> b!92702 (= res!48790 (= inductVal!1050 (concat0!1 (tail!1163 l1!498) l2!490 l3!58)))))

(declare-fun b!92703 () Bool)

(assert (=> b!92703 (= e!50724 false)))

(assert (= (and start!12596 res!48789) b!92702))

(assert (= (and b!92702 res!48790) b!92703))

(declare-fun m!88294 () Bool)

(assert (=> b!92702 m!88294))

(push 1)

(assert (not b!92702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

