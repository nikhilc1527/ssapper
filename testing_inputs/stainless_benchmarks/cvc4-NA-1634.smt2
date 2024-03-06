; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11386 () Bool)

(assert start!11386)

(declare-fun res!45564 () Bool)

(declare-fun e!47443 () Bool)

(assert (=> start!11386 (=> (not res!45564) (not e!47443))))

(declare-fun x!30387 () Int)

(declare-datatypes () ((Color!18 (Red!17) (Black!17))))

(declare-datatypes () ((Tree!115 (Empty!198) (Node!159 (color!48 Color!18) (left!1658 Tree!115) (value!6805 Int) (right!1661 Tree!115)))))

(declare-fun res!44628 () Tree!115)

(declare-fun b!85880 () Tree!115)

(declare-fun a!1013 () Tree!115)

(declare-fun c!21309 () Color!18)

(assert (=> start!11386 (= res!45564 (and (or (not (is-Black!17 c!21309)) (not (is-Node!159 a!1013)) (not (is-Red!17 (color!48 a!1013))) (not (is-Node!159 (left!1658 a!1013))) (not (is-Red!17 (color!48 (left!1658 a!1013))))) (or (not (is-Black!17 c!21309)) (not (is-Node!159 a!1013)) (not (is-Red!17 (color!48 a!1013))) (not (is-Node!159 (right!1661 a!1013))) (not (is-Red!17 (color!48 (right!1661 a!1013))))) (or (not (is-Black!17 c!21309)) (not (is-Node!159 b!85880)) (not (is-Red!17 (color!48 b!85880))) (not (is-Node!159 (left!1658 b!85880))) (not (is-Red!17 (color!48 (left!1658 b!85880))))) (or (not (is-Black!17 c!21309)) (not (is-Node!159 b!85880)) (not (is-Red!17 (color!48 b!85880))) (not (is-Node!159 (right!1661 b!85880))) (not (is-Red!17 (color!48 (right!1661 b!85880))))) (= res!44628 (Node!159 c!21309 a!1013 x!30387 b!85880))))))

(assert (=> start!11386 e!47443))

(assert (=> start!11386 true))

(declare-fun b!87448 () Bool)

(declare-fun content!8 (Tree!115) (Set Int))

(assert (=> b!87448 (= e!47443 (not (= (content!8 res!44628) (content!8 (Node!159 c!21309 a!1013 x!30387 b!85880)))))))

(assert (=> b!87448 (is-Node!159 res!44628)))

(assert (= (and start!11386 res!45564) b!87448))

(declare-fun m!83850 () Bool)

(assert (=> b!87448 m!83850))

(declare-fun m!83852 () Bool)

(assert (=> b!87448 m!83852))

(push 1)

(assert (not b!87448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

