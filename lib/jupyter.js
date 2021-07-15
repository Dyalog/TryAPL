// TryAPL Jupyter Rendering and Execution
// Depends lib/tryapl.js
var currentBook;
var currentCell = 0;
var splitPanes;
var paneSizes = [40, 60];
var fs = false;

$=s=>document.querySelector(s);
$$=s=>document.querySelectorAll(s);

window.MathJax = {
  tex: {
    inlineMath: [["$", "$"]]
  }
};

log=text=>{if(debug){console.log(text)}}

window.onload=_=>{  
  var sizes = localStorage.getItem('split-sizes')
  if (sizes) {	  
      sizes = JSON.parse(sizes)	  
    } else {
      sizes = [40, 60] // default sizes
  }
  splitPanes = Split(['#leftPane', '#rightPane'], {
    sizes: sizes,
    onDragEnd: function(sizes) {
      if(canSave){localStorage.setItem('split-sizes', JSON.stringify(sizes))}
    },
    onDrag: paneDrag,
	minSize: [0,0]
  })      
  
  loadTryAPL();
  gutter = $(".gutter");  
  gutter.innerHTML += "<span id='full' accesskey='z' onclick='leftPane.style.transition = \"width 0.15s\";sessionFS();'><svg width='8' height='16' id='triangle'><polygon points='0,8 8,16 8,0'/></svg></span>";
  intro.classList.add("active");
  introTab.classList.add("active"); 
  $$("code.apl").forEach(fn=el=>{el.onclick=e=>{replaceLine(e.target.innerHTML)}});    
  var s=new URLSearchParams(location.search) // Options from URL 
  if (expr = s.get("fs")) {sessionFS()}      // Start in Full Screen mode
  if (expr = s.get("tab")) {showTab(expr);}  // Go to tab from URL    
  if (expr = s.get("notebook"))              // Open notebook from URL
  {
    showTab("learn");nbURL.value=expr;nbLoad("#nbURL");
  };            
  fs = JSON.parse(localStorage.getItem('split-fs'))
  if (fs) { log("full screen restored");fs=!fs;sessionFS();}   
}

paneDrag=s=>{
  if (1 > splitPanes.getSizes()[0]) {
    fs = true;
    triangle.classList.add("flip");
  } else {
    fs = false;
    triangle.classList.remove("flip");
  }  
  leftPane.style.transition = "unset";
  if(canSave){localStorage.setItem('split-fs',fs)};
  checkPaneWidth(leftPane.clientWidth)
}

showTab=id=>{
  contents=[...$$(".content")]
  id=(i=parseInt(id))?[...contents].map(n=>n.id)[(i-1)/2]:id.toLowerCase();
  contents.forEach(fn=tab=>{    
    if (id != tab.id) {      
      $("#" + tab.id + "Tab").classList.remove("active");
      tab.classList.remove("active");
    } else {
      tab.classList.add("active");
      $("#" + tab.id + "Tab").classList.add("active");
    }
  })
}

sessionFS=_=>{    
  if (fs) {    
    // session split screen
    triangle.classList.remove("flip");
    splitPanes.setSizes(paneSizes);    	
  } else {
    // session full screen     
    triangle.classList.add("flip")
    paneSizes = splitPanes.getSizes();
    splitPanes.setSizes([0,100]);            
  }    
  fs = !fs;    
  localStorage.setItem('split-fs', fs);
  localStorage.setItem('split-sizes', JSON.stringify(paneSizes));
}

insertLine=async code=>{
  session.value += code;
  putCursor(session.value.length); 
  session.focus(); 
  return new Promise(function (resolve, reject) {
    resolve(0);
  });
}

replaceLine=code=>{  
  replaceCurrentLine("      " + code); // from tio-dyalog.js   
  session.selectionEnd = session.selectionStart += code.length;
  session.focus();
}

nbFill=t=>{
  if(t.tagName == "A"){
    url=t.dataset.url?t.dataset.url:t.parentNode.dataset.url;
    if(url){nbURL.value=url;nbURL.selectionStart=nbURL.selectionEnd=url.length}
    nbLoad("#nbURL");
  }
}

error_endCallback = anim => {
  anim.target.removeEventListener("animationend", error_endCallback);
  anim.target.classList.remove("animate");
  anim.target.style.visibility = "hidden";
}

nbLoad=id=> {    
  url = $(id).value;
  log("running notebook @:" + url);  
  // try {
  fetch(githubRawURL(url)).then((response) => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error("Error loading notebook");
    }
  })
  .then(json => {   
    currentBook = json;  
    learnButtons.classList.remove("hidden");
    loadnb.classList.add("hidden");

    $("#nbError").style.visibility = "hidden";
    $("#nbError").style.opacity = "0";

    $("#learn").setAttribute("data-in_notebook", "yes");
    $("#learn").style.padding = "0";

    // Insert notebook file name into learnbuttons control bar
    $("#lessonFN").innerHTML = decodeURIComponent(($("#nbURL").value.split('\\').pop().split('/').pop()).slice(0, -6));
    // Initialize Learn section height for scrollbar responsiveness
    let lb_height = document.getElementsByClassName("ngn_lb")[0].clientHeight;
    $("#learn").style.height=`calc(100vh - 2px - ${lb_height}px)`;

    nbNext(1);
  })
  .catch((err) => {
    log("the bad bad");
    log(err);
    // Animate notebook load error to provide user feedback
    nbLoadError();
  });  
}

