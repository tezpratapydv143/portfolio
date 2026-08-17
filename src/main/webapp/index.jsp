<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tezpratap Yadav — DevOps Engineer</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
  :root{
    --bg:#060a12;
    --bg-2:#0a1120;
    --panel:#0d1420;
    --panel-2:#0f1826;
    --border:#1c2b3f;
    --border-bright:#2a4058;
    --text:#dbe4f0;
    --text-dim:#7f93ab;
    --text-faint:#4c5c72;
    --cyan:#4ce0d2;
    --amber:#ffb454;
    --violet:#8b7fff;
    --red:#ff6b6b;
    --font-display:'Space Grotesk', sans-serif;
    --font-body:'Inter', sans-serif;
    --font-mono:'JetBrains Mono', monospace;
    --maxw:1100px;
  }

  *{margin:0;padding:0;box-sizing:border-box;}

  html{scroll-behavior:smooth;}

  body{
    background:var(--bg);
    color:var(--text);
    font-family:var(--font-body);
    line-height:1.6;
    overflow-x:hidden;
    position:relative;
  }

  ::selection{background:var(--cyan);color:#04101a;}

  a{color:inherit;text-decoration:none;}

  :focus-visible{
    outline:2px solid var(--cyan);
    outline-offset:3px;
    border-radius:2px;
  }

  /* ---------- background grid ---------- */
  #bg-grid{
    position:fixed;
    inset:0;
    z-index:0;
    background-image:
      linear-gradient(var(--border) 1px, transparent 1px),
      linear-gradient(90deg, var(--border) 1px, transparent 1px);
    background-size:56px 56px;
    opacity:.28;
    mask-image:radial-gradient(ellipse 80% 60% at 50% 20%, #000 40%, transparent 90%);
    pointer-events:none;
  }
  #bg-glow{
    position:fixed;
    inset:0;
    z-index:0;
    background:
      radial-gradient(600px 400px at 15% 10%, rgba(76,224,210,.10), transparent 60%),
      radial-gradient(500px 400px at 90% 30%, rgba(139,127,255,.08), transparent 60%);
    pointer-events:none;
  }

  main, header, footer{position:relative;z-index:1;}

  .wrap{max-width:var(--maxw);margin:0 auto;padding:0 28px;}

  .eyebrow{
    font-family:var(--font-mono);
    font-size:.72rem;
    letter-spacing:.14em;
    text-transform:uppercase;
    color:var(--cyan);
    display:flex;
    align-items:center;
    gap:8px;
    margin-bottom:14px;
  }
  .eyebrow::before{
    content:'';
    width:6px;height:6px;border-radius:50%;
    background:var(--cyan);
    box-shadow:0 0 8px var(--cyan);
  }

  h1,h2,h3{font-family:var(--font-display);font-weight:600;letter-spacing:-.01em;}

  /* ---------- nav ---------- */
  nav{
    position:fixed;
    top:0;left:0;right:0;
    z-index:50;
    backdrop-filter:blur(10px);
    background:rgba(6,10,18,.72);
    border-bottom:1px solid var(--border);
  }
  .nav-inner{
    max-width:var(--maxw);
    margin:0 auto;
    padding:16px 28px;
    display:flex;
    align-items:center;
    justify-content:space-between;
  }
  .nav-logo{
    font-family:var(--font-mono);
    font-size:.9rem;
    color:var(--text);
    display:flex;
    align-items:center;
    gap:10px;
  }
  .nav-logo .dot{width:8px;height:8px;border-radius:50%;background:var(--amber);box-shadow:0 0 8px var(--amber);animation:pulse 2.4s infinite;}
  .nav-links{display:flex;gap:26px;font-family:var(--font-mono);font-size:.78rem;color:var(--text-dim);}
  .nav-links a{transition:color .2s;position:relative;}
  .nav-links a:hover{color:var(--cyan);}
  .nav-links a::before{content:'~/';color:var(--text-faint);}
  #nav-toggle{display:none;}
  .burger{display:none;background:none;border:1px solid var(--border-bright);color:var(--text);width:38px;height:38px;border-radius:6px;font-family:var(--font-mono);cursor:pointer;}

  @keyframes pulse{
    0%,100%{opacity:1;transform:scale(1);}
    50%{opacity:.4;transform:scale(.7);}
  }

  /* ---------- hero ---------- */
  header{
    min-height:100vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding-top:90px;
    padding-bottom:60px;
  }

  .terminal{
    font-family:var(--font-mono);
    font-size:.82rem;
    color:var(--text-dim);
    margin-bottom:26px;
    min-height:1.4em;
  }
  .terminal .prompt{color:var(--cyan);}
  .terminal .caret{
    display:inline-block;width:8px;height:1em;
    background:var(--cyan);
    margin-left:2px;
    vertical-align:middle;
    animation:blink 1s steps(1) infinite;
  }
  @keyframes blink{50%{opacity:0;}}

  .hero-title{
    font-size:clamp(2.4rem, 6vw, 4.6rem);
    line-height:1.03;
    margin-bottom:18px;
  }
  .hero-title .accent{
    background:linear-gradient(100deg, var(--cyan), var(--violet) 70%);
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
  }
  .hero-role{
    font-family:var(--font-mono);
    color:var(--text-dim);
    font-size:1.05rem;
    margin-bottom:8px;
  }
  .hero-sub{
    max-width:620px;
    color:var(--text-dim);
    font-size:1rem;
    margin-bottom:34px;
  }

  .hero-cta{display:flex;gap:14px;flex-wrap:wrap;margin-bottom:64px;}
  .btn{
    font-family:var(--font-mono);
    font-size:.82rem;
    padding:13px 22px;
    border-radius:6px;
    border:1px solid var(--border-bright);
    display:inline-flex;
    align-items:center;
    gap:8px;
    transition:all .2s ease;
    cursor:pointer;
    background:transparent;
    color:var(--text);
  }
  .btn.primary{background:var(--cyan);color:#04141a;border-color:var(--cyan);font-weight:600;}
  .btn.primary:hover{box-shadow:0 0 24px rgba(76,224,210,.45);transform:translateY(-1px);}
  .btn:not(.primary):hover{border-color:var(--cyan);color:var(--cyan);}

  /* ---------- pipeline signature ---------- */
  .pipeline{
    border:1px solid var(--border);
    border-radius:12px;
    background:linear-gradient(180deg, var(--panel), var(--panel-2));
    padding:26px 28px 22px;
    position:relative;
    overflow:hidden;
  }
  .pipeline-label{
    font-family:var(--font-mono);
    font-size:.7rem;
    color:var(--text-faint);
    letter-spacing:.1em;
    text-transform:uppercase;
    margin-bottom:20px;
  }
  .pipeline-track{
    position:relative;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 4px;
  }
  .pipeline-track::before{
    content:'';
    position:absolute;
    top:16px;left:20px;right:20px;
    height:2px;
    background:repeating-linear-gradient(90deg, var(--border-bright) 0 6px, transparent 6px 12px);
  }
  .pipeline-track .rail{
    position:absolute;
    top:16px;left:20px;
    height:2px;
    width:0%;
    background:linear-gradient(90deg, var(--cyan), var(--violet));
    box-shadow:0 0 10px var(--cyan);
    animation:fill-rail 6s ease-in-out infinite;
  }
  @keyframes fill-rail{
    0%{width:0%;}
    45%{width:100%;}
    55%{width:100%;}
    100%{width:0%;}
  }
  .stage{
    position:relative;
    z-index:2;
    display:flex;
    flex-direction:column;
    align-items:center;
    gap:10px;
    flex:1;
  }
  .stage .node{
    width:34px;height:34px;
    border-radius:50%;
    background:var(--bg-2);
    border:2px solid var(--border-bright);
    display:flex;align-items:center;justify-content:center;
    font-family:var(--font-mono);
    font-size:.7rem;
    color:var(--text-dim);
  }
  .stage.active .node{
    border-color:var(--cyan);
    color:var(--cyan);
    box-shadow:0 0 14px rgba(76,224,210,.5);
  }
  .stage span.name{
    font-family:var(--font-mono);
    font-size:.68rem;
    color:var(--text-dim);
    letter-spacing:.06em;
    text-transform:uppercase;
  }

  /* ---------- sections ---------- */
  section{padding:110px 0;border-top:1px solid var(--border);}
  .section-head{margin-bottom:48px;max-width:640px;}
  .section-head h2{font-size:clamp(1.7rem,3.4vw,2.3rem);}
  .section-head p{color:var(--text-dim);margin-top:10px;}

  .reveal{opacity:0;transform:translateY(24px);transition:opacity .7s ease, transform .7s ease;}
  .reveal.in{opacity:1;transform:translateY(0);}

  /* about */
  .about-grid{display:grid;grid-template-columns:1.3fr 1fr;gap:36px;align-items:start;}
  .code-panel{
    background:var(--panel);
    border:1px solid var(--border);
    border-radius:10px;
    overflow:hidden;
  }
  .code-panel .bar{
    display:flex;align-items:center;gap:7px;
    padding:11px 16px;
    border-bottom:1px solid var(--border);
    background:var(--panel-2);
  }
  .code-panel .bar span{width:10px;height:10px;border-radius:50%;}
  .code-panel .bar span:nth-child(1){background:#ff6b6b;}
  .code-panel .bar span:nth-child(2){background:#ffb454;}
  .code-panel .bar span:nth-child(3){background:#4ce0d2;}
  .code-panel .bar .fname{margin-left:10px;font-family:var(--font-mono);font-size:.72rem;color:var(--text-faint);}
  .code-panel .body{padding:22px 22px 26px;font-family:var(--font-mono);font-size:.85rem;color:var(--text-dim);}
  .code-panel .body .kw{color:var(--violet);}
  .code-panel .body .str{color:var(--amber);}
  .code-panel .body p{margin-bottom:0;line-height:1.75;color:var(--text);}

  .stat-col{display:flex;flex-direction:column;gap:16px;}
  .stat-card{
    border:1px solid var(--border);
    border-radius:10px;
    padding:18px 20px;
    background:var(--panel);
  }
  .stat-card .num{font-family:var(--font-display);font-size:1.9rem;color:var(--cyan);}
  .stat-card .lbl{font-family:var(--font-mono);font-size:.72rem;color:var(--text-dim);text-transform:uppercase;letter-spacing:.06em;margin-top:4px;}

  /* skills */
  .skill-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:18px;}
  .skill-mod{
    border:1px solid var(--border);
    border-radius:10px;
    background:var(--panel);
    padding:20px 20px 22px;
    transition:border-color .25s, transform .25s;
  }
  .skill-mod:hover{border-color:var(--border-bright);transform:translateY(-3px);}
  .skill-mod .mod-head{
    display:flex;align-items:center;gap:8px;
    font-family:var(--font-mono);
    font-size:.72rem;
    color:var(--text-faint);
    text-transform:uppercase;
    letter-spacing:.08em;
    margin-bottom:14px;
  }
  .skill-mod .mod-head .idx{color:var(--amber);}
  .chip-row{display:flex;flex-wrap:wrap;gap:8px;}
  .chip{
    font-family:var(--font-mono);
    font-size:.74rem;
    padding:6px 10px;
    border-radius:5px;
    border:1px solid var(--border-bright);
    color:var(--text-dim);
    background:var(--bg-2);
    transition:color .2s, border-color .2s;
  }
  .chip:hover{color:var(--cyan);border-color:var(--cyan);}

  /* experience */
  .exp-company{
    display:flex;justify-content:space-between;align-items:baseline;
    margin-bottom:44px;flex-wrap:wrap;gap:8px;
  }
  .exp-company h3{font-size:1.4rem;}
  .exp-company .role-meta{font-family:var(--font-mono);color:var(--text-dim);font-size:.82rem;}

  .exp-line{position:relative;padding-left:34px;}
  .exp-line::before{
    content:'';position:absolute;left:9px;top:8px;bottom:8px;width:2px;
    background:linear-gradient(180deg, var(--cyan), var(--violet));
    opacity:.5;
  }
  .proj{position:relative;margin-bottom:48px;}
  .proj:last-child{margin-bottom:0;}
  .proj::before{
    content:'';position:absolute;left:-34px;top:6px;
    width:18px;height:18px;border-radius:50%;
    background:var(--bg-2);border:2px solid var(--cyan);
    box-shadow:0 0 10px rgba(76,224,210,.5);
  }
  .proj .proj-tag{
    font-family:var(--font-mono);font-size:.68rem;color:var(--cyan);
    text-transform:uppercase;letter-spacing:.08em;margin-bottom:6px;
  }
  .proj h4{font-size:1.15rem;margin-bottom:10px;font-family:var(--font-display);}
  .proj ul{list-style:none;display:flex;flex-direction:column;gap:9px;margin-bottom:14px;}
  .proj li{position:relative;padding-left:20px;color:var(--text-dim);font-size:.94rem;}
  .proj li::before{content:'▹';position:absolute;left:0;color:var(--amber);}
  .proj .tag-row{display:flex;flex-wrap:wrap;gap:7px;}
  .proj .tag-row span{
    font-family:var(--font-mono);font-size:.68rem;color:var(--text-faint);
    border:1px solid var(--border);padding:3px 8px;border-radius:4px;
  }

  /* education */
  .edu-card{
    border:1px solid var(--border);border-radius:10px;background:var(--panel);
    padding:28px 30px;display:grid;grid-template-columns:1fr auto;gap:24px;align-items:center;
  }
  .edu-card h3{font-size:1.2rem;margin-bottom:6px;}
  .edu-card .meta{font-family:var(--font-mono);font-size:.8rem;color:var(--text-dim);margin-bottom:14px;}
  .edu-card .courses{font-size:.86rem;color:var(--text-dim);line-height:1.7;}
  .gpa-gauge{display:flex;flex-direction:column;align-items:center;gap:10px;}
  .gpa-ring{
    width:96px;height:96px;border-radius:50%;
    background:conic-gradient(var(--cyan) 0deg, var(--cyan) calc(var(--pct)*3.6deg), var(--border) calc(var(--pct)*3.6deg));
    display:flex;align-items:center;justify-content:center;
    position:relative;
  }
  .gpa-ring::before{
    content:'';position:absolute;inset:8px;border-radius:50%;background:var(--panel);
  }
  .gpa-ring .val{position:relative;z-index:1;font-family:var(--font-mono);font-size:1.05rem;color:var(--cyan);}
  .gpa-gauge .lbl{font-family:var(--font-mono);font-size:.66rem;color:var(--text-faint);text-transform:uppercase;letter-spacing:.08em;}

  /* research */
  .research-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:18px;}
  .research-card{
    border:1px solid var(--border);border-radius:10px;background:var(--panel);
    padding:22px 24px;display:flex;flex-direction:column;gap:12px;
    transition:border-color .2s, transform .2s;
  }
  .research-card:hover{border-color:var(--cyan);transform:translateY(-3px);}
  .research-card h4{font-size:1.02rem;font-family:var(--font-display);line-height:1.4;}
  .research-card .link-out{
    font-family:var(--font-mono);font-size:.74rem;color:var(--cyan);
    display:inline-flex;align-items:center;gap:6px;margin-top:auto;
  }

  /* contact */
  .contact-panel{
    border:1px solid var(--border);border-radius:12px;
    background:linear-gradient(180deg, var(--panel), var(--panel-2));
    padding:40px 40px 34px;
  }
  .contact-panel .bar{display:flex;gap:7px;margin-bottom:24px;}
  .contact-panel .bar span{width:10px;height:10px;border-radius:50%;}
  .contact-panel .bar span:nth-child(1){background:#ff6b6b;}
  .contact-panel .bar span:nth-child(2){background:#ffb454;}
  .contact-panel .bar span:nth-child(3){background:#4ce0d2;}
  .contact-lines{font-family:var(--font-mono);font-size:.92rem;line-height:2.1;}
  .contact-lines .prompt{color:var(--cyan);}
  .contact-lines .k{color:var(--violet);}
  .contact-lines a{color:var(--text);border-bottom:1px dashed var(--border-bright);transition:color .2s,border-color .2s;}
  .contact-lines a:hover{color:var(--cyan);border-color:var(--cyan);}
  .copy-btn{
    font-family:var(--font-mono);font-size:.68rem;color:var(--text-faint);
    border:1px solid var(--border-bright);background:none;border-radius:4px;
    padding:2px 7px;margin-left:8px;cursor:pointer;transition:color .2s,border-color .2s;
  }
  .copy-btn:hover{color:var(--cyan);border-color:var(--cyan);}

  footer{
    padding:36px 0 46px;
    text-align:center;
    font-family:var(--font-mono);
    font-size:.74rem;
    color:var(--text-faint);
  }

  /* responsive */
  @media (max-width:820px){
    .about-grid{grid-template-columns:1fr;}
    .edu-card{grid-template-columns:1fr;}
    .gpa-gauge{flex-direction:row;justify-content:flex-start;}
  }
  @media (max-width:680px){
    .nav-links{
      position:fixed;top:64px;left:0;right:0;
      flex-direction:column;gap:0;
      background:rgba(6,10,18,.98);
      border-bottom:1px solid var(--border);
      max-height:0;overflow:hidden;
      transition:max-height .3s ease;
    }
    .nav-links a{padding:16px 28px;border-bottom:1px solid var(--border);}
    #nav-toggle:checked ~ .nav-links{max-height:400px;}
    .burger{display:block;}
    .pipeline-track{flex-wrap:wrap;row-gap:20px;}
    .pipeline-track::before,.pipeline-track .rail{display:none;}
    .stage{flex:0 0 30%;}
  }

  @media (prefers-reduced-motion: reduce){
    *{animation-duration:.001ms !important;animation-iteration-count:1 !important;transition-duration:.001ms !important;}
    html{scroll-behavior:auto;}
  }
</style>
</head>
<body>

<div id="bg-grid"></div>
<div id="bg-glow"></div>

<nav>
  <div class="nav-inner">
    <div class="nav-logo"><span class="dot"></span>Tezpratap Yadav</div>
    <input type="checkbox" id="nav-toggle">
    <div class="nav-links">
      <a href="#about">about</a>
      <a href="#skills">skills</a>
      <a href="#experience">experience</a>
      <a href="#education">education</a>
      <a href="#research">research</a>
      <a href="#contact">contact</a>
    </div>
    <label for="nav-toggle" class="burger">☰</label>
  </div>
</nav>

<header>
  <div class="wrap">
    <div class="terminal">
      <span class="prompt">SUMMARY : </span><span id="typed"></span><span class="caret"></span>
    </div>

    <h1 class="hero-title">Tezpratap Yadav<br><span class="accent">builds pipelines that ship themselves.</span></h1>
    <div class="hero-role">DevOps Engineer — Cogito Tech</div>
    <p class="hero-sub">1+ years automating CI/CD pipelines and cloud infrastructure for enterprise and AI/robotics data platforms. Docker, Kubernetes, Jenkins, Terraform, Ansible, AWS — from build to blue-green deploy.</p>

    <div class="hero-cta">
      <a class="btn primary" href="#contact">Get in touch</a>
      <a class="btn" href="#experience">View pipeline history</a>
    </div>

    <div class="pipeline reveal">
      <div class="pipeline-label">// live_deploy_status.sh</div>
      <div class="pipeline-track">
        <div class="rail"></div>
        <div class="stage active"><div class="node">01</div><span class="name">Build</span></div>
        <div class="stage active"><div class="node">02</div><span class="name">Test</span></div>
        <div class="stage active"><div class="node">03</div><span class="name">Deploy</span></div>
        <div class="stage active"><div class="node">04</div><span class="name">Monitor</span></div>
      </div>
    </div>
  </div>
</header>

<main>

  <section id="about">
    <div class="wrap">
      <div class="section-head reveal">
        <div class="eyebrow">01 // about</div>
        <h2>Professional summary</h2>
      </div>
      <div class="about-grid">
        <div class="code-panel reveal">
          <div class="bar"><span></span><span></span><span></span><span class="fname">professional_summary.md</span></div>
          <div class="body">
            <p><span class="kw">DevOps Engineer</span> with <span class="str">1+ years</span> of professional experience designing, automating, and maintaining scalable CI/CD pipelines and cloud infrastructure for enterprise applications. Proficient in Docker, Kubernetes, Jenkins, Terraform, Ansible, AWS, and Linux system administration, with hands-on experience in containerization, infrastructure as code, and configuration management.</p>
            <br>
            <p>Skilled in building automated build-test-deploy pipelines, managing version control workflows with Git/GitHub, and orchestrating microservices-based deployments using Kubernetes. Experienced in implementing monitoring and logging solutions to ensure system reliability and observability.</p>
          </div>
        </div>
        <div class="stat-col reveal">
          <div class="stat-card"><div class="num">1+ yrs</div><div class="lbl">DevOps experience</div></div>
          <div class="stat-card"><div class="num">2</div><div class="lbl">Production data platforms shipped</div></div>
          <div class="stat-card"><div class="num">8.2</div><div class="lbl">MCA GPA / 10</div></div>
        </div>
      </div>
    </div>
  </section>

  <section id="skills">
    <div class="wrap">
      <div class="section-head reveal">
        <div class="eyebrow">02 // stack</div>
        <h2>Technical skills</h2>
        <p>The tools that carry a build from commit to production.</p>
      </div>
      <div class="skill-grid">
        <div class="skill-mod reveal">
          <div class="mod-head"><span class="idx">$</span> language</div>
          <div class="chip-row">
            <span class="chip">Java</span><span class="chip">SQL</span>
          </div>
        </div>
        <div class="skill-mod reveal">
          <div class="mod-head"><span class="idx">$</span> back-end</div>
          <div class="chip-row">
            <span class="chip">Spring Boot</span><span class="chip">Spring MVC</span><span class="chip">Spring Security</span><span class="chip">Spring Data JPA</span><span class="chip">Spring Batch</span><span class="chip">Bean Validation</span><span class="chip">REST APIs</span><span class="chip">Microservices</span>
          </div>
        </div>
        <div class="skill-mod reveal">
          <div class="mod-head"><span class="idx">$</span> cloud &amp; devops</div>
          <div class="chip-row">
            <span class="chip">AWS EC2</span><span class="chip">IAM</span><span class="chip">S3</span><span class="chip">RDS</span><span class="chip">Route53</span><span class="chip">VPC</span><span class="chip">CloudWatch</span><span class="chip">ELB</span><span class="chip">Linux</span><span class="chip">Docker</span><span class="chip">Kubernetes</span><span class="chip">Jenkins</span><span class="chip">Blue-Green Deploy</span>
          </div>
        </div>
        <div class="skill-mod reveal">
          <div class="mod-head"><span class="idx">$</span> tools</div>
          <div class="chip-row">
            <span class="chip">Maven</span><span class="chip">Git</span><span class="chip">GitHub</span><span class="chip">Bitbucket</span><span class="chip">Jira</span><span class="chip">SonarQube</span><span class="chip">MobaXterm</span><span class="chip">PuTTY</span><span class="chip">Terraform</span><span class="chip">Ansible</span>
          </div>
        </div>
        <div class="skill-mod reveal">
          <div class="mod-head"><span class="idx">$</span> database</div>
          <div class="chip-row">
            <span class="chip">MySQL</span><span class="chip">AWS RDS</span><span class="chip">H2 Database</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="experience">
    <div class="wrap">
      <div class="section-head reveal">
        <div class="eyebrow">03 // history</div>
        <h2>Professional experience</h2>
      </div>

      <div class="exp-company reveal">
        <h3>DevOps Engineer — Cogito Tech</h3>
        <div class="role-meta">August 2024 — Present</div>
      </div>

      <div class="exp-line">
        <div class="proj reveal">
          <div class="proj-tag">Project // Samurai</div>
          <h4>AI / Robotics dataset delivery &amp; automation platform</h4>
          <ul>
            <li>Built "Samurai" to securely deliver AI/robot training datasets from internal systems to client applications, using Docker for containerization and AWS (S3, EC2, EBS, IAM) for scalable, secure data storage and transfer.</li>
            <li>Configured EBS volumes and snapshots for reliable data backup and recovery, and used an Elastic Load Balancer to distribute traffic and keep the data delivery service highly available.</li>
            <li>Automated deployment with Jenkins CI/CD pipelines, improving the speed and reliability of dataset delivery to clients.</li>
            <li>Integrated rotary encoder sensors mounted on robotic hardware to capture real-time distance/positional data, improving the precision of datasets delivered for AI/robot training.</li>
          </ul>
          <div class="tag-row"><span>Docker</span><span>AWS S3</span><span>EC2</span><span>EBS</span><span>IAM</span><span>ELB</span><span>Jenkins</span></div>
        </div>

        <div class="proj reveal">
          <div class="proj-tag">Project // Scientific</div>
          <h4>AI dataset platform for robot motion training</h4>
          <ul>
            <li>Built and deployed "Scientific," an application to process and deliver structured datasets for training AI models on precise robotic movement and action sequences — deployed on AWS (EC2, S3, IAM) for scalable, secure hosting.</li>
            <li>Containerized the application with Docker and automated deployment pipelines with Jenkins CI/CD, ensuring consistent releases and faster iteration cycles.</li>
            <li>Configured EBS volumes/snapshots for data backup and an Elastic Load Balancer for high availability, keeping training datasets reliably accessible across environments.</li>
            <li>Integrated a palm detection and measurement validation tool using a caliper-based measurement approach to verify the accuracy of collected hand/palm data before use in AI training.</li>
          </ul>
          <div class="tag-row"><span>Docker</span><span>AWS EC2</span><span>S3</span><span>IAM</span><span>Jenkins</span><span>EBS</span><span>ELB</span></div>
        </div>
      </div>
    </div>
  </section>

  <section id="education">
    <div class="wrap">
      <div class="section-head reveal">
        <div class="eyebrow">04 // education</div>
        <h2>Education</h2>
      </div>
      <div class="edu-card reveal">
        <div>
          <h3>Master of Computer Applications (MCA)</h3>
          <div class="meta">Sharda University · Aug 2022 — June 2024</div>
          <div class="courses">Database Management Systems, Operating Systems, Computer Networks, Cryptography &amp; Network Security, Data Structures &amp; Algorithm Analysis, Java, Python, Web &amp; its Applications.</div>
        </div>
        <div class="gpa-gauge">
          <div class="gpa-ring" style="--pct:82;"><span class="val">8.2</span></div>
          <span class="lbl">GPA / 10</span>
        </div>
      </div>
    </div>
  </section>

  <section id="research">
    <div class="wrap">
      <div class="section-head reveal">
        <div class="eyebrow">05 // research</div>
        <h2>Research interests</h2>
      </div>
      <div class="research-grid">
        <a class="research-card reveal" href="https://ymerdigital.com/archives/?cpage=3&issId=%202304" target="_blank" rel="noopener">
          <h4>BharatFix: Connecting India's Service — One Click</h4>
          <span class="link-out">↗ ymerdigital.com</span>
        </a>
        <a class="research-card reveal" href="https://ymerdigital.com/archives/?cpage=3&issId=%202304" target="_blank" rel="noopener">
          <h4>Advances in Smart Environment Monitoring Systems Using IoT and Sensors</h4>
          <span class="link-out">↗ ymerdigital.com</span>
        </a>
      </div>
    </div>
  </section>

  <section id="contact">
    <div class="wrap">
      <div class="section-head reveal">
        <div class="eyebrow">06 // contact</div>
        <h2>Let's ship something</h2>
      </div>
      <div class="contact-panel reveal">
        <div class="bar"><span></span><span></span><span></span></div>
        <div class="contact-lines">
          <div><span class="prompt">tez@infra</span>:~$ cat contact.json</div>
          <div>{</div>
          <div>&nbsp;&nbsp;<span class="k">"email"</span>: <a href="mailto:tezpratapydv143@gmail.com">tezpratapydv143@gmail.com</a> <button class="copy-btn" onclick="copyText('tezpratapydv143@gmail.com', this)">copy</button>,</div>
          <div>&nbsp;&nbsp;<span class="k">"phone"</span>: <a href="tel:+918271119104">+91-8271119104</a> <button class="copy-btn" onclick="copyText('+918271119104', this)">copy</button>,</div>
          <div>&nbsp;&nbsp;<span class="k">"status"</span>: "open to opportunities"</div>
          <div>}</div>
        </div>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">© 2026 Tezpratap Yadav — built with HTML, CSS &amp; JavaScript, no frameworks.</div>
</footer>

<script>
  // typing effect
  (function(){
    var text = " I am Tezpratap Yadav having 1+ yrs of professional experience as a DevOps Engineer with AWS, Jenkins(CI/CD), Kubernetes, Docker, Terraform, Ansible, Linux.";
    var el = document.getElementById('typed');
    var i = 0;
    var reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if(reduce){ el.textContent = text; return; }
    function tick(){
      if(i <= text.length){
        el.textContent = text.slice(0, i);
        i++;
        setTimeout(tick, 32);
      }
    }
    tick();
  })();

  // scroll reveal
  (function(){
    var items = document.querySelectorAll('.reveal');
    var observer = new IntersectionObserver(function(entries){
      entries.forEach(function(entry){
        if(entry.isIntersecting){
          entry.target.classList.add('in');
          observer.unobserve(entry.target);
        }
      });
    }, {threshold:.15});
    items.forEach(function(item){ observer.observe(item); });
  })();

  // close mobile nav on link click
  document.querySelectorAll('.nav-links a').forEach(function(a){
    a.addEventListener('click', function(){
      document.getElementById('nav-toggle').checked = false;
    });
  });

  // copy to clipboard
  function copyText(text, btn){
    navigator.clipboard.writeText(text).then(function(){
      var old = btn.textContent;
      btn.textContent = 'copied';
      setTimeout(function(){ btn.textContent = old; }, 1400);
    });
  }
</script>

</body>
</html>
