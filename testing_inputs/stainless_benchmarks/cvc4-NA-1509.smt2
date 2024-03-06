; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10242 () Bool)

(assert start!10242)

(declare-fun res!36967 () Bool)

(declare-fun e!40446 () Bool)

(assert (=> start!10242 (=> (not res!36967) (not e!40446))))

(declare-datatypes () ((Formula!78 (Implies!82 (lhs!1347 Formula!78) (rhs!1347 Formula!78)) (And!82 (lhs!1348 Formula!78) (rhs!1348 Formula!78)) (Or!82 (lhs!1349 Formula!78) (rhs!1349 Formula!78)) (Literal!76 (id!4939 (_ BitVec 32))) (Not!82 (f!4684 Formula!78)))))

(declare-fun f!4611 () Formula!78)

(declare-fun isNNF!0 (Formula!78) Bool)

(assert (=> start!10242 (= res!36967 (isNNF!0 f!4611))))

(assert (=> start!10242 e!40446))

(assert (=> start!10242 true))

(declare-fun b!74858 () Bool)

(declare-fun res!36968 () Bool)

(assert (=> b!74858 (=> (not res!36968) (not e!40446))))

(assert (=> b!74858 (= res!36968 (and (not (is-Implies!82 f!4611)) (not (is-And!82 f!4611)) (not (is-Or!82 f!4611)) (not (is-Literal!76 f!4611))))))

(declare-fun b!74859 () Bool)

(declare-fun res!36969 () Bool)

(assert (=> b!74859 (=> (not res!36969) (not e!40446))))

(declare-fun inductVal!785 () Bool)

(declare-fun nnfIsStable!0 (Formula!78) Bool)

(assert (=> b!74859 (= res!36969 (= inductVal!785 (nnfIsStable!0 (f!4684 f!4611))))))

(declare-fun b!74860 () Bool)

(declare-fun nnf!0 (Formula!78) Formula!78)

(assert (=> b!74860 (= e!40446 (not (= (nnf!0 f!4611) f!4611)))))

(assert (= (and start!10242 res!36967) b!74858))

(assert (= (and b!74858 res!36968) b!74859))

(assert (= (and b!74859 res!36969) b!74860))

(declare-fun m!73000 () Bool)

(assert (=> start!10242 m!73000))

(declare-fun m!73002 () Bool)

(assert (=> b!74859 m!73002))

(declare-fun m!73004 () Bool)

(assert (=> b!74860 m!73004))

(push 1)

(assert (not start!10242))

(assert (not b!74860))