function nbLoadError(){
	$("#nbError").style.visibility = "visible";
    $("#nbError").classList.add("animate");
    $("#nbError").addEventListener("animationend", error_endCallback);
}

replaceAll=(str, find, replace)=>{return str.replace(new RegExp(find, 'g'), replace)}

nbNext=async dir=>{
  // Render (∧,∨) execute next ∨ previous cell    
  mdrender.style.display = "block";
  newCell = currentBook.cells[currentCell]
  log(newCell);
  disableButton($("#n"));    
  if (dir) {        
    if (currentCell == currentBook.cells.length) {
      // Reached end of notebook
      log("end of book");
      disableButton($("#n"));      
    } else {      
      log("next cell");
      cellSource = newCell.source;
      log(newCell.cell_type);
      switch (newCell.cell_type) {      
        case "code":
          // todo, jupyter dinput        
          var firstChar = cellSource[0].replace(/\s/g, '')[0];
          if (firstChar === "∇" || firstChar === "]") {
            log("tradfn or ]dinput here")
            // Submit whole definition
            if (cellSource[0].replace(/\s/g, '') === "]dinput") {
              //dfn            
              fnDef = replaceAll(cellSource.slice(1,cellSource.length).join(""), "\n", "") + "\n".repeat(cellSource.length - 1);
            } else {
              // tradfn
              fnDef = cellSource.join("");
            }          
            submitLine(fnDef).then(fn=>{
              // Format definition with line numbers [1]
              for (let i = 1; i < cellSource.length; i++) {
                log("----------");
                log(cellSource[i]);
                cellSource[i] = "[" + i + "]" + "&nbsp;&nbsp;" + cellSource[i];
              }
              newLine = cellSource.join("");            
              var div = document.createElement("div");
              div.innerHTML = "<pre class=\"apl\">" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + newLine + "</code>";
              //div.onclick=e=>{replaceLine(e.target.innerHTML)};
              mdrender.append(div);
              // Replace session appendage from submitLine
              session.value = session.value.split("\n").slice(0,-cellSource.length-1).join("\n") + "\n      ";
              insertLine(replaceAll(newLine + "\n      ", "&nbsp;", " ")) 
            });
          } else {
            log("ONE LINER");
            lastText = session.value;
            var mdContent = document.createElement("div");
            for (const   line of cellSource){                  
              newLine = line.replace(/\n$/, "");
              insertLine((i++?"\n      ":"")+newLine).then(async fn=>{
                var div = document.createElement("div");
                div.innerHTML = "<code class=\"apl\">" + newLine + "</code>";
                div.onclick=e=>{log(e.target.innerHTML);replaceLine(e.target.innerHTML)};
                mdContent.append(div);              
              }).then(await submitLine("      " + newLine));
            mdrender.append(mdContent)
          }
      }        
          break;
        case "markdown":                
          log(cellSource); 
          $$("code.language-APL").forEach(fn=el=>{el.onclick=e=>{replaceLine(e.target.innerHTML)}}); 
          var div = document.createElement("div");    
          div.innerHTML = texme.render(cellSource.join(""))
        case undefined:
          log("woah");        
        default:        
          mdrender.append(div)
          window.MathJax.typeset()
      }
      currentCell += 1;         
      setTimeout((_=>mdrender.scrollTop = mdrender.scrollHeight),100)
	    enableButton($("#n"));
    }    
  } else {
    enableButton($("#n"));  
    if (currentCell == 1) {      
      nbClose();      
    } else {      
      log("previous cell");
      currentCell -= 1;
      mdrender.removeChild(mdrender.lastChild);
    }
  }
}

nbReload=_=>{
  mdrender.innerHTML = "";
  currentCell = 0;
  nbNext(1);    
}

nbClose=_=>{
  log("close");
  $("#learn").setAttribute("data-in_notebook", "no");
  $("#learn").style.padding = "1ex 1em";
  learnButtons.classList.add("hidden");
  loadnb.classList.remove("hidden");
  mdrender.style.display = "none";
  mdrender.innerHTML = "";
  let lb_height = document.getElementsByClassName("ngn_lb")[0].clientHeight;
  $("#learn").style.height=`calc(100vh - 3em  - 1px - ${lb_height}px)`;
  currentCell = 0;
}

tryURL=(url, root)=>{
  // Notebook to TryAPL 
  log(root + "?notebook=" + url);
  return "href=\"" + root + "?notebook=" + url + "\"";
}

absURL=(url, root)=>{
  // TODO: multiple URLs in a single line
  log("making absolute URL: " + url + "|" + root);
  var gURL = root.split("/").slice(0,-1).join("/") + "/" + url.split(/href=\"/i)[1];  
  return githubRawURL(gURL);
}

githubRawURL=url=>{  
  if (url.includes("github.com") && !url.includes("raw.githubusercontent") && !url.includes("gist")) {     
    newrl = "https://raw.githubusercontent.com" + url.split("https://github.com")[1].split("/blob").join("");  
    return newrl
  } else {
    return url;
  }
}

disableButton=btn=>{
  btn.style.fill = "#aaa";
  btn.disabled = true;
  btn.style.cursor = "default";
  log("DIABLE")
  
}

enableButton=btn=>{
  btn.style.fill = "#fff";
  btn.disabled = false;
  btn.style.cursor = "pointer";
}