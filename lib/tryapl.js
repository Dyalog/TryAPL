// TryAPL callbacks & text session handling
var tryaplversion = "3.6.3"
var prevCount = 0
var debug = false
var submittedLines = []
var oldText
var lastText
var cursorPos
var state = ["",0,"",""]
var canSave = false
var lbkbInfo
var OLI = false

$=s=>document.querySelector(s)
$$=s=>document.querySelectorAll(s)

firstText="TryAPL Version " + tryaplversion + " (enter ]State for details)\n" + 
				 Date().split(" ").slice(0,5).join(" ") + 
			"\nCopyright (c) Dyalog Limited 1982-" + Date().split(" ")[3] + 
			"\n      "
oldText = firstText   // Text just before this execution
lastText = oldText    // Text after last execution 

function loadTryAPL () {
	log("TryAPL v." + tryaplversion)

	// Handle keyboard input
	document.addEventListener("keydown", function (event) {
		var kc = event.keyCode
		log(event)
		log(kc)
		if (event.shiftKey && event.ctrlKey) {
			if (kc === 8 || kc === 13) {
		    // Bckspce 8 || Enter 13
				// Submitted line recall
				getHistory((kc - 10.5)/2.5)
				event.preventDefault()
			}
		}
		else if (kc === 27) {
			// Just Escape
			replaceCurrentLine("      ")
		}
		else if (event.shiftKey) {
			if (kc === 27) {
				// Shift + Escape
				replaceCurrentLine("")
			}
		}
		else if (event.altKey && (kc === 38 || kc === 40)) {
			//                       Up: 38 || Down: 40
			// Submitted line recall
			log("prevCount0:"+prevCount)
			log("prevCount1:"+prevCount)
			getHistory(1+kc-40)
			event.preventDefault()
		}		
		else if (kc === 36) {
			// Home key
			event.preventDefault()
			var shiftd = event.shiftKey
			log("HOMEHOME")
			var cl = getSessionInput(0)
			var home = 1+session.value.slice(0,cursorPos).split("\n").slice(0,-1).join("\n").length
			if (document.activeElement.id == "oneLineInput") {
				oneLineInput.selectionStart = oneLineInput.selectionEnd = 0
			}
			else if ([...cl].every(e=>e===" ")) {
				log("home key blank line")
				//            select from beginning             select from home              go home
				shiftd ? session.selectionStart = home:putCursor(home)
			}
			else {
				// toggle between first non-space and home
				var fns = cl.search(/\S/);log(fns)
				if (cursorPos === home){log("cursor is home");shiftd?session.selectionEnd = home+fns:putCursor(home + fns)
					}
				else if (cursorPos === home+fns) {log("cursor on first non space");shiftd ? session.selectionStart = home:putCursor(home)
					}
				else {log("cursor on text line");shiftd?session.selectionStart = home+fns:putCursor(home + fns)
				}
			}
		}
		if (kc === 13) {
			// Enter key
			log("enter")
			event.preventDefault()
			var expr = getSessionInput(0)
			var oexpr = expr
			if (event.shiftKey && event.ctrlKey) {
				// Submitted line recall?
				getHistory(1)
			}
			// Detect multiline continuations
			// --- Dfns	---
            // Continue collecting input lines if accumulated multiline input string has unclosed braces
            // --- To do ---
            // Extend Continue to deal with different types of multiline structures
            Continue=t=>0<[...t.replace(/'[^']*'/g,"").replace(/⍝.*/g,"")].map(c=>c=="{"?1:c=="}"?-1:0).reduce((a,b)=>a+b)

			if (getSessionInput(0)[0]=="\t") {
			  log ("submit multiple lines")
			  // Collect surrounding elements
			  var block = getSessionInput("multiBlock")
			  expr = block.join("\n")
			  log(block.join("\n"))
			  // if Continue, continue
			} 
			if ( event.altKey || Continue(expr) ) {
				// Begin, continue or insert new line within multiline input				
				log("wow multi line")
				var after = getSessionInput("after")
				after = undefined === after?"":after
				replaceCurrentLine(getCurrentLine() + "\n\t" + after)
				putCursor(cursorPos + 2)
			}
			else if (document.activeElement.id == "oneLineInput") {
				submitOneLine()
			}
			else if (!getSessionInput(0).replace(/\s/g, '').length) {
				// Empty line
				var tid = event.target.id
				log(tid)
				if (tid === "nbURL") {nbLoad("#nbURL")} else if (tid === "wsURL") {wsFromURL("#wsURL")}
				var nbRun = !Array.from(learnButtons.classList).includes("hidden") && $("#learn").classList.contains("active")
				if (nbRun) {
					log("notebook running")
					// Running a notebook, submitting a blank line, show next cell
					nbNext(1)
				}
				else {
					log("just addd")
					// Just add newlines to session
					blankLine(0)
				}
			}
			else if (!session.disabled) {
				if (!expr.search(/^\s*\)clear/i)) {
					log("clear workspace")
					lastText=oldText=session.value += "\nclear ws\n      "
					state = ["",0,"",""]
				}
				else {
					submitLine(expr)
				}
			}
		}
		else if (document.activeElement.id == "oneLineInput" && (kc === 38 || kc === 40)) {
			//                         Up: 38 || Down: 40
			// Submitted line recall
			getHistory(1+kc-40)
			event.preventDefault()
		}
	})

	// Handle URL queries
	var s=new URLSearchParams(location.search)
	html.className=0==s.get("g")?"g":0==s.get("b")?"b":""
	// Backwards compatible with (some) old tryapl links
	if (location.search.length > 0) {
		if (expr = s.get("a")) {
			var os = location.href,
					k = 1 + os.indexOf("?"),
					a = k ? os.slice(k).split("&") : []
			newLine = unescape(unescape(a[0].slice(2)))
			log(newLine)
		}
		else if (expr = s.get("q")) {
			newLine = decodeURIComponent(expr)
		}
		else {
			newLine = ""
		}
		if (null!=s.get("clear")){
			canSave = false
		}
	}
	else if (typeof(Storage) !== undefined) {
		if (localStorage.canSave) {
			canSave = true
		}
	}

	// Restore state from localStorage if permitted
	if (typeof(Storage) !== undefined) {
		if (localStorage.current !== undefined && canSave) {
			// Workspace names: functions, variables etc.
			state = JSON.parse(localStorage.current)
			state.push("")
			// Submitted line history
			submittedLines = JSON.parse(localStorage.submittedLines)
			prevCount = submittedLines.length
			// Dark mode
			var dm = localStorage.getItem("darkMode")
			html.className = dm
		}
	}
	else {
		alert("Local storage is not supported by your web browser. Data will be lost each time the page is reloaded.")
	}
	if (null!=s.get("run")) {
		submitLine("      " + newLine)
	}

	// Search and replace the phrase "Access-key" depending on OS+Browser  
	mac=navigator.userAgent.indexOf("Mac")!=-1
	ctrl=mac
	shift=!(mac||navigator.userAgent.indexOf("Firefox")==-1)
	var accessKey = (ctrl?"<kbd>Ctrl</kbd>+":"")+"<kbd>Alt</kbd>"+(shift?"+<kbd>Shift</kbd>":"")+"+"
	$("#leftPane").innerHTML = $("#leftPane").innerHTML.replace(/Access-key /g,accessKey)

	// Get language bar glyph input info
	lbkbInfo = Array.prototype.slice.call( $(".ngn_lb").children).filter(f=e=>{return e.title!=""})
	lbkbInfo = lbkbInfo.map(f=e=>{var info = e.title.split("\n"); return info.indexOf("")==-1? "": info.slice(info.indexOf("")+1).join("\n",-1)})

	// Get symbols / glyphs for Primer help
	fetch("assets/elements.h").then(e=>e.text()).then(e=>{
		symbols=""
		elements=e.split("NAME(").slice(1).map(t=>{
			lines=[...t.matchAll(/"[^"]*"/g)]
			symbols+=lines[1][0][1]
			return lines.join("\n").replace("\n"," (").replace("\n",")\n\n").replace(/"/g,'').replace(/\\\\/g,"\\")
		})
	})
	ngn_lb_bs=$$(".ngn_lb b")
	ngn_lb_t=$(".ngn_lb").textContent
	$$("#primerGlyphs input").forEach(e=>e.title=ngn_lb_bs[ngn_lb_t.indexOf(e.value)].title)
	if (canSave) {$("#wsSaveCheck").checked = true}

	// Switch to icons in leftPane if width too narrow
	const lp = document.getElementById("leftPane");
	checkPaneWidth(lp.clientWidth);

	session.value = oldText = lastText
	typeof(newLine) !== "undefined" ? insertLine(newLine) : ""
}

plusScan = a => a.map(cumulativeSum = (sum => value => sum += value)(0))

getSessionInput=n=>{
	// if n is scalar then return current+n'th line
	// if n is array then
	// if n is string then get block
	//    "before" "after" "multiBlock" (current multiline block)
	let lines = session.value.split("\n")
	if ("string" === typeof(n)) {

		cursorPos = session.selectionEnd
		r = new RegExp("(.|\n){0," + cursorPos + "}\n")
		switch (n) {
			case "before":
				return session.value.match(r)
				break;
			case "after":
				session.value.slice(1+session.value.match(r)[0].length,-1)
				break;
			case "multiBlock":
				let inx = [... ("\n" + session.value).matchAll(/\n/g)].map(m=>0>m.index-cursorPos).lastIndexOf(true)
				let m = lines.map(l=>l[0]==="\t")
				var blocks = []
				for (var i=0; i<m.length; i++) {
					if (blocks.length && m[i] == m[i-1]) {
						blocks[blocks.length -1].push(lines[i])
					} else {
						blocks.push([lines[i]])
					}
				}
				g = plusScan(blocks.map(b=>b.length)).map(l=>0<l-inx).indexOf(true)
				return [blocks[g-1].slice(-1),blocks[g].join("\n")]
				break;	
		}
	}
	else {
		cursorPos = session.selectionEnd 
		let i = [... ("\n" + session.value).matchAll(/\n/g)].map(m=>0>m.index-cursorPos).lastIndexOf(true)
		if (Array.isArray(n)) {
			return n.map(e=>lines[e+i])
		}
		else if (session.selectionStart === session.selectionEnd) {
			return lines[n+i]
		} else {
			return session.value.substring(session.selectionStart, session.selectionEnd)	
		}
	}
}

getCurrentLine=_=>{
	cursorPos = session.selectionEnd
	r = new RegExp("(.|\n){0," + cursorPos + "}\n")
	return ("\n" + session.value).replace(r,'').split("\n")[0]
}

putCursor=p=>session.selectionEnd=session.selectionStart=p

padSession=_=>{
	cursorPos = session.selectionStart
	session.value+="\n      ".repeat(0)
	putCursor(cursorPos)
}

blankLine=tab=>{
	session.value += tab?"\n\t":"\n      "
	lastText=oldText=session.value
}

replaceCurrentLine=text=>{
	cursorPos = session.selectionStart
	r = new RegExp("(.|\n){0," + (cursorPos-1) + "}\n")
	beginCur=session.value.match(r)[0].length
	head = session.value.slice(0,beginCur)
	tail = session.value.slice(beginCur,session.value.length).replace(/.*/,"")
	log(tail)
	session.value=head + text + tail 
	putCursor(beginCur+6)
}

strip = what => {
	// Strip trailing blanks
	return what.replace(/\s+$/,"")
}

getHistory = dir => {
	var active = document.activeElement
	prevCount = Math.min(Math.max(-1, prevCount + dir), submittedLines.length)
	var recall = prevCount >= 0 && prevCount < submittedLines.length ? submittedLines[prevCount].trim() : ""
	if (active.id == "oneLineInput") {
		active.value = recall
	}
	else if (active.id == "session") {
		replaceLine(recall)
	}
	else {
		log("getHistory but where is focus?")
	}
}

function submitOneLine() {
	insertLine(oneLineInput.value); oneLineInput.value = ""; OLI = true
	submitLine(getSessionInput(0))
}

async function submitLine(currentLine) {
	session.disabled = true;currentLine
	oldText=session.value
	if (currentLine.replace(/\s/g, '').length) {submittedLines.push(strip(currentLine));if(canSave){localStorage.setItem("submittedLines", JSON.stringify(submittedLines))}}
	prevCount = submittedLines.length
	expr = ""
	return jarvisProcess(currentLine)
}

function jarvisProcess(currentLine) {
	log("jarvisProcess")
	return new Promise(function(resolve, reject){
		var xhttp = new XMLHttpRequest()
		var fn = "Exec"
		xhttp.open("POST", fn, true)
		xhttp.setRequestHeader("Content-Type", "application/json; charset=utf-8")
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4){
				if (this.status == 200) {
					state = JSON.parse(this.responseText)
					log("state in: " + this.responseText)
					result = state[3].join("\n")
					resolve(result)
					newLine = result.replace(/^ *[\b]help[\b]/, "")
					log("NEW: " + newLine)
					if (0 === state[3].length) {
						// Empty result (usually assignment)
						log("assignment " + state[3])
						session.value = lastText.slice(0, lastText.length - 6) + currentLine + "\n      "
					}
					else if (cursorPos > session.value.split("\n").slice(0,-2).join("\n").length && cursorPos < session.value.length) {
						// User pressed enter on last line of session, but before end of that line
						log("fresh2")
						session.value = lastText.slice(0,-6)
						insertLine(currentLine + "\n" + newLine.replace(/\n$/,"") + "\n      ")
					}
					else if (cursorPos > oldText.length - oldText.split("\n").slice(-1).length) {
											//← session length→//   //←       length of last line            →//
						// User pressed enter at end of session
						log("else if:"+(cursorPos > session.value.length - session.value.split("\n").slice(-1).length))
						session.value = session.value.slice(0,session.value.length - 7)
						session.value = oldText + "\n" + newLine + "\n      "
						log("fresh")
					} 
					else { // user pressed enter on a line before the last (stale input)
						session.value = lastText.slice(0, -6)
						session.value += currentLine+"\n"+newLine+"\n      "
						log(currentLine)
						log("stale")
					}
					padSession()
					lastText = session.value
					session.scrollTop = session.scrollHeight
					session.scrollLeft = 0
					session.disabled = false
					OLI ? oneLineInput.focus() : session.focus()
					OLI = false
					disconnects = 0
				}
				else {
					return reject({
						// Error in server response
						// To do: handle this more nicely?
						status: this.status,
						statusText: this.statusText
					})
				}  
			}
		}
		state[3]=currentLine
		log("state out: " + JSON.stringify(state))
		xhttp.send(JSON.stringify(state))
	}).then(response => {
		log("=======" + response)
		if (!response.search(/^ *[\b]help[\b]/)) {
			log("HELP URL")
			window.open(response.replace(/^.*[\b]/,""), "_blank")
		}
		if (canSave) {saveWS("current", JSON.stringify(state.slice(0,-1)))}
		return response
	}).catch(e => {
			log(e)
			if (0 == e.status) {
				insertLine("\nSERVER ERROR: No response\n      ")
			}
			else {
				insertLine("\nSERVER ERROR\n      ")
			}
			session.disabled = false
			return e
	})
}

