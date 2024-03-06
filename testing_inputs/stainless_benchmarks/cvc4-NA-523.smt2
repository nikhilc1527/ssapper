; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3730 () Bool)

(assert start!3730)

(declare-fun b!24116 () Bool)

(declare-fun res!10729 () Bool)

(declare-fun e!12520 () Bool)

(assert (=> b!24116 (=> (not res!10729) (not e!12520))))

(declare-datatypes () ((T!1801 (T!1802 (val!73 Int)))))

(declare-datatypes () ((Conc!50 (CC!49 (left!694 Conc!50) (right!697 Conc!50)) (Single!49 (x!8861 T!1801)) (Empty!60))))

(declare-fun xs!623 () Conc!50)

(assert (=> b!24116 (= res!10729 (is-CC!49 xs!623))))

(declare-fun b!24117 () Bool)

(declare-fun res!10732 () Bool)

(assert (=> b!24117 (=> (not res!10732) (not e!12520))))

(declare-fun i!323 () Int)

(declare-fun size!257 (Conc!50) Int)

(assert (=> b!24117 (= res!10732 (< i!323 (size!257 xs!623)))))

(declare-fun res!10731 () Bool)

(assert (=> start!3730 (=> (not res!10731) (not e!12520))))

(assert (=> start!3730 (= res!10731 (<= 0 i!323))))

(assert (=> start!3730 e!12520))

(assert (=> start!3730 true))

(declare-fun e!12516 () Bool)

(assert (=> start!3730 e!12516))

(declare-fun e!12519 () Bool)

(assert (=> start!3730 e!12519))

(declare-fun e!12518 () Bool)

(assert (=> start!3730 e!12518))

(declare-fun b!24118 () Bool)

(declare-fun tp_is_empty!145 () Bool)

(declare-fun tp!5195 () Bool)

(assert (=> b!24118 (= e!12519 (and tp_is_empty!145 tp!5195))))

(declare-fun i!324 () Int)

(declare-fun b!24119 () Bool)

(declare-fun e!12517 () Bool)

(declare-datatypes () ((List!353 (Cons!347 (h!264 T!1801) (t!4363 List!353)) (Nil!348))))

(declare-fun l1!172 () List!353)

(declare-fun l2!166 () List!353)

(declare-fun size!258 (List!353) Int)

(assert (=> b!24119 (= e!12517 (>= i!324 (+ (size!258 l1!172) (size!258 l2!166))))))

(declare-fun b!24120 () Bool)

(declare-fun res!10727 () Bool)

(assert (=> b!24120 (=> (not res!10727) (not e!12520))))

(declare-fun toList!108 (Conc!50) List!353)

(assert (=> b!24120 (= res!10727 (= l1!172 (toList!108 (left!694 xs!623))))))

(declare-fun b!24121 () Bool)

(declare-fun res!10728 () Bool)

(assert (=> b!24121 (=> (not res!10728) (not e!12520))))

(assert (=> b!24121 (= res!10728 (= i!324 i!323))))

(declare-fun b!24122 () Bool)

(assert (=> b!24122 (= e!12520 e!12517)))

(declare-fun res!10730 () Bool)

(assert (=> b!24122 (=> res!10730 e!12517)))

(assert (=> b!24122 (= res!10730 (> 0 i!324))))

(declare-fun b!24123 () Bool)

(declare-fun res!10733 () Bool)

(assert (=> b!24123 (=> (not res!10733) (not e!12520))))

(assert (=> b!24123 (= res!10733 (= l2!166 (toList!108 (right!697 xs!623))))))

(declare-fun b!24124 () Bool)

(declare-fun tp!5197 () Bool)

(declare-fun tp!5196 () Bool)

(assert (=> b!24124 (= e!12518 (and tp!5197 tp!5196))))

(declare-fun b!24125 () Bool)

(assert (=> b!24125 (= e!12518 tp_is_empty!145)))

