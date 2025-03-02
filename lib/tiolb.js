;var lbh = 0;(_=>{
let hc={'<':'&lt;','&':'&amp;',"'":'&apos;','"':'&quot;'},he=x=>x.replace(/[<&'"]/g,c=>hc[c]) //html chars and escape fn
,tcs='<-←xx×/\\×:-÷*O⍟○*⍟[-⌹-]⌹⎕÷⌹[÷⌹]÷⌹OO○77⌈FF⌈ll⌊LL⌊T_⌶II⌶⊥⊤⌶|_⊥TT⊤-|⊣|-⊢=/≠L-≠<=≤<_≤>=≥>_≥==≡=_≡7=≢Z-≢≠_≢vv∨^^∧^~⍲∧~⍲v~⍱∨~⍱^|↑v|↓((⊂cc⊂(_⊆c_⊆⊂_⊆))⊃[|⌷|]⌷A|⍋∆|⍋V|⍒∇|⍒ii⍳i_⍸⍳_⍸ee∊e_⍷∊_⍷'+
'uu∪UU∪nn∩/-⌿\\-⍀,-⍪rr⍴pp⍴O|⌽○|⌽O-⊖○-⊖O\\⍉○\\⍉::¨""¨~:⍨~"⍨~¨⍨*:⍣*"⍣*¨⍣oo∘o:⍤o"⍤∘¨⍤∘"⍤o¨⍤O:⍥O"⍥○¨⍥○"⍥O¨⍥[\'⍞\']⍞⎕\'⍞[]⎕[:⍠:]⍠⎕:⍠[=⌸=]⌸⎕=⌸[<⌺>]⌺[⋄⌺⋄]⌺⎕⋄⌺o⊥⍎∘⊥⍎⍛|⍎oT⍕o-⍕o⊤⍕∘⊤⍕<>⋄^v⋄on⍝o∩⍝∘n⍝->→aa⍺ww⍵VV∇v-∇--¯0~⍬'+
'AA∆^-∆A_⍙∆_⍙^=⍙[?⍰?]⍰⎕?⍰:V⍢∇"⍢V¨⍢"∇⍢||∥ox¤o×¤∘x¤∘×¤)_⊇_)⊇⊃_⊇V~⍫∇~⍫\'\'`o_⍛∘_⍛'
,lbs=['←←\nASSIGN\nhttps://help.dyalog.com/latest/#Language/Introduction/Language%20Elements.htm',' ','++\nconjugate\nplus\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/01%20Plus.htm','--\nnegate\nminus\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/02%20Minus.htm','××\ndirection\ntimes\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/03%20Times.htm','÷÷\nreciprocal\ndivide\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/04%20Divide.htm','**\nexponential\npower\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/05%20Power.htm','⍟⍟\nnatural logarithm\nlogarithm\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/06%20Logarithm.htm',
'⌹⌹\nmatrix inverse\nmatrix divide\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/07%20Matrix%20Divide.htm','○○\npi times\ncircular\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/08%20Circle.htm','!!\nfactorial\nbinomial\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/09%20Factorial.htm','??\nroll\ndeal\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/10%20Roll.htm',' ','||\nmagnitude\nresidue\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/11%20Magnitude.htm',
'⌈⌈\nceiling\nmaximum\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/12%20Ceiling.htm','⌊⌊\nfloor\nminimum\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/13%20Floor.htm','⊥⊥\ndecode\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/14%20Decode.htm','⊤⊤\nencode\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/15%20Encode.htm','⊣⊣\nsame\nleft\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/16%20Left.htm','⊢⊢\nsame\nright\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/17%20Right.htm',' ','==\nequal\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/18%20Equal.htm','≠≠\nunique mask\nnot equal\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/19%20Not%20Equal.htm',
'≤≤\nless than or equal to\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/20%20Less%20Than%20Or%20Equal.htm','<<\nless than\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/21%20Less%20Than.htm','>>\ngreater than\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/22%20Greater%20Than.htm','≥≥\ngreater than or equal to\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/23%20Greater%20Than%20Or%20Equal.htm','≡≡\ndepth\nmatch\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/24%20Match.htm','≢≢\ntally\nnot match\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/25%20Not%20Match.htm',' ','∨∨\ngreatest common divisor/or\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/26%20Or.htm',
'∧∧\nlowest common multiple/and\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/27%20And.htm','⍲⍲\nnand\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/28%20Nand.htm','⍱⍱\nnor\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/29%20Nor.htm',' ','↑↑\nmix\ntake\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/30%20Take.htm','↓↓\nsplit\ndrop\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/31%20Drop.htm','⊂⊂\nenclose\npartioned enclose\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/32%20Enclose.htm','⊃⊃\nfirst\npick\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/33%20Pick.htm','⊆⊆\nnest\npartition\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/34%20Partition.htm','⌷⌷\nindex\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/35%20Index.htm','⍋⍋\ngrade up\ngrade up\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/36%20Grade%20Up.htm',
'⍒⍒\ngrade down\ngrade down\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/37%20Grade%20Down.htm',' ','⍳⍳\nindices\nindices of\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/38%20Index%20Of.htm','⍸⍸\nwhere\ninterval index\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/39%20Interval%20Index.htm','∊∊\nenlist\nmember of\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/40%20Member%20Of.htm','⍷⍷\nfind\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/41%20Find.htm','∪∪\nunique\nunion\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/42%20Union.htm','∩∩\nintersection\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/43%20Intersection.htm','~~\nnot\nwithout\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/44%20Without.htm',' ',
'//\nreplicate\nReduce\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/45%20Reduce.htm','\\\\\n\expand\nScan\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/46%20Scan.htm','⌿⌿\nreplicate first\nReduce First\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/47%20Reduce%20First.htm','⍀⍀\nexpand first\nScan First\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/48%20Scan%20First.htm',' ',',,\nravel\ncatenate/laminate\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/49%20Catenate.htm',
'⍪⍪\ntable\ncatenate first/laminate\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/50%20Catenate%20First.htm','⍴⍴\nshape\nreshape\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/51%20Reshape.htm','⌽⌽\nreverse\nrotate\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/52%20Rotate.htm','⊖⊖\nreverse first\nrotate first\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/53%20Rotate%20First.htm',
'⍉⍉\ntranspose\nreorder axes\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/54%20Transpose.htm',' ','¨¨\nEach\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/55%20Each.htm','⍨⍨\nConstant\nSelf\nSwap\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/56%20Self.htm','⍣⍣\nRepeat\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/57%20Repeat.htm','..\nOuter Product (∘.)\nInner Product\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/58%20Inner%20Product.htm',
'∘∘\nOUTER PRODUCT (∘.)\nCurry\nCompose\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/59%20Compose.htm','⍤⍤\nRank\nAtop\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/60%20Atop.htm','⍥⍥\nOver\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/61%20Over.htm','@@\nAt\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/62%20At.htm',' ','⎕⎕\nSYSTEM NAME\nhttps://help.dyalog.com/latest/#Language/System%20Functions.htm','⍠⍠\nVariant\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/63%20Variant.htm',
'⌸⌸\nIndex Key\nKey\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/64%20Key.htm','⌺⌺\nStencil\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/65%20Stencil.htm','⌶⌶\nI-Beam\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/66%20I-Beam.htm','⍎⍎\nexecute\nhttps://help.dyalog.com/latest/#Language/System%20Functions/67%20Execute.htm','⍕⍕\nformat\nhttps://help.dyalog.com/latest/#Language/System%20Functions/68%20Format.htm',' ','⋄⋄\nSTATEMENT SEPARATOR\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/69%20Statement%20Separator.htm','⍝⍝\nCOMMENT\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/70%20Comment.htm','⍵⍵\nRIGHT ARGUMENT\nRIGHT OPERAND (⍵⍵)\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/71%20Right%20Argument.htm','⍺⍺\nLEFT ARGUMENT\nLEFT OPERAND (⍺⍺)\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/72%20Left%20Argument.htm',
'∇∇\nrecursion\nRecursion (∇∇)\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/73%20Recursion.htm',' ','¯¯\nNEGATIVE\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/74%20Negative.htm','⍬⍬\nEMPTY NUMERIC VECTOR\nhttps://help.dyalog.com/latest/#Language/Primitive%20Functions/75%20Empty%20Numeric%20Vector.htm']
,bqk=' =1234567890-qwertyuiop\\asdfghjk∙l;\'zxcvbnm,./`[]+!@#$%^&*()_QWERTYUIOP|ASDFGHJKL:"ZXCVBNM<>?~{}'.replace(/∙/g,'')
,bqv='`÷¨¯<≤=≥>≠∨∧×?⍵∊⍴~↑↓⍳○*⊢∙⍺⌈⌊_∇∆∘\'⎕⍎⍕∙⊂⊃∩∪⊥⊤|⍝⍀⌿⋄←→⌹⌶⍫⍒⍋⌽⍉⊖⍟⍱⍲!⍰W⍷R⍨YU⍸⍥⍣⊣ASD⍛⍢H⍤⌸⌷≡≢⊆⊇CVB¤∥⍪⍙⍠⌺⍞⍬'.replace(/∙/g,'')
,tc={},bqc={} //tab completions and ` completions
for(let i=0;i<bqk.length;i++)bqc[bqk[i]]=bqv[i]
for(let i=0;i<tcs.length;i+=3)tc[tcs[i]+tcs[i+1]]=tcs[i+2]
for(let i=0;i<tcs.length;i+=3){let k=tcs[i+1]+tcs[i];tc[k]=tc[k]||tcs[i+2]}
lbh='';for(let i=0;i<lbs.length;i++){
  let ks=[]
  for(let j=0;j<tcs.length;j+=3)if(lbs[i][0]===tcs[j+2])ks.push('\nTab: '+tcs[j]+' '+tcs[j+1]+' <tab>')
  for(let j=0;j<bqk.length;j++)if(lbs[i][0]===bqv[j])ks.push('\nPrefix: <prefix> '+bqk[j])
  lbh+='<b title="'+he(lbs[i].slice(1)+(ks.length?'\n'+ks.join(''):''))+'">'+lbs[i][0]+'</b>'
}
let d=document,el=d.createElement('div');el.innerHTML=`<div class=ngn_lb>${lbh}</div>`
d.getElementById("rightPane").appendChild(el)
let t,ts=[],lb=el.firstChild,bqm=0 //t:textarea or input, lb:language bar, bqm:backquote mode
let pd=x=>x.preventDefault()
let ev=(x,t,f,c)=>x.addEventListener(t,f,c)
ev(lb,'mousedown',x=>{
  //if(x.target.classList.contains('ngn_x')){hide();upd();pd(x);return}
  if(x.target.nodeName==='B'&&t){
    let i=t.selectionStart,j=t.selectionEnd,v=t.value,s=x.target.textContent
    if(i!=null&&j!=null){t.value=v.slice(0,i)+s+v.slice(j);t.selectionStart=t.selectionEnd=i+s.length}
    pd(x);return
  }
})
let fk=x=>{
  let t=x.target
  if(bqm){let i=t.selectionStart,v=t.value,c=bqc[x.key];if(x.which>31){bqm=0;d.body.classList.remove('ngn_bq')}
          if(c){t.value=v.slice(0,i)+c+v.slice(i);t.selectionStart=t.selectionEnd=i+1;pd(x);return!1}}
  if (!x.ctrlKey && !x.shiftKey && !x.altKey && !x.metaKey) {
    if ("`½²^º§ùµ°".indexOf(x.key) > -1) {
      bqm=1;d.body.classList.add('ngn_bq');pd(x); // ` or other trigger symbol pressed, wait for next key
    } else if (x.key == "Tab") {
      let i=t.selectionStart,v=t.value,c=tc[v.slice(i-2,i)]
      if(c){t.value=v.slice(0,i-2)+c+v.slice(i);t.selectionStart=t.selectionEnd=i-1;pd(x)}
    } else if (bqm && x.key == "Backspace") {bqm=0;pd(x);d.body.classList.remove('ngn_bq') }
  }
}
let ff=x=>{
  let t0=x.target,nn=t0.nodeName.toLowerCase()
  if(nn!=='textarea'&&(nn!=='input'||t0.type!=='text'&&t0.type!=='search'))return
  t=t0;if(!t.ngn){t.ngn=1;ts.push(t);ev(t,'keydown',fk)}
}
let upd=_=>{
  d.body.style.marginTop=lb.clientHeight+'px';
  //session.style.height="calc(92vh - 8px - " + lb.clientHeight+'px)';
	rightPane.style.height="calc(100vh - " + lb.clientHeight+'px)';
  linkIcon.style.top="calc(0.5em + "+lb.clientHeight+'px)';
  $$(".content").forEach(fn=node=>{
    if ((node.id === "learn")&&(node.getAttribute("data-in_notebook") === "yes")) {
      node.style.height="calc(100vh - 2px - " + lb.clientHeight+'px)';
    } else {
      node.style.height="calc(100vh - 3em + -1px - " + lb.clientHeight+'px)';
    }
  });
  checkPaneWidth(leftPane.clientWidth);
  if(fs){splitPanes.setSizes([0,100])};
}
upd();ev(window,'resize',upd)
ev(d,'focus',ff,!0);let ae=d.activeElement;ae&&ff({type:'focus',target:ae})
})();
show=_=>{document.querySelector(".ngn_lb").style.display = ''
          session.style.height="calc(-58px + 100vh)"
          document.querySelector("body").style["margin-top"]="58px"
         }
hide=_=>{document.querySelector(".ngn_lb").style.display = 'none'
         session.style.height="100vh"
         document.querySelector("body").style["margin-top"]="0"
        }