setCanSave=cs=>{
	log($("#wsSaveCheck").checked)
	$("#wsSaveCheck").checked ? canSave  = true : canSave = false
	if (canSave) {
		localStorage.setItem("canSave", canSave)
		saveWS("current", JSON.stringify(state.slice(0,-1)))
		saveWS("submittedLines", JSON.stringify(submittedLines))
	} else {localStorage.clear()}
}

permaLink=_=>{
	currentLine = getSessionInput(0)
	if (currentLine[0]=="\t") { currentLine = getSessionInput("multiBlock").join("\n").trim() } else { currentLine = currentLine.trim() }
	history.replaceState({},document.title,location.pathname + "?clear&q=" + encodeURIComponent(currentLine) + "&run")
}

glyphHelp=g=>{
	i=symbols.search("\\"+g)
	log(g)
	log(g === "∇")
	if(-1<i){
		newContent = "\n"+"─".repeat(80)+"\n"+	 // insert dashes
	elements[i]+"\n" // Glyph help info
	kbi=[...$$(".ngn_lb b")][$(".ngn_lb").textContent.indexOf(g)].title.split("\n").filter(t=>t.match(/Tab|Prefix/)).join("\n▍") // Insert keyboard stuff
	newContent += kbi.length?"▍"+kbi:""
	newContent = newContent.replace(/\n*(      )?$/,"\n\n      ")
	if (g === "∇") {
		newContent = newContent.replace(/^    /gm,"\t").replace(/\n\n\t/gm,"\n\n    ")
	}
	log(newContent)
	session.value += newContent
		lastText=session.value
		putCursor(session.value.length)
		session.focus()
	}
}

