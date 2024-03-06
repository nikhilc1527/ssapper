; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12450 () Bool)

(assert start!12450)

(declare-fun mod!3 () Int)

(declare-datatypes () ((Unit!1364 (Unit!1365))))

(declare-fun res!48327 () Unit!1364)

(declare-fun Unit!1366 () Unit!1364)

(assert (=> start!12450 (and (>= mod!3 1) (= res!48327 Unit!1366))))

(assert (=> start!12450 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