(assert (not b!74859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!74909 () Bool)

(declare-fun e!40487 () Bool)

(declare-fun res!37004 () Bool)

(assert (=> b!74909 (= e!40487 res!37004)))

(assert (=> b!74909 true))

(declare-fun b!74910 () Bool)

(declare-fun e!40475 () Bool)

(declare-fun e!40480 () Bool)

(assert (=> b!74910 (= e!40475 e!40480)))

(declare-fun lt!16215 () Bool)

(declare-fun lt!16211 () Bool)

(declare-fun c!18341 () Bool)

(assert (=> b!74910 (= c!18341 (or (and lt!16215 lt!16211) (and (not lt!16215) (is-Implies!82 f!4611) lt!16211)))))

(declare-fun b!74911 () Bool)

(declare-fun e!40488 () Bool)

(declare-fun res!37009 () Bool)

(assert (=> b!74911 (= e!40488 res!37009)))

(assert (=> b!74911 true))

(declare-fun b!74912 () Bool)

(declare-fun e!40479 () Bool)

(assert (=> b!74912 (= e!40479 (or (and (is-Not!82 f!4611) (is-Literal!76 (f!4684 f!4611))) (not (is-Not!82 f!4611))))))

(declare-fun b!74913 () Bool)

(declare-fun lt!16212 () Bool)

(assert (=> b!74913 (= e!40480 lt!16212)))

(declare-fun b!74914 () Bool)

(declare-fun e!40476 () Bool)

(declare-fun lt!16208 () Bool)

(assert (=> b!74914 (= e!40476 (and lt!16208 lt!16212))))

(declare-fun b!74915 () Bool)

(assert (=> b!74915 (= e!40476 e!40479)))

(declare-fun c!18342 () Bool)

(assert (=> b!74915 (= c!18342 (or lt!16215 (is-Implies!82 f!4611)))))

(declare-fun e!40482 () Bool)

(assert (=> b!74915 (= lt!16211 e!40482)))

(declare-fun c!18346 () Bool)

(assert (=> b!74915 (= c!18346 (or lt!16215 (is-Implies!82 f!4611)))))

(assert (=> b!74915 (= lt!16215 (is-Or!82 f!4611))))

(declare-fun b!74916 () Bool)

(declare-fun e!40477 () Bool)

(declare-fun res!37005 () Bool)

(assert (=> b!74916 (= e!40477 res!37005)))

(assert (=> b!74916 true))

(declare-fun b!74917 () Bool)

(declare-fun res!37007 () Bool)

(assert (=> b!74917 (= e!40480 res!37007)))

(assert (=> b!74917 true))

(assert (=> b!74917 true))

(declare-fun e!40484 () Bool)

(declare-fun lt!16209 () Bool)

(declare-fun b!74918 () Bool)

(declare-fun lt!16214 () Bool)

(assert (=> b!74918 (= e!40484 (or (and lt!16214 lt!16209) (and (not lt!16214) (is-Implies!82 f!4611) lt!16209)))))

(declare-fun e!40481 () Bool)

(assert (=> b!74918 (= lt!16209 e!40481)))

(declare-fun c!18343 () Bool)

(assert (=> b!74918 (= c!18343 (or lt!16214 (is-Implies!82 f!4611)))))

(assert (=> b!74918 (= lt!16214 (is-Or!82 f!4611))))

(declare-fun b!74919 () Bool)

(declare-fun e!40486 () Formula!78)

(assert (=> b!74919 (= e!40477 (isNNF!0 e!40486))))

(declare-fun c!18344 () Bool)

(declare-fun lt!16207 () Bool)

(assert (=> b!74919 (= c!18344 lt!16207)))

(declare-fun b!74920 () Bool)

(assert (=> b!74920 (= e!40488 lt!16208)))

(declare-fun b!74921 () Bool)

(assert (=> b!74921 (= e!40482 lt!16208)))

(declare-fun b!74922 () Bool)

(declare-fun e!40485 () Formula!78)

(assert (=> b!74922 (= e!40485 (rhs!1347 f!4611))))

(declare-fun b!74923 () Bool)

(declare-fun e!40483 () Bool)

(assert (=> b!74923 (= e!40483 e!40484)))

(declare-fun res!37013 () Bool)

(assert (=> b!74923 (=> (not res!37013) (not e!40484))))

(declare-fun lt!16210 () Bool)

(assert (=> b!74923 (= res!37013 (not lt!16210))))

(declare-fun b!74924 () Bool)

(assert (=> b!74924 (= e!40479 e!40475)))

(declare-fun res!37010 () Bool)

(assert (=> b!74924 (=> (not res!37010) (not e!40475))))

(assert (=> b!74924 (= res!37010 lt!16211)))

(declare-fun b!74925 () Bool)

(declare-fun res!37008 () Bool)

(assert (=> b!74925 (= e!40481 res!37008)))

(assert (=> b!74925 true))

(declare-fun b!74926 () Bool)

(assert (=> b!74926 (= e!40485 (rhs!1349 f!4611))))

(declare-fun b!74927 () Bool)

(assert (=> b!74927 (= e!40481 lt!16208)))

(declare-fun d!54819 () Bool)

(declare-fun c!18338 () Bool)

(assert (=> d!54819 (= c!18338 lt!16210)))

(assert (=> d!54819 (= lt!16212 e!40477)))

(declare-fun c!18339 () Bool)

(assert (=> d!54819 (= c!18339 e!40483)))

(declare-fun res!37012 () Bool)

(assert (=> d!54819 (=> res!37012 e!40483)))

(assert (=> d!54819 (= res!37012 lt!16207)))

(assert (=> d!54819 (= lt!16207 (and lt!16210 lt!16208))))

(assert (=> d!54819 (= lt!16208 e!40487)))

(declare-fun c!18340 () Bool)

(assert (=> d!54819 (= c!18340 (or lt!16210 (is-Or!82 f!4611) (is-Implies!82 f!4611)))))

(assert (=> d!54819 (= lt!16210 (is-And!82 f!4611))))

(assert (=> d!54819 (= (isNNF!0 f!4611) e!40476)))

(declare-fun b!74928 () Bool)

(declare-fun e!40478 () Bool)

(assert (=> b!74928 (= e!40478 e!40488)))

(declare-fun c!18345 () Bool)

(declare-fun lt!16213 () Bool)

(assert (=> b!74928 (= c!18345 (or lt!16213 (is-Implies!82 f!4611)))))

(declare-fun b!74929 () Bool)

(assert (=> b!74929 (= e!40487 (isNNF!0 (ite lt!16210 (lhs!1348 f!4611) (ite (is-Or!82 f!4611) (lhs!1349 f!4611) (lhs!1347 f!4611)))))))

(declare-fun b!74930 () Bool)

(declare-fun res!37011 () Bool)

(assert (=> b!74930 (= e!40482 res!37011)))

(assert (=> b!74930 true))

(declare-fun b!74931 () Bool)

(assert (=> b!74931 (= e!40486 e!40485)))

(declare-fun c!18347 () Bool)

(assert (=> b!74931 (= c!18347 e!40478)))

(declare-fun res!37006 () Bool)

(assert (=> b!74931 (=> (not res!37006) (not e!40478))))

(assert (=> b!74931 (= res!37006 lt!16213)))

(assert (=> b!74931 (= lt!16213 (is-Or!82 f!4611))))

(declare-fun b!74932 () Bool)

(assert (=> b!74932 (= e!40486 (rhs!1348 f!4611))))

(assert (= (and d!54819 c!18340) b!74929))

(assert (= (and d!54819 (not c!18340)) b!74909))

(assert (= (and d!54819 (not res!37012)) b!74923))

(assert (= (and b!74923 res!37013) b!74918))

(assert (= (and b!74918 c!18343) b!74927))

(assert (= (and b!74918 (not c!18343)) b!74925))

(assert (= (and b!74931 res!37006) b!74928))

(assert (= (and b!74928 c!18345) b!74920))

(assert (= (and b!74928 (not c!18345)) b!74911))

(assert (= (and b!74931 c!18347) b!74926))

(assert (= (and b!74931 (not c!18347)) b!74922))

(assert (= (and b!74919 c!18344) b!74932))

(assert (= (and b!74919 (not c!18344)) b!74931))

(assert (= (and d!54819 c!18339) b!74919))

(assert (= (and d!54819 (not c!18339)) b!74916))

(assert (= (and b!74915 c!18346) b!74921))

(assert (= (and b!74915 (not c!18346)) b!74930))

(assert (= (and b!74924 res!37010) b!74910))

(assert (= (and b!74910 c!18341) b!74913))

(assert (= (and b!74910 (not c!18341)) b!74917))

(assert (= (and b!74915 c!18342) b!74924))

(assert (= (and b!74915 (not c!18342)) b!74912))

(assert (= (and d!54819 c!18338) b!74914))

(assert (= (and d!54819 (not c!18338)) b!74915))

(declare-fun m!73006 () Bool)

(assert (=> b!74919 m!73006))

(declare-fun m!73008 () Bool)

(assert (=> b!74929 m!73008))

(assert (=> start!10242 d!54819))

(declare-fun b!74997 () Bool)

(declare-fun e!40534 () Formula!78)

(declare-fun lt!16254 () Formula!78)

(declare-fun lt!16252 () Formula!78)

(assert (=> b!74997 (= e!40534 (And!82 lt!16254 lt!16252))))

(declare-fun b!74998 () Bool)

(declare-fun e!40524 () Formula!78)

(declare-fun lt!16260 () Formula!78)

(declare-fun lt!16269 () Formula!78)

(assert (=> b!74998 (= e!40524 (Or!82 lt!16260 lt!16269))))

(declare-fun b!74999 () Bool)

(declare-fun e!40536 () Formula!78)

(declare-fun res!37071 () Formula!78)

(assert (=> b!74999 (= e!40536 res!37071)))

(assert (=> b!74999 true))

(assert (=> b!74999 true))

(declare-fun b!75000 () Bool)

(declare-fun e!40528 () Formula!78)

(declare-fun lt!16257 () Formula!78)

(assert (=> b!75000 (= e!40528 lt!16257)))

(declare-fun b!75001 () Bool)

(declare-fun e!40525 () Formula!78)

(assert (=> b!75001 (= e!40525 e!40524)))

(declare-fun c!18381 () Bool)

(declare-fun lt!16265 () Bool)

(assert (=> b!75001 (= c!18381 lt!16265)))

(assert (=> b!75001 (= lt!16269 e!40528)))

(declare-fun c!18382 () Bool)

(assert (=> b!75001 (= c!18382 (or lt!16265 (is-Implies!82 f!4611) (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611)))))))