loadWS=data=>{
	// Pop up modal to confirm
	var modal = $("#confirmLoadWS")
	modal.style.display = "block"
	$("#close").onclick = function() {
		modal.style.display = "none"
	}
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none"
		}
	}
	$("#loadWS").onclick = function() {
		try {
			state = JSON.parse(data).ws
			state.push("")
			insertLine("TryAPL Workspace Loaded\n      ")
		} catch(e) {
			log("loadWS error")
	 wsLoadError()
		}
		modal.style.display = "none"
	}
	$("#cancel").onclick = function() {modal.style.display = "none"}
}

saveWS=(id, data)=>{
	log("Saving workspace data to local storage")
	localStorage.setItem(id, data)
}

function downloadWS() {
	filename=JSON.stringify(new Date).replace(/[^0-9]/g,"")+".tryapl"
	text = '{"about":"This is a TryAPL workspace file. Go to https://tryapl.org?tab=file to use it.",\n'+
		'"version":"'+tryaplversion+'",\n'+
		'"ws":'+JSON.stringify(state.slice(0,-1))+'}'
	var element = document.createElement('a')
	element.setAttribute('href', 'data:application/octet-stream;charset=utf-8,' + encodeURIComponent(text))
	element.setAttribute('download', filename)
	element.style.display = 'none'
	document.body.appendChild(element)
	element.click()
	document.body.removeChild(element)
}