(declare-fun b!24126 () Bool)

(declare-fun tp!5194 () Bool)

(assert (=> b!24126 (= e!12516 (and tp_is_empty!145 tp!5194))))

(assert (= (and start!3730 res!10731) b!24117))

(assert (= (and b!24117 res!10732) b!24116))

(assert (= (and b!24116 res!10729) b!24120))

(assert (= (and b!24120 res!10727) b!24123))

(assert (= (and b!24123 res!10733) b!24121))

(assert (= (and b!24121 res!10728) b!24122))

(assert (= (and b!24122 (not res!10730)) b!24119))

(assert (= (and start!3730 (is-Cons!347 l1!172)) b!24126))

(assert (= (and start!3730 (is-Cons!347 l2!166)) b!24118))

(assert (= (and start!3730 (is-CC!49 xs!623)) b!24124))

(assert (= (and start!3730 (is-Single!49 xs!623)) b!24125))

(declare-fun m!25441 () Bool)

(assert (=> b!24117 m!25441))

(declare-fun m!25443 () Bool)

(assert (=> b!24119 m!25443))

(declare-fun m!25445 () Bool)

(assert (=> b!24119 m!25445))

(declare-fun m!25447 () Bool)

(assert (=> b!24120 m!25447))

(declare-fun m!25449 () Bool)

(assert (=> b!24123 m!25449))

(push 1)

(assert (not b!24120))

(assert (not b!24118))

(assert (not b!24119))

(assert (not b!24123))

(assert (not b!24126))

(assert (not b!24124))

(assert (not b!24117))

(assert tp_is_empty!145)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13481 () Bool)

(declare-fun lt!3734 () Int)

(assert (=> d!13481 (>= lt!3734 0)))

(declare-fun e!12523 () Int)

(assert (=> d!13481 (= lt!3734 e!12523)))

(declare-fun c!5606 () Bool)

(assert (=> d!13481 (= c!5606 (is-Nil!348 l1!172))))

(assert (=> d!13481 (= (size!258 l1!172) lt!3734)))

(declare-fun b!24131 () Bool)

(assert (=> b!24131 (= e!12523 0)))

(declare-fun b!24132 () Bool)

(assert (=> b!24132 (= e!12523 (+ 1 (size!258 (t!4363 l1!172))))))

(assert (= (and d!13481 c!5606) b!24131))

(assert (= (and d!13481 (not c!5606)) b!24132))

(declare-fun m!25451 () Bool)

(assert (=> b!24132 m!25451))

(assert (=> b!24119 d!13481))

(declare-fun d!13483 () Bool)

(declare-fun lt!3735 () Int)

(assert (=> d!13483 (>= lt!3735 0)))

(declare-fun e!12524 () Int)

(assert (=> d!13483 (= lt!3735 e!12524)))

(declare-fun c!5607 () Bool)

(assert (=> d!13483 (= c!5607 (is-Nil!348 l2!166))))

(assert (=> d!13483 (= (size!258 l2!166) lt!3735)))

(declare-fun b!24133 () Bool)

(assert (=> b!24133 (= e!12524 0)))

(declare-fun b!24134 () Bool)

(assert (=> b!24134 (= e!12524 (+ 1 (size!258 (t!4363 l2!166))))))

(assert (= (and d!13483 c!5607) b!24133))

(assert (= (and d!13483 (not c!5607)) b!24134))

(declare-fun m!25453 () Bool)

(assert (=> b!24134 m!25453))

(assert (=> b!24119 d!13483))

(declare-fun d!13485 () Bool)

(declare-fun lt!3738 () List!353)

(assert (=> d!13485 (= (size!258 lt!3738) (size!257 (right!697 xs!623)))))

(declare-fun e!12530 () List!353)

(assert (=> d!13485 (= lt!3738 e!12530)))

(declare-fun c!5612 () Bool)

(assert (=> d!13485 (= c!5612 (is-Empty!60 (right!697 xs!623)))))