(declare-fun e!40531 () Formula!78)

(assert (=> b!75001 (= lt!16260 e!40531)))

(declare-fun c!18384 () Bool)

(assert (=> b!75001 (= c!18384 (or lt!16265 (is-Implies!82 f!4611) (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611)))))))

(assert (=> b!75001 (= lt!16265 (is-Or!82 f!4611))))

(declare-fun b!75002 () Bool)

(declare-fun e!40521 () Formula!78)

(declare-fun res!37073 () Formula!78)

(assert (=> b!75002 (= e!40521 res!37073)))

(assert (=> b!75002 true))

(declare-fun b!75003 () Bool)

(declare-fun e!40526 () Formula!78)

(assert (=> b!75003 (= e!40526 e!40534)))

(declare-fun c!18385 () Bool)

(declare-fun lt!16256 () Bool)

(assert (=> b!75003 (= c!18385 lt!16256)))

(declare-fun e!40529 () Formula!78)

(assert (=> b!75003 (= lt!16252 e!40529)))

(declare-fun c!18392 () Bool)

(assert (=> b!75003 (= c!18392 (or lt!16256 (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611)))))))

(declare-fun e!40527 () Formula!78)

(assert (=> b!75003 (= lt!16254 e!40527)))

(declare-fun c!18383 () Bool)