function uploadWS() {
	log("upload " + $("#upload").files[0].name)
	var file = $("#upload").files[0]
	if (file) {
		var reader = new FileReader()
		reader.onload = function(event) {
			var text = event.target.result
			loadWS(text)
		}
		reader.readAsText(file, "UTF-8")
	}
}

wsFromURL=id=>{
	var url = $(id).value
	log("fetching .tryapl ws from " + url)
	if (url.includes("gist") && !url.includes("/raw/")) {
		log("gist")
		url = url.replace(/gist.github.com\/\w+/,"api.github.com/gists")
		fetch(url, {mode: "cors", redirect: "follow"}).then(response => {
			if (response.ok) {
				return response.json()
			}
			else {
				insertLine = "Error loading .tryapl workspace"
			}
		}).then((json) => {
			loadWS(json.files[Object.keys(json.files)[0]].content)
		})
		.catch((err) => {
			log(err)
			insertLine = "Error loading .tryapl workspace"
		})
	}
	else if (url.includes("gist")) {
		log("raw gist")
		fetchWS(url)
	}
	else {
		fetch(url).then(response=>{
		if (response.ok) {
			return response.json()
		}
		else {
			wsLoadError()
	}
	}).catch(err=>{
	  log(err)
	  wsLoadError()
	})
}
}

wsLoadError=_=>{
	$("#wsError").style.visibility = "visible"
		$("#wsError").classList.add("animate")
		$("#wsError").addEventListener("animationend", error_endCallback)
}

fetchWS=url=>{
	fetch(url).then((response) => {
		//log(response)
		res = response
		if (response.ok) {
			log(response.redirected)
			return response.json()
		} else {
			insertLine = "Error loading .tryapl workspace"
			$("#wsError").style.visibility = "visible"
		$("#wsError").classList.add("animate")
		$("#wsError").addEventListener("animationend", error_endCallback)
		}
	})
	.then((json) => {
		loadWS(JSON.stringify(json))
	})
	.catch((err) => {
		log(err)
		insertLine = "Error loading .tryapl workspace"
		wsLoadError()
	})
}

const checkPaneWidth = (width) => {
	if (width > 395){
		$$("#tabs span").forEach(e=>e.style.display="unset")
		$$("#tabs svg").forEach(e=>e.style.display="none")
	}else{
		$$("#tabs span").forEach(e=>e.style.display="none")
		$$("#tabs svg").forEach(e=>e.style.display="unset")
	}
}