(assert (=> d!13485 (= (toList!108 (right!697 xs!623)) lt!3738)))

(declare-fun b!24145 () Bool)

(declare-fun e!12529 () List!353)

(assert (=> b!24145 (= e!12529 (Cons!347 (x!8861 (right!697 xs!623)) Nil!348))))

(declare-fun b!24144 () Bool)

(assert (=> b!24144 (= e!12530 e!12529)))

(declare-fun c!5613 () Bool)

(assert (=> b!24144 (= c!5613 (is-Single!49 (right!697 xs!623)))))

(declare-fun b!24146 () Bool)

(declare-fun ++!33 (List!353 List!353) List!353)

(assert (=> b!24146 (= e!12529 (++!33 (toList!108 (left!694 (right!697 xs!623))) (toList!108 (right!697 (right!697 xs!623)))))))

(declare-fun b!24143 () Bool)

(assert (=> b!24143 (= e!12530 Nil!348)))

(assert (= (and b!24144 c!5613) b!24145))

(assert (= (and b!24144 (not c!5613)) b!24146))

(assert (= (and d!13485 c!5612) b!24143))

(assert (= (and d!13485 (not c!5612)) b!24144))

(declare-fun m!25455 () Bool)

(assert (=> d!13485 m!25455))

(declare-fun m!25457 () Bool)

(assert (=> d!13485 m!25457))

(declare-fun m!25459 () Bool)

(assert (=> b!24146 m!25459))

(declare-fun m!25461 () Bool)

(assert (=> b!24146 m!25461))

(assert (=> b!24146 m!25459))

(assert (=> b!24146 m!25461))

(declare-fun m!25463 () Bool)

(assert (=> b!24146 m!25463))

(assert (=> b!24123 d!13485))

(declare-fun d!13487 () Bool)

(declare-fun lt!3739 () List!353)

(assert (=> d!13487 (= (size!258 lt!3739) (size!257 (left!694 xs!623)))))

(declare-fun e!12532 () List!353)

(assert (=> d!13487 (= lt!3739 e!12532)))

(declare-fun c!5614 () Bool)

(assert (=> d!13487 (= c!5614 (is-Empty!60 (left!694 xs!623)))))

(assert (=> d!13487 (= (toList!108 (left!694 xs!623)) lt!3739)))

(declare-fun b!24149 () Bool)

(declare-fun e!12531 () List!353)

(assert (=> b!24149 (= e!12531 (Cons!347 (x!8861 (left!694 xs!623)) Nil!348))))

(declare-fun b!24148 () Bool)

(assert (=> b!24148 (= e!12532 e!12531)))

(declare-fun c!5615 () Bool)

(assert (=> b!24148 (= c!5615 (is-Single!49 (left!694 xs!623)))))

(declare-fun b!24150 () Bool)

(assert (=> b!24150 (= e!12531 (++!33 (toList!108 (left!694 (left!694 xs!623))) (toList!108 (right!697 (left!694 xs!623)))))))

(declare-fun b!24147 () Bool)

(assert (=> b!24147 (= e!12532 Nil!348)))

(assert (= (and b!24148 c!5615) b!24149))

(assert (= (and b!24148 (not c!5615)) b!24150))

(assert (= (and d!13487 c!5614) b!24147))

(assert (= (and d!13487 (not c!5614)) b!24148))

(declare-fun m!25465 () Bool)

(assert (=> d!13487 m!25465))

(declare-fun m!25467 () Bool)

(assert (=> d!13487 m!25467))

(declare-fun m!25469 () Bool)

(assert (=> b!24150 m!25469))

(declare-fun m!25471 () Bool)

(assert (=> b!24150 m!25471))

(assert (=> b!24150 m!25469))

(assert (=> b!24150 m!25471))

(declare-fun m!25473 () Bool)

(assert (=> b!24150 m!25473))

(assert (=> b!24120 d!13487))