(assert (=> b!75003 (= c!18383 (or lt!16256 (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611)))))))

(assert (=> b!75003 (= lt!16256 (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))))))

(declare-fun d!54821 () Bool)

(declare-fun lt!16253 () Formula!78)

(assert (=> d!54821 (isNNF!0 lt!16253)))

(assert (=> d!54821 (= lt!16253 e!40525)))

(declare-fun c!18388 () Bool)

(declare-fun lt!16264 () Bool)

(assert (=> d!54821 (= c!18388 lt!16264)))

(declare-fun e!40523 () Formula!78)

(assert (=> d!54821 (= lt!16257 e!40523)))

(declare-fun c!18390 () Bool)

(assert (=> d!54821 (= c!18390 (or lt!16264 (is-Or!82 f!4611) (is-Implies!82 f!4611) (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611)))))))

(declare-fun lt!16262 () Formula!78)

(declare-fun e!40522 () Formula!78)

(assert (=> d!54821 (= lt!16262 e!40522)))

(declare-fun c!18395 () Bool)

(assert (=> d!54821 (= c!18395 (or lt!16264 (is-Or!82 f!4611) (is-Implies!82 f!4611) (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611)))))))

(assert (=> d!54821 (= lt!16264 (is-And!82 f!4611))))

(assert (=> d!54821 (= (nnf!0 f!4611) lt!16253)))

