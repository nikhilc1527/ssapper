; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6300 () Bool)

(assert start!6300)

(declare-fun b!46849 () Bool)

(declare-fun b_free!5637 () Bool)

(declare-fun b_next!25293 () Bool)

(assert (=> b!46849 (= b_free!5637 (not b_next!25293))))

(declare-fun tp!12532 () Bool)

(declare-fun b_and!36669 () Bool)

(assert (=> b!46849 (= tp!12532 b_and!36669)))

(declare-fun b_free!5639 () Bool)

(declare-fun b_next!25295 () Bool)

(assert (=> b!46849 (= b_free!5639 (not b_next!25295))))

(declare-fun tp!12530 () Bool)

(declare-fun b_and!36671 () Bool)

(assert (=> b!46849 (= tp!12530 b_and!36671)))

(declare-fun b_free!5641 () Bool)

(declare-fun b_next!25297 () Bool)

(assert (=> b!46849 (= b_free!5641 (not b_next!25297))))

(declare-fun tp!12528 () Bool)

(declare-fun b_and!36673 () Bool)

(assert (=> b!46849 (= tp!12528 b_and!36673)))

(declare-fun b!46850 () Bool)

(declare-fun b_free!5643 () Bool)

(declare-fun b_next!25299 () Bool)

(assert (=> b!46850 (= b_free!5643 (not b_next!25299))))

(declare-fun tp!12529 () Bool)

(declare-fun b_and!36675 () Bool)

(assert (=> b!46850 (= tp!12529 b_and!36675)))

(declare-fun b_free!5645 () Bool)

(declare-fun b_next!25301 () Bool)

(assert (=> b!46850 (= b_free!5645 (not b_next!25301))))

(declare-fun tp!12533 () Bool)

(declare-fun b_and!36677 () Bool)

(assert (=> b!46850 (= tp!12533 b_and!36677)))

(declare-fun b_free!5647 () Bool)

(declare-fun b_next!25303 () Bool)

(assert (=> b!46850 (= b_free!5647 (not b_next!25303))))

(declare-fun tp!12531 () Bool)

(declare-fun b_and!36679 () Bool)

(assert (=> b!46850 (= tp!12531 b_and!36679)))

(declare-fun b!46851 () Bool)

(declare-fun b_free!5649 () Bool)

(declare-fun b_next!25305 () Bool)

(assert (=> b!46851 (= b_free!5649 (not b_next!25305))))

(declare-fun tp!12535 () Bool)

(declare-fun b_and!36681 () Bool)

(assert (=> b!46851 (= tp!12535 b_and!36681)))

(declare-fun b_free!5651 () Bool)

(declare-fun b_next!25307 () Bool)

(assert (=> b!46851 (= b_free!5651 (not b_next!25307))))

(declare-fun tp!12534 () Bool)

(declare-fun b_and!36683 () Bool)

(assert (=> b!46851 (= tp!12534 b_and!36683)))

(declare-fun b_free!5653 () Bool)

(declare-fun b_next!25309 () Bool)

(assert (=> b!46851 (= b_free!5653 (not b_next!25309))))

(declare-fun tp!12527 () Bool)

(declare-fun b_and!36685 () Bool)

(assert (=> b!46851 (= tp!12527 b_and!36685)))

(declare-fun lt!8506 () Bool)

(declare-datatypes () ((Nat!202 (Zero!186) (Succ!183 (n!1338 Nat!202)))))

(declare-fun n2!101 () Nat!202)

(declare-fun n3!28 () Nat!202)

(declare-fun >=!2 (Nat!202 Nat!202) Bool)

(assert (=> start!6300 (= lt!8506 (>=!2 n2!101 n3!28))))

(assert (=> start!6300 false))

(declare-datatypes () ((Unit!627 (Unit!628))))

(declare-datatypes () ((RAEqEvidence!348 (RAEqEvidence!349 (x!17315 Int) (y!1513 Int) (evidence!626 Int)))))

(declare-fun thiss!5056 () RAEqEvidence!348)

(declare-fun e!24401 () Bool)

(declare-fun inv!823 (RAEqEvidence!348) Bool)

(assert (=> start!6300 (and (inv!823 thiss!5056) e!24401)))

(assert (=> start!6300 true))

(declare-fun x$56!25 () RAEqEvidence!348)

(declare-fun e!24400 () Bool)

(assert (=> start!6300 (and (inv!823 x$56!25) e!24400)))

(declare-fun prev!431 () RAEqEvidence!348)

(declare-fun e!24402 () Bool)

(assert (=> start!6300 (and (inv!823 prev!431) e!24402)))

(assert (=> b!46849 (= e!24401 (and tp!12532 tp!12530 tp!12528))))

(assert (=> b!46850 (= e!24400 (and tp!12529 tp!12533 tp!12531))))

(assert (=> b!46851 (= e!24402 (and tp!12535 tp!12534 tp!12527))))

(assert (= start!6300 b!46849))

(assert (= start!6300 b!46850))

(assert (= start!6300 b!46851))

(declare-fun m!49749 () Bool)

(assert (=> start!6300 m!49749))

(declare-fun m!49751 () Bool)

(assert (=> start!6300 m!49751))

(declare-fun m!49753 () Bool)

(assert (=> start!6300 m!49753))

(declare-fun m!49755 () Bool)

(assert (=> start!6300 m!49755))

(push 1)

(assert b_and!36669)

(assert (not start!6300))

(assert b_and!36681)

(assert b_and!36675)

(assert (not b_next!25309))

(assert (not b_next!25301))

(assert b_and!36679)

(assert (not b_next!25295))

(assert b_and!36673)

(assert (not b_next!25293))

(assert (not b_next!25299))

(assert b_and!36671)

(assert b_and!36683)

(assert (not b_next!25303))

(assert (not b_next!25305))

(assert (not b_next!25307))

(assert (not b_next!25297))

(assert b_and!36685)

(assert b_and!36677)

(check-sat)

(pop 1)

(push 1)

(assert b_and!36669)

(assert b_and!36681)

(assert b_and!36675)

(assert (not b_next!25309))

(assert (not b_next!25301))

(assert b_and!36679)

(assert (not b_next!25295))

(assert b_and!36673)

(assert (not b_next!25293))

(assert (not b_next!25299))

(assert b_and!36671)

(assert b_and!36683)

(assert (not b_next!25303))

(assert (not b_next!25305))

(assert (not b_next!25307))

(assert (not b_next!25297))

(assert b_and!36685)

(assert b_and!36677)

(check-sat)

(pop 1)

