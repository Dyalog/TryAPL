var splitPanes;
var fs = false;

window.onload = function() {
  var sizes = localStorage.getItem('split-sizes');
  if (sizes) {
    sizes = JSON.parse(sizes);
  } else {
    sizes = [40, 60]; // default sizes
  }
  splitPanes = Split(['#leftPane', '#rightPane'], {
    sizes: sizes,
    onDragEnd: function(sizes) {
      if (canSave) {
        localStorage.setItem('split-sizes', JSON.stringify(sizes));
      }
    },
    onDrag: paneDrag,
    minSize: [0, 0]
  });

  loadTryAPL();
  var gutter = document.querySelector(".gutter");
  gutter.innerHTML += "<span id='full' accesskey='z' onclick='leftPane.style.transition = \"width 0.15s\";sessionFS();'><svg width='8' height='16' id='triangle'><polygon points='0,8 8,16 8,0'/></svg></span>";
  document.getElementById("intro").classList.add("active");
  document.getElementById("introTab").classList.add("active");
  document.querySelectorAll("code.apl").forEach(function(el) {
    el.onclick = function(e) {
      replaceLine(e.target.innerHTML);
    };
  });
  var s = new URLSearchParams(location.search); // Options from URL
  if (s.get("fs")) {
    sessionFS();
  } // Start in Full Screen mode
  if (s.get("tab")) {
    showTab(s.get("tab"));
  } // Go to tab from URL
  if (s.get("notebook")) {
    showTab("learn");
    document.getElementById("nbURL").value = s.get("notebook");
    nbLoad("#nbURL");
  }
  fs = JSON.parse(localStorage.getItem('split-fs'));
  if (fs) {
    fs = !fs;
    sessionFS();
  }
};

function paneDrag(s) {
  if (1 > splitPanes.getSizes()[0]) {
    fs = true;
    document.getElementById("triangle").classList.add("flip");
  } else {
    fs = false;
    document.getElementById("triangle").classList.remove("flip");
  }
  leftPane.style.transition = "unset";
  if (canSave) {
    localStorage.setItem('split-fs', fs);
  }
  checkPaneWidth(leftPane.clientWidth);
}

function showTab(id) {
  var contents = Array.from(document.querySelectorAll(".content"));
  id = parseInt(id) ? contents.map(function(n) {
    return n.id;
  })[(parseInt(id) - 1) / 2] : id.toLowerCase();
  contents.forEach(function(tab) {
    if (id != tab.id) {
      document.getElementById(tab.id + "Tab").classList.remove("active");
      tab.classList.remove("active");
    } else {
      tab.classList.add("active");
      document.getElementById(tab.id + "Tab").classList.add("active");
    }
  });
}

function sessionFS() {
  if (fs) {
    document.getElementById("triangle").classList.remove("flip");
    splitPanes.setSizes(paneSizes);
  } else {
    document.getElementById("triangle").classList.add("flip");
    paneSizes = splitPanes.getSizes();
    splitPanes.setSizes([0, 100]);
  }
  fs = !fs;
  localStorage.setItem('split-fs', fs);
  localStorage.setItem('split-sizes', JSON.stringify(paneSizes));
}