(declare-fun b!75004 () Bool)

(declare-fun e!40532 () Formula!78)

(declare-fun res!37069 () Formula!78)

(assert (=> b!75004 (= e!40532 res!37069)))

(assert (=> b!75004 true))

(declare-fun b!75005 () Bool)

(assert (=> b!75005 (= e!40525 (And!82 lt!16262 lt!16257))))

(declare-fun b!75006 () Bool)

(declare-fun lt!16266 () Formula!78)

(declare-fun lt!16255 () Formula!78)

(assert (=> b!75006 (= e!40526 (Or!82 lt!16266 lt!16255))))

(declare-fun b!75007 () Bool)

(assert (=> b!75007 (= e!40536 lt!16254)))

(declare-fun b!75008 () Bool)

(declare-fun res!37074 () Formula!78)

(assert (=> b!75008 (= e!40523 res!37074)))

(assert (=> b!75008 true))

(declare-fun b!75009 () Bool)

(declare-fun res!37076 () Formula!78)

(assert (=> b!75009 (= e!40529 res!37076)))

(assert (=> b!75009 true))

(declare-fun b!75010 () Bool)

(declare-fun e!40530 () Formula!78)

(declare-fun res!37070 () Formula!78)

(assert (=> b!75010 (= e!40530 res!37070)))

(assert (=> b!75010 true))

(declare-fun b!75011 () Bool)

(declare-fun e!40535 () Formula!78)

(assert (=> b!75011 (= e!40535 e!40526)))

(declare-fun c!18386 () Bool)

(declare-fun lt!16267 () Bool)

(assert (=> b!75011 (= c!18386 lt!16267)))

(assert (=> b!75011 (= lt!16255 e!40532)))

(declare-fun c!18391 () Bool)

(assert (=> b!75011 (= c!18391 (or lt!16267 (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611)))))))

(assert (=> b!75011 (= lt!16266 e!40521)))

(declare-fun c!18393 () Bool)

(assert (=> b!75011 (= c!18393 (or lt!16267 (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611)))))))

(assert (=> b!75011 (= lt!16267 (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))))))

(declare-fun b!75012 () Bool)

(assert (=> b!75012 (= e!40524 e!40535)))

(declare-fun c!18380 () Bool)

(declare-fun lt!16268 () Bool)

(assert (=> b!75012 (= c!18380 lt!16268)))

(declare-fun lt!16259 () Formula!78)

(declare-fun e!40533 () Formula!78)

(assert (=> b!75012 (= lt!16259 e!40533)))

(declare-fun c!18387 () Bool)

(assert (=> b!75012 (= c!18387 (or lt!16268 (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611)))))))

(declare-fun lt!16261 () Formula!78)

(assert (=> b!75012 (= lt!16261 e!40530)))

(declare-fun c!18389 () Bool)

(assert (=> b!75012 (= c!18389 (or lt!16268 (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))) (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611)))))))

(assert (=> b!75012 (= lt!16268 (is-Implies!82 f!4611))))

(declare-fun b!75013 () Bool)

(assert (=> b!75013 (= e!40535 (Implies!82 lt!16261 lt!16259))))

(declare-fun b!75014 () Bool)

(declare-fun lt!16263 () Bool)

(declare-fun lt!16258 () Formula!78)

(assert (=> b!75014 (= e!40534 (ite lt!16263 (And!82 lt!16258 lt!16252) (ite (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611))) lt!16258 f!4611)))))

(assert (=> b!75014 (= lt!16258 e!40536)))

(declare-fun c!18394 () Bool)

