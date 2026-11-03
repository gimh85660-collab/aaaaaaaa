
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ì ì ê¸°ì  ìí©í¸ ë©: ë§ì ì´ë¦¬ê¸° íë¡ì í¸</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    .slider {
      -webkit-appearance: none;
      appearance: none;
      width: 100%;
      height: 8px;
      border-radius: 9999px;
      background: #334155;
      outline: none;
    }
    .slider::-webkit-slider-thumb {
      -webkit-appearance: none;
      appearance: none;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background: #10b981;
      cursor: pointer;
      box-shadow: 0 0 10px rgba(16, 185, 129, 0.6);
    }
    .card-hover {
      transition: all 0.2s ease;
    }
    .card-hover:hover {
      transform: translateY(-2px);
      border-color: #10b981;
    }
  </style>
</head>
<body class="bg-slate-900 text-slate-100 min-h-screen flex flex-col font-sans select-none">

  <!-- í¤ë -->
  <header class="bg-slate-800/90 backdrop-blur border-b border-slate-700 py-4 px-6 sticky top-0 z-50">
    <div class="max-w-5xl mx-auto flex flex-col sm:flex-row justify-between items-center gap-2">
      <div class="flex items-center space-x-3">
        <div class="bg-emerald-500/20 p-2.5 rounded-xl border border-emerald-500/30 text-emerald-400">
          <i class="fa-solid fa-earth-asia text-2xl"></i>
        </div>
        <div>
          <h1 class="text-xl font-bold text-white">ì ì ê¸°ì  ìí©í¸ ë©: ì¤ì§ ë§ì ì´ë¦¬ê¸°</h1>
          <p class="text-xs text-slate-400">íìê´ ë°ì ê³¼ ì ìê¸° ë± ì¤ì  ì ì ê¸°ì ì ë°°ì¹íì¬ ë§ìì ì±ì¥ìì¼ ë³´ì¸ì!</p>
        </div>
      </div>
      <div class="flex items-center gap-2 bg-slate-900 px-4 py-2 rounded-xl border border-slate-700">
        <span class="text-xs text-slate-400">ë§ì íë³µ ì§ì:</span>
        <span id="score-display" class="text-xl font-black text-emerald-400 font-mono">85ì </span>
      </div>
    </div>
  </header>

  <!-- ë©ì¸ ì»¨íì´ë -->
  <main class="max-w-5xl mx-auto px-4 py-6 w-full flex-1 grid grid-cols-1 lg:grid-cols-12 gap-6">

    <!-- ì¢ì¸¡: ì ì ê¸°ì  ìë£¨ì ì¡°ì í¨ë -->
    <div class="lg:col-span-6 space-y-4">

      <!-- 1ë² ìë£¨ì: ë°ì´ì¤ìë & ëª¨ëì ìê¸° -->
      <div class="bg-slate-800/60 border border-slate-700 p-5 rounded-2xl card-hover">
        <div class="flex items-center justify-between mb-3">
          <h2 class="text-base font-bold text-cyan-400 flex items-center gap-2">
            <i class="fa-solid fa-droplet"></i> 1. ë°ì´ì¤ìë ëª¨ëì ìê¸° (ìì íë³´)
          </h2>
          <span id="stat-water" class="text-xs font-bold bg-cyan-950 text-cyan-300 px-2.5 py-1 rounded-lg border border-cyan-800">ìì ìì ë: ëì</span>
        </div>
        <p class="text-xs text-slate-300 mb-4">ìê°, ëª¨ë, íì±í ì¸µì íì©í´ ì  ìì´ ì¸ê· ê³¼ íë¨¼ì§ë¥¼ ìë²½í ê±¸ë¬ëëë¤.</p>
        <div>
          <div class="flex justify-between text-xs font-semibold text-slate-300 mb-1">
            <span>ì¬ê³¼ ëª¨ëì¸µ ëê» ë° íì±í ê°í</span>
            <span id="val-filter-level" class="text-cyan-400 font-mono">3ë¨ê³ (ê³ ê¸ ì í)</span>
          </div>
          <input type="range" id="input-filter" min="1" max="5" value="3" class="slider">
        </div>
      </div>

      <!-- 2ë² ìë£¨ì: ìí íìê´ ë°ì ê¸° (Solar Generator) -->
      <div class="bg-slate-800/60 border border-slate-700 p-5 rounded-2xl card-hover">
        <div class="flex items-center justify-between mb-3">
          <h2 class="text-base font-bold text-amber-400 flex items-center gap-2">
            <i class="fa-solid fa-solar-panel"></i> 2. ìí íìê´ ë°ì ê¸° (ëë¦½ ì ë ¥)
          </h2>
          <span id="stat-solar" class="text-xs font-bold bg-amber-950 text-amber-300 px-2.5 py-1 rounded-lg border border-amber-800">ì ë ¥ ê³µê¸: ìì ì </span>
        </div>
        <p class="text-xs text-slate-300 mb-4">ëí ì¡ì í ìì´ íìê´ í¨ëê³¼ ì¶ì ì§ë¡ ë§ì íêµì ìë£ ë³´ê±´ìì ì ê¸°ë¥¼ ê³µê¸í©ëë¤.</p>
        <div>
          <div class="flex justify-between text-xs font-semibold text-slate-300 mb-1">
            <span>íìê´ í¨ë ë° ë°°í°ë¦¬ ì©ë</span>
            <span id="val-solar-level" class="text-amber-400 font-mono">500W ìì¤í</span>
          </div>
          <input type="range" id="input-solar" min="1" max="10" value="5" class="slider">
        </div>
      </div>

      <!-- 3ë² ìë£¨ì: í ì¸ í í­ìë¦¬ ëì¥ê³  -->
      <div class="bg-slate-800/60 border border-slate-700 p-5 rounded-2xl card-hover">
        <div class="flex items-center justify-between mb-3">
          <h2 class="text-base font-bold text-blue-400 flex items-center gap-2">
            <i class="fa-solid fa-snowflake"></i> 3. í ì¸ í í­ìë¦¬ ëì¥ê³  (ìë ë³´ê´)
          </h2>
          <span id="stat-food" class="text-xs font-bold bg-blue-950 text-blue-300 px-2.5 py-1 rounded-lg border border-blue-800">ìë ë³´ì¡´: ì°ì</span>
        </div>
        <p class="text-xs text-slate-300 mb-4">ìµí ëª¨ëì ì¦ë°ì´ ìë¦¬ë¥¼ ì´ì©í´ ì ê¸°ê° ìì´ë ëì°ë¬¼ì ì±ì±íê² ì§íµëë¤.</p>
        <div>
          <div class="flex justify-between text-xs font-semibold text-slate-300 mb-1">
            <span>ëª¨ëì¸µ ìë¶ ê³µê¸ ë° ì ì§ì¨</span>
            <span id="val-cooler-level" class="text-blue-400 font-mono">ì ì  ì ì§ (80%)</span>
          </div>
          <input type="range" id="input-cooler" min="10" max="100" value="80" step="10" class="slider">
        </div>
      </div>

      <!-- 4ë² ìë£¨ì: ëª¨ì¸ë¥´ íí¸ë³ ì êµ¬ (Moser Lamp) -->
      <div class="bg-slate-800/60 border border-slate-700 p-5 rounded-2xl card-hover">
        <div class="flex items-center justify-between mb-3">
          <h2 class="text-base font-bold text-emerald-400 flex items-center gap-2">
            <i class="fa-solid fa-lightbulb"></i> 4. íí¸ë³ ì êµ¬ (ì¹íê²½ ì±ê´)
          </h2>
          <span id="stat-energy" class="text-xs font-bold bg-emerald-950 text-emerald-300 px-2.5 py-1 rounded-lg border border-emerald-800">ì¤ë´ ì±ê´: ë°ì</span>
        </div>
        <p class="text-xs text-slate-300 mb-4">íë°±ì ë¥¼ ìì íí¸ë³ì ì§ë¶ì ë°ì íë¹ì ì¬ë°©ì¼ë¡ ì°ëìì¼ ì´ëì´ ì§ ìì íí ë°íëë¤.</p>
        <div>
          <div class="flex justify-between text-xs font-semibold text-slate-300 mb-1">
            <span>ì¤ì¹ë íí¸ë³ ì êµ¬ ê°ì</span>
            <span id="val-bulb-level" class="text-emerald-400 font-mono">15ê°</span>
          </div>
          <input type="range" id="input-bulb" min="1" max="30" value="15" class="slider">
        </div>
      </div>

    </div>

    <!-- ì°ì¸¡: ì¤ìê° ë§ì ìê°í ë° í¼ëë°± ëìë³´ë -->
    <div class="lg:col-span-6 flex flex-col space-y-4">
      
      <!-- ì¸í°ëí°ë¸ ìºë²ì¤ ë¹ì£¼ì¼ -->
      <div class="bg-slate-950 border border-slate-800 p-4 rounded-2xl flex flex-col items-center justify-center relative min-h-[300px]">
        <canvas id="village-canvas" width="440" height="260" class="w-full h-auto rounded-xl"></canvas>
        <div class="absolute bottom-3 left-4 bg-slate-900/80 backdrop-blur px-3 py-1.5 rounded-lg border border-slate-700 text-xs text-slate-300">
          <i class="fa-solid fa-circle-info text-emerald-400 mr-1"></i> ì¬ë¼ì´ëë¥¼ ì¡°ì íë©´ íìê´ ë°ì ëê³¼ ë§ì íê²½ì´ ì¤ìê°ì¼ë¡ ë³í©ëë¤!
        </div>
      </div>

      <!-- ì¢í© ìí©í¸ ë¦¬í¬í¸ -->
      <div class="bg-slate-800/80 border border-slate-700 p-5 rounded-2xl flex-1 flex flex-col justify-between">
        <div>
          <h3 class="text-sm font-bold text-emerald-400 mb-3 flex items-center gap-2">
            <i class="fa-solid fa-chart-line"></i> ë§ì ë³í ë¦¬í¬í¸ & ì ì ê¸°ì ì ê°ì¹
          </h3>
          <p id="report-summary" class="text-xs text-slate-200 leading-relaxed bg-slate-900/60 p-3.5 rounded-xl border border-slate-700/50">
            ì ì ê¸°ì ì ê±°ë ìë³¸ì´ë ë³µì¡í ì¸íë¼ ëì , íì§ ììê³¼ ì¹íê²½ ìë¦¬(íìê´, ì¦ë°, ì¬ê³¼)ë¥¼ íì©í´ ì£¼ë¯¼ë¤ì´ ì¤ì¤ë¡ ì¼ì´ì¤ ì ìëë¡ ëìµëë¤.
          </p>
        </div>

        <div class="mt-4 pt-3 border-t border-slate-700 text-[11px] text-slate-400 flex justify-between items-center">
          <span>íµì¬ ê°ì¹: <strong>ì§ì ê°ë¥í ìë¦½ê³¼ ì¸ê° ì¤ì¬ ê¸°ì </strong></span>
          <span class="text-emerald-400 font-bold">ìí©í¸ ìì§ ê°ë ì¤</span>
        </div>
      </div>

    </div>

  </main>

  <!-- íë¡ í¸ìë ìë°ì¤í¬ë¦½í¸ ë¡ì§ -->
  <script>
    const filterInput = document.getElementById('input-filter');
    const solarInput = document.getElementById('input-solar');
    const coolerInput = document.getElementById('input-cooler');
    const bulbInput = document.getElementById('input-bulb');

    const valFilter = document.getElementById('val-filter-level');
    const valSolar = document.getElementById('val-solar-level');
    const valCooler = document.getElementById('val-cooler-level');
    const valBulb = document.getElementById('val-bulb-level');

    const statWater = document.getElementById('stat-water');
    const statSolar = document.getElementById('stat-solar');
    const statFood = document.getElementById('stat-food');
    const statEnergy = document.getElementById('stat-energy');
    const scoreDisplay = document.getElementById('score-display');
    const reportSummary = document.getElementById('report-summary');

    const canvas = document.getElementById('village-canvas');
    const ctx = canvas.getContext('2d');

    // ì´ë²¤í¸ ë¦¬ì¤ë ì°ê²°
    [filterInput, solarInput, coolerInput, bulbInput].forEach(input => {
      input.addEventListener('input', updateSimulation);
    });

    function updateSimulation() {
      const fVal = parseInt(filterInput.value);
      const sVal = parseInt(solarInput.value);
      const cVal = parseInt(coolerInput.value);
      const bVal = parseInt(bulbInput.value);

      // íì¤í¸ ë¼ë²¨ ìë°ì´í¸
      valFilter.innerText = fVal + "ë¨ê³ (" + (fVal > 3 ? "ê³ ê¸ ì í" : "ê¸°ë³¸ ì í") + ")";
      valSolar.innerText = (sVal * 100) + "W ìì¤í (" + (sVal > 6 ? "ìë£ì ëë ¥ íë³´" : "ê¸°ë³¸ ì¡°ëª/ì¶©ì ") + ")";
      valCooler.innerText = cVal + "% ì ì§";
      valBulb.innerText = bVal + "ê° ì¤ì¹";

      // ê°ë³ ì§í ê³ì°
      let waterScore = fVal * 20;
      statWater.innerText = waterScore >= 80 ? "ìì ìì ë: ë§¤ì° ìì " : "ìì ìì ë: ì£¼ì íì";
      statWater.className = waterScore >= 80 ? "text-xs font-bold bg-emerald-950 text-emerald-300 px-2.5 py-1 rounded-lg border border-emerald-800" : "text-xs font-bold bg-amber-950 text-amber-300 px-2.5 py-1 rounded-lg border border-amber-800";

      let solarScore = sVal * 10;
      statSolar.innerText = solarScore >= 70 ? "ì ë ¥ ê³µê¸: íë¶í¨" : "ì ë ¥ ê³µê¸: ìì ì ";

      let foodScore = cVal;
      statFood.innerText = foodScore >= 70 ? "ìë ë³´ì¡´: ìµì (3ì£¼ ì´ì)" : "ìë ë³´ì¡´: ë³´íµ";

      let energyScore = Math.min(100, bVal * 3.3);

      // ì´ì  ê³ì° (4ê°ì§ ìì íê· )
      let totalScore = Math.round((waterScore + solarScore + foodScore + energyScore) / 4);
      scoreDisplay.innerText = totalScore + "ì ";

      // ë¦¬í¬í¸ íì¤í¸ ë³ê²½
      if (totalScore >= 85) {
        reportSummary.innerHTML = "ð <strong>ìë²½í ìë¦½í ìì½ ë§ì ë¬ì±!</strong> ëª¨ëì ìê¸°ë¡ ê¹¨ëí ììë¥¼ ì»ê³ , íìê´ ë°ì ê¸°ë¡ ì ê¸°ë¥¼ ì°ë©°, í­ìë¦¬ ëì¥ê³ ì íí¸ë³ ì êµ¬ë¡ ìëê³¼ ë¹ì íë³´íìµëë¤. ì£¼ë¯¼ë¤ì ì¶ì ì§ì´ ìµê³ ì¡°ì ë¬íìµëë¤!";
      } else if (totalScore >= 65) {
        reportSummary.innerHTML = "ð <strong>ë§ì íê²½ì´ ì¾ì í´ì¡ìµëë¤!</strong> íìê´ ë°ì  ì©ëì´ë ì ì íí° ë¨ê³ë¥¼ ì¡°ê¸ ë ëì¬ë³´ë©´ ë§ì íë³µ ì§ìë¥¼ ê·¹ì ì¼ë¡ ëì´ì¬ë¦´ ì ììµëë¤.";
      } else {
        reportSummary.innerHTML = "â ï¸ <strong>ì£¼ë¯¼ë¤ì´ ì¬ì í ìì ë¶ì¡±ì ê²ªê³  ììµëë¤.</strong> ì¬ë¼ì´ëë¥¼ ì¡°ì í´ íìê´ ë°ì ê¸°ì ì ì ìì¤íì ê°íí´ ì£¼ì¸ì!";
      }

      drawVillage(fVal, sVal, bVal);
    }

    // ìºë²ì¤ ë¹ì£¼ì¼ ë ëë§ (ë§ì ìí íí)
    function drawVillage(f, s, b) {
      ctx.clearRect(0, 0, canvas.width, canvas.height);

      // ë°°ê²½ ê·¸ë¼ë°ì´ì
      let bgGrad = ctx.createLinearGradient(0, 0, 0, canvas.height);
      bgGrad.addColorStop(0, '#0f172a');
      bgGrad.addColorStop(1, '#1e293b');
      ctx.fillStyle = bgGrad;
      ctx.fillRect(0, 0, canvas.width, canvas.height);

      // íìê´ í¨ë ìê°í (ìë¨ì í¨ë ê°ì íí)
      ctx.fillStyle = '#0f766e';
      for(let i=0; i<Math.min(5, Math.ceil(s/2)); i++) {
        ctx.fillRect(40 + i * 45, 30, 35, 20);
        ctx.strokeStyle = '#2dd4bf';
        ctx.strokeRect(40 + i * 45, 30, 35, 20);
      }
      ctx.fillStyle = '#cbd5e1';
      ctx.font = '10px sans-serif';
      ctx.fillText('âï¸ íìê´ ë°ì  ë¨ì§', 40, 20);

      // ì§ 3ì± ê·¸ë¦¬ê¸°
      const houses = [60, 180, 300];
      houses.forEach((hx, idx) => {
        // ì§ ë³¸ì²´
        ctx.fillStyle = '#334155';
        ctx.fillRect(hx, 130, 80, 80);

        // ì§ë¶
        ctx.fillStyle = '#475569';
        ctx.beginPath();
        ctx.moveTo(hx - 10, 130);
        ctx.lineTo(hx + 40, 80);
        ctx.lineTo(hx + 90, 130);
        ctx.fill();

        // íí¸ë³ ì êµ¬ í¨ê³¼ (ì§ë¶ ì ë¹ë¨)
        if (b > idx * 8) {
          ctx.fillStyle = '#fde047';
          ctx.beginPath();
          ctx.arc(hx + 40, 105, 8, 0, Math.PI * 2);
          ctx.fill();

          // ë°© ì ë¶ë¹
          ctx.fillStyle = 'rgba(253, 224, 71, 0.25)';
          ctx.fillRect(hx + 20, 150, 40, 50);
        }
      });

      // ê°ì¤ê¸° (ë¬¼ ì í ìíì ë°ë¼ ìì ë³í)
      ctx.fillStyle = f > 3 ? '#38bdf8' : (f > 2 ? '#0284c7' : '#92400e');
      ctx.beginPath();
      ctx.moveTo(0, 220);
      ctx.bezierCurveTo(150, 200, 300, 250, canvas.width, 210);
      ctx.lineTo(canvas.width, canvas.height);
      ctx.lineTo(0, canvas.height);
      ctx.fill();

      // ê° ì ê¸ì¨
      ctx.fillStyle = '#ffffff';
      ctx.font = '11px sans-serif';
      ctx.fillText(f > 3 ? 'ð§ ëª¨ë ì ìë ìì í ê°ë¬¼' : 'â ï¸ ì ìê° íìí íí ê°ë¬¼', 20, 240);
    }

    // ì´ê¸° ì¤í
    updateSimulation();
  </script>
</body>
</html>
    
