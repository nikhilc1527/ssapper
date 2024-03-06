; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!996 () Bool)

(assert start!996)

(declare-fun res!1660 () Bool)

(declare-fun e!3724 () Bool)

(assert (=> start!996 (=> (not res!1660) (not e!3724))))

(declare-datatypes () ((Parenthesis!16 (CloseParenthesis!15) (OpenParenthesis!15))))

(declare-datatypes () ((List!117 (Nil!115) (Cons!114 (head!332 Parenthesis!16) (tail!344 List!117)))))

(declare-fun xs!395 () List!117)

(declare-fun isEmpty!107 (List!117) Bool)

(assert (=> start!996 (= res!1660 (not (isEmpty!107 xs!395)))))

(assert (=> start!996 e!3724))

(assert (=> start!996 true))

(declare-fun b!6213 () Bool)

(declare-fun res!1661 () Bool)

(assert (=> b!6213 (=> (not res!1661) (not e!3724))))

(declare-fun xs!398 () List!117)

(assert (=> b!6213 (= res!1661 (= xs!398 xs!395))))

(declare-fun b!6214 () Bool)

(assert (=> b!6214 (= e!3724 (isEmpty!107 xs!398))))

(assert (= (and start!996 res!1660) b!6213))

(assert (= (and b!6213 res!1661) b!6214))

(declare-fun m!8973 () Bool)

(assert (=> start!996 m!8973))

(declare-fun m!8975 () Bool)

(assert (=> b!6214 m!8975))

(push 1)

(assert (not start!996))

(assert (not b!6214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