(assert (=> b!75014 (= c!18394 (or lt!16263 (and (is-Not!82 f!4611) (is-Not!82 (f!4684 f!4611)))))))

(assert (=> b!75014 (= lt!16263 (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))))))

(declare-fun b!75015 () Bool)

(declare-fun res!37078 () Formula!78)

(assert (=> b!75015 (= e!40527 res!37078)))

(assert (=> b!75015 true))

(declare-fun b!75016 () Bool)

(assert (=> b!75016 (= e!40527 lt!16266)))

(declare-fun b!75017 () Bool)

(declare-fun res!37075 () Formula!78)

(assert (=> b!75017 (= e!40522 res!37075)))

(assert (=> b!75017 true))

(declare-fun b!75018 () Bool)

(assert (=> b!75018 (= e!40532 lt!16259)))

(declare-fun b!75019 () Bool)

(assert (=> b!75019 (= e!40531 lt!16262)))

(declare-fun b!75020 () Bool)

(assert (=> b!75020 (= e!40533 lt!16269)))

(declare-fun b!75021 () Bool)

(declare-fun res!37077 () Formula!78)

(assert (=> b!75021 (= e!40531 res!37077)))

(assert (=> b!75021 true))

(declare-fun b!75022 () Bool)

(assert (=> b!75022 (= e!40529 lt!16255)))

(declare-fun b!75023 () Bool)

(assert (=> b!75023 (= e!40530 lt!16260)))

(declare-fun b!75024 () Bool)

(assert (=> b!75024 (= e!40521 lt!16261)))

(declare-fun b!75025 () Bool)

