;var lbh = 0;(_=>{
let hc={'<':'&lt;','&':'&amp;',"'":'&apos;','"':'&quot;'},he=x=>x.replace(/[<&'"]/g,c=>hc[c]) //html chars and escape fn
,tcs='<-←xx×/\\×:-÷*O⍟○*⍟[-⌹-]⌹⎕÷⌹[÷⌹]÷⌹OO○77⌈FF⌈ll⌊LL⌊T_⌶II⌶⊥⊤⌶|_⊥TT⊤-|⊣|-⊢=/≠L-≠<=≤<_≤>=≥>_≥==≡=_≡7=≢Z-≢≠_≢vv∨^^∧^~⍲∧~⍲v~⍱∨~⍱^|↑v|↓((⊂cc⊂(_⊆c_⊆⊂_⊆))⊃[|⌷|]⌷A|⍋∆|⍋V|⍒∇|⍒ii⍳i_⍸⍳_⍸ee∊e_⍷∊_⍷'+
'uu∪UU∪nn∩/-⌿\\-⍀,-⍪rr⍴pp⍴O|⌽○|⌽O-⊖○-⊖O\\⍉○\\⍉::¨""¨~:⍨~"⍨~¨⍨*:⍣*"⍣*¨⍣oo∘o:⍤o"⍤∘¨⍤∘"⍤o¨⍤O:⍥O"⍥○¨⍥○"⍥O¨⍥[\'⍞\']⍞⎕\'⍞[]⎕[:⍠:]⍠⎕:⍠[=⌸=]⌸⎕=⌸[<⌺>]⌺[⋄⌺⋄]⌺⎕⋄⌺o⊥⍎∘⊥⍎⍛|⍎oT⍕o-⍕o⊤⍕∘⊤⍕<>⋄^v⋄on⍝o∩⍝∘n⍝->→aa⍺ww⍵VV∇v-∇--¯0~⍬'+
'AA∆^-∆A_⍙∆_⍙^=⍙[?⍰?]⍰⎕?⍰:V⍢∇"⍢V¨⍢"∇⍢||∥ox¤o×¤∘x¤∘×¤)_⊇_)⊇⊃_⊇V~⍫∇~⍫\'\'`o_⍛∘_⍛'
,lbs=['←←\nASSIGN',' ','++\nconjugate\nplus','--\nnegate\nminus','××\ndirection\ntimes','÷÷\nreciprocal\ndivide','**\nexponential\npower','⍟⍟\nnatural logarithm\nlogarithm',
'⌹⌹\nmatrix inverse\nmatrix divide','○○\npi times\ncircular','!!\nfactorial\nbinomial','??\nroll\ndeal',' ','||\nmagnitude\nresidue',
'⌈⌈\nceiling\nmaximum','⌊⌊\nfloor\nminimum','⊥⊥\ndecode','⊤⊤\nencode','⊣⊣\nsame\nleft','⊢⊢\nsame\nright',' ','==\nequal','≠≠\nunique mask\nnot equal',
'≤≤\nless than or equal to','<<\nless than','>>\ngreater than','≥≥\ngreater than or equal to','≡≡\ndepth\nmatch','≢≢\ntally\nnot match',' ','∨∨\ngreatest common divisor/or',
'∧∧\nlowest common multiple/and','⍲⍲\nnand','⍱⍱\nnor',' ','↑↑\nmix\ntake','↓↓\nsplit\ndrop','⊂⊂\nenclose\npartioned enclose','⊃⊃\nfirst\npick','⊆⊆\nnest\npartition','⌷⌷\nindex','⍋⍋\ngrade up\ngrade up',
'⍒⍒\ngrade down\ngrade down',' ','⍳⍳\nindices\nindices of','⍸⍸\nwhere\ninterval index','∊∊\nenlist\nmember of','⍷⍷\nfind','∪∪\nunique\nunion','∩∩\nintersection','~~\nnot\nwithout',' ',
'//\nreplicate\nReduce','\\\\\n\expand\nScan','⌿⌿\nreplicate first\nReduce First','⍀⍀\nexpand first\nScan First',' ',',,\nravel\ncatenate/laminate',
'⍪⍪\ntable\ncatenate first/laminate','⍴⍴\nshape\nreshape','⌽⌽\nreverse\nrotate','⊖⊖\nreverse first\nrotate first',
'⍉⍉\ntranspose\nreorder axes',' ','¨¨\nEach','⍨⍨\nConstant\nSelf\nSwap','⍣⍣\nRepeat','..\nOuter Product (∘.)\nInner Product',
'∘∘\nOUTER PRODUCT (∘.)\nCurry\nCompose','⍤⍤\nRank\nAtop','⍥⍥\nOver','@@\nAt',' ','⎕⎕\nSYSTEM NAME','⍠⍠\nVariant',
'⌸⌸\nIndex Key\nKey\n','⌺⌺\nStencil','⌶⌶\nI-Beam','⍎⍎\nexecute','⍕⍕\nformat',' ','⋄⋄\nSTATEMENT SEPARATOR','⍝⍝\nCOMMENT','⍵⍵\nRIGHT ARGUMENT\nRIGHT OPERAND (⍵⍵)','⍺⍺\nLEFT ARGUMENT\nLEFT OPERAND (⍺⍺)',
'∇∇\nrecursion\nRecursion (∇∇)',' ','¯¯\nNEGATIVE','⍬⍬\nEMPTY NUMERIC VECTOR']
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

// Add event listener to handle Ctrl+click on language bar glyphs
document.querySelectorAll('.ngn_lb b').forEach(function(element) {
  element.addEventListener('click', function(event) {
    if (event.ctrlKey) {
      var symbol = event.target.textContent;
      var url = 'https://help.dyalog.com/latest/#Language/Primitive%20Functions/' + encodeURIComponent(symbol) + '.htm';
      window.open(url, '_blank');
    }
  });
});

})();
show=_=>{document.querySelector(".ngn_lb").style.display = ''
          session.style.height="calc(-58px + 100vh)"
          document.querySelector("body").style["margin-top"]="58px"
         }
hide=_=>{document.querySelector(".ngn_lb").style.display = 'none'
         session.style.height="100vh"
         document.querySelector("body").style["margin-top"]="0"
        }