(declare-fun b!24162 () Bool)

(declare-fun e!12538 () Int)

(assert (=> b!24162 (= e!12538 (+ (size!257 (left!694 xs!623)) (size!257 (right!697 xs!623))))))

(declare-fun b!24159 () Bool)

(declare-fun e!12537 () Int)

(assert (=> b!24159 (= e!12537 0)))

(declare-fun d!13489 () Bool)

(declare-fun lt!3742 () Int)

(assert (=> d!13489 (>= lt!3742 0)))

(assert (=> d!13489 (= lt!3742 e!12537)))

(declare-fun c!5621 () Bool)

(assert (=> d!13489 (= c!5621 (is-Empty!60 xs!623))))

(assert (=> d!13489 (= (size!257 xs!623) lt!3742)))

(declare-fun b!24161 () Bool)

(assert (=> b!24161 (= e!12538 1)))

(declare-fun b!24160 () Bool)

(assert (=> b!24160 (= e!12537 e!12538)))

(declare-fun c!5620 () Bool)

(assert (=> b!24160 (= c!5620 (is-Single!49 xs!623))))

(assert (= (and b!24160 c!5620) b!24161))

(assert (= (and b!24160 (not c!5620)) b!24162))

(assert (= (and d!13489 c!5621) b!24159))

(assert (= (and d!13489 (not c!5621)) b!24160))

(assert (=> b!24162 m!25467))

(assert (=> b!24162 m!25457))

(assert (=> b!24117 d!13489))

(declare-fun b!24169 () Bool)

(declare-fun e!12541 () Bool)

(declare-fun tp!5202 () Bool)

(declare-fun tp!5203 () Bool)

(assert (=> b!24169 (= e!12541 (and tp!5202 tp!5203))))

(declare-fun b!24170 () Bool)

(assert (=> b!24170 (= e!12541 tp_is_empty!145)))

(assert (=> b!24124 (= tp!5197 e!12541)))

(assert (= (and b!24124 (is-CC!49 (left!694 xs!623))) b!24169))

(assert (= (and b!24124 (is-Single!49 (left!694 xs!623))) b!24170))

(declare-fun b!24171 () Bool)

(declare-fun e!12542 () Bool)

(declare-fun tp!5204 () Bool)

(declare-fun tp!5205 () Bool)

(assert (=> b!24171 (= e!12542 (and tp!5204 tp!5205))))

(declare-fun b!24172 () Bool)

(assert (=> b!24172 (= e!12542 tp_is_empty!145)))

(assert (=> b!24124 (= tp!5196 e!12542)))

(assert (= (and b!24124 (is-CC!49 (right!697 xs!623))) b!24171))

(assert (= (and b!24124 (is-Single!49 (right!697 xs!623))) b!24172))

(declare-fun b!24177 () Bool)

(declare-fun e!12545 () Bool)

(declare-fun tp!5208 () Bool)

(assert (=> b!24177 (= e!12545 (and tp_is_empty!145 tp!5208))))

(assert (=> b!24126 (= tp!5194 e!12545)))

(assert (= (and b!24126 (is-Cons!347 (t!4363 l1!172))) b!24177))

(declare-fun b!24178 () Bool)

(declare-fun e!12546 () Bool)

(declare-fun tp!5209 () Bool)

(assert (=> b!24178 (= e!12546 (and tp_is_empty!145 tp!5209))))

(assert (=> b!24118 (= tp!5195 e!12546)))

(assert (= (and b!24118 (is-Cons!347 (t!4363 l2!166))) b!24178))

(push 1)

(assert (not d!13487))

(assert (not b!24162))

(assert (not b!24178))

(assert (not b!24171))

(assert (not b!24169))

(assert (not b!24146))

(assert tp_is_empty!145)

(assert (not b!24134))

(assert (not b!24150))

(assert (not d!13485))

(assert (not b!24177))

(assert (not b!24132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