(assert (=> b!75025 (= e!40522 (nnf!0 (ite lt!16264 (lhs!1348 f!4611) (ite (is-Or!82 f!4611) (lhs!1349 f!4611) (ite (is-Implies!82 f!4611) (lhs!1347 f!4611) (ite (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (Not!82 (lhs!1348 (f!4684 f!4611))) (ite (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (Not!82 (lhs!1349 (f!4684 f!4611))) (ite (and (is-Not!82 f!4611) (is-Implies!82 (f!4684 f!4611))) (lhs!1347 (f!4684 f!4611)) (f!4684 (f!4684 f!4611))))))))))))

(declare-fun b!75026 () Bool)

(declare-fun res!37072 () Formula!78)

(assert (=> b!75026 (= e!40533 res!37072)))

(assert (=> b!75026 true))

(declare-fun b!75027 () Bool)

(declare-fun res!37079 () Formula!78)

(assert (=> b!75027 (= e!40528 res!37079)))

(assert (=> b!75027 true))

(declare-fun b!75028 () Bool)

(assert (=> b!75028 (= e!40523 (nnf!0 (ite lt!16264 (rhs!1348 f!4611) (ite (is-Or!82 f!4611) (rhs!1349 f!4611) (ite (is-Implies!82 f!4611) (rhs!1347 f!4611) (ite (and (is-Not!82 f!4611) (is-And!82 (f!4684 f!4611))) (Not!82 (rhs!1348 (f!4684 f!4611))) (ite (and (is-Not!82 f!4611) (is-Or!82 (f!4684 f!4611))) (Not!82 (rhs!1349 (f!4684 f!4611))) (Not!82 (rhs!1347 (f!4684 f!4611))))))))))))

(assert (= (and d!54821 c!18395) b!75025))

(assert (= (and d!54821 (not c!18395)) b!75017))

(assert (= (and d!54821 c!18390) b!75028))

(assert (= (and d!54821 (not c!18390)) b!75008))

(assert (= (and b!75001 c!18384) b!75019))

(assert (= (and b!75001 (not c!18384)) b!75021))

(assert (= (and b!75001 c!18382) b!75000))

(assert (= (and b!75001 (not c!18382)) b!75027))

(assert (= (and b!75012 c!18389) b!75023))

(assert (= (and b!75012 (not c!18389)) b!75010))

(assert (= (and b!75012 c!18387) b!75020))

(assert (= (and b!75012 (not c!18387)) b!75026))

(assert (= (and b!75011 c!18393) b!75024))

(assert (= (and b!75011 (not c!18393)) b!75002))

(assert (= (and b!75011 c!18391) b!75018))

(assert (= (and b!75011 (not c!18391)) b!75004))

(assert (= (and b!75003 c!18383) b!75016))

(assert (= (and b!75003 (not c!18383)) b!75015))

(assert (= (and b!75003 c!18392) b!75022))

(assert (= (and b!75003 (not c!18392)) b!75009))

(assert (= (and b!75014 c!18394) b!75007))

(assert (= (and b!75014 (not c!18394)) b!74999))

(assert (= (and b!75003 c!18385) b!74997))

(assert (= (and b!75003 (not c!18385)) b!75014))

(assert (= (and b!75011 c!18386) b!75006))

(assert (= (and b!75011 (not c!18386)) b!75003))

(assert (= (and b!75012 c!18380) b!75013))

(assert (= (and b!75012 (not c!18380)) b!75011))

(assert (= (and b!75001 c!18381) b!74998))

(assert (= (and b!75001 (not c!18381)) b!75012))

(assert (= (and d!54821 c!18388) b!75005))

(assert (= (and d!54821 (not c!18388)) b!75001))

(declare-fun m!73010 () Bool)

(assert (=> d!54821 m!73010))

(declare-fun m!73012 () Bool)

(assert (=> b!75025 m!73012))

(declare-fun m!73014 () Bool)

(assert (=> b!75028 m!73014))

(assert (=> b!74860 d!54821))

(declare-fun b!75053 () Bool)

(declare-fun e!40550 () Bool)

(declare-fun lt!16283 () Bool)

(assert (=> b!75053 (= e!40550 (nnfIsStable!0 (ite lt!16283 (lhs!1347 (f!4684 f!4611)) (ite (is-And!82 (f!4684 f!4611)) (lhs!1348 (f!4684 f!4611)) (lhs!1349 (f!4684 f!4611))))))))

(declare-fun b!75054 () Bool)

(declare-fun res!37112 () Bool)

(assert (=> b!75054 (= e!40550 res!37112)))

(assert (=> b!75054 true))

(declare-fun b!75055 () Bool)

(declare-fun e!40554 () Bool)

(declare-fun e!40549 () Bool)

(assert (=> b!75055 (= e!40554 e!40549)))

(declare-fun c!18411 () Bool)

(declare-fun lt!16281 () Bool)

(assert (=> b!75055 (= c!18411 (or lt!16281 (is-Or!82 (f!4684 f!4611))))))

(assert (=> b!75055 (= lt!16281 (is-And!82 (f!4684 f!4611)))))

(declare-fun b!75056 () Bool)

(declare-fun e!40553 () Formula!78)

(assert (=> b!75056 (= e!40549 (= e!40553 (f!4684 f!4611)))))

(declare-fun c!18410 () Bool)

(assert (=> b!75056 (= c!18410 (or lt!16281 (is-Or!82 (f!4684 f!4611))))))

(declare-fun b!75057 () Bool)

(declare-fun e!40551 () Formula!78)

(declare-fun res!37110 () Formula!78)

(assert (=> b!75057 (= e!40551 res!37110)))

(assert (=> b!75057 true))

(declare-fun d!54823 () Bool)

(assert (=> d!54823 e!40554))

(declare-fun c!18408 () Bool)

(assert (=> d!54823 (= c!18408 lt!16283)))

(declare-fun lt!16282 () Formula!78)

(assert (=> d!54823 (= lt!16282 e!40551)))

(declare-fun c!18413 () Bool)

(assert (=> d!54823 (= c!18413 (or lt!16283 (is-And!82 (f!4684 f!4611)) (is-Or!82 (f!4684 f!4611))))))

(declare-fun lt!16280 () Bool)

(assert (=> d!54823 (= lt!16280 e!40550)))

(declare-fun c!18412 () Bool)

(assert (=> d!54823 (= c!18412 (or lt!16283 (is-And!82 (f!4684 f!4611)) (is-Or!82 (f!4684 f!4611))))))

(declare-fun lt!16284 () Bool)

(declare-fun e!40552 () Bool)

(assert (=> d!54823 (= lt!16284 e!40552)))

(declare-fun c!18409 () Bool)

(assert (=> d!54823 (= c!18409 (or lt!16283 (is-And!82 (f!4684 f!4611)) (is-Or!82 (f!4684 f!4611)) (not (is-Literal!76 (f!4684 f!4611)))))))

(assert (=> d!54823 (= lt!16283 (is-Implies!82 (f!4684 f!4611)))))

(assert (=> d!54823 (isNNF!0 (f!4684 f!4611))))

(assert (=> d!54823 (= (nnfIsStable!0 (f!4684 f!4611)) true)))

(declare-fun b!75058 () Bool)

(assert (=> b!75058 (= e!40552 (nnfIsStable!0 (ite lt!16283 (rhs!1347 (f!4684 f!4611)) (ite (is-And!82 (f!4684 f!4611)) (rhs!1348 (f!4684 f!4611)) (ite (is-Or!82 (f!4684 f!4611)) (rhs!1349 (f!4684 f!4611)) (f!4684 (f!4684 f!4611)))))))))

(declare-fun b!75059 () Bool)

(assert (=> b!75059 (= e!40554 (= lt!16282 (f!4684 f!4611)))))

(declare-fun b!75060 () Bool)

(assert (=> b!75060 (= e!40553 lt!16282)))

(declare-fun b!75061 () Bool)

(declare-fun res!37109 () Bool)

(assert (=> b!75061 (= e!40552 res!37109)))

(assert (=> b!75061 true))

(declare-fun b!75062 () Bool)

(assert (=> b!75062 (= e!40551 (nnf!0 (f!4684 f!4611)))))

(declare-fun b!75063 () Bool)

(declare-fun res!37111 () Formula!78)

(assert (=> b!75063 (= e!40553 res!37111)))

(assert (=> b!75063 true))

(assert (=> b!75063 true))

(declare-fun b!75064 () Bool)

(assert (=> b!75064 (= e!40549 (= (nnf!0 (f!4684 f!4611)) (f!4684 f!4611)))))

(assert (= (and d!54823 c!18409) b!75058))

(assert (= (and d!54823 (not c!18409)) b!75061))

(assert (= (and d!54823 c!18412) b!75053))

(assert (= (and d!54823 (not c!18412)) b!75054))

(assert (= (and d!54823 c!18413) b!75062))

(assert (= (and d!54823 (not c!18413)) b!75057))

(assert (= (and b!75056 c!18410) b!75060))

(assert (= (and b!75056 (not c!18410)) b!75063))

(assert (= (and b!75055 c!18411) b!75056))

(assert (= (and b!75055 (not c!18411)) b!75064))

(assert (= (and d!54823 c!18408) b!75059))

(assert (= (and d!54823 (not c!18408)) b!75055))

(declare-fun m!73016 () Bool)

(assert (=> b!75064 m!73016))

(declare-fun m!73018 () Bool)

(assert (=> d!54823 m!73018))

(declare-fun m!73020 () Bool)

(assert (=> b!75058 m!73020))

(declare-fun m!73022 () Bool)

(assert (=> b!75053 m!73022))

(assert (=> b!75062 m!73016))

(assert (=> b!74859 d!54823))

(push 1)

(assert (not b!75064))

(assert (not d!54823))

(assert (not b!74929))

(assert (not b!74919))

(assert (not d!54821))

(assert (not b!75062))

(assert (not b!75025))

(assert (not b!75058))

(assert (not b!75028))

(assert (not b!75053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

