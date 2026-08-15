<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Tezpratap Yadav | DevOps Engineer</title>

    <meta name="description"
          content="Tezpratap Yadav - DevOps Engineer specializing in AWS, Docker, Kubernetes, Jenkins, Terraform, Ansible and CI/CD.">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600;700&display=swap"
          rel="stylesheet">

    <style>

        /* =========================================================
           GLOBAL
        ========================================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        :root {
            --bg: #05070d;
            --bg2: #080d17;
            --card: rgba(10, 18, 30, 0.72);
            --border: rgba(0, 229, 255, 0.18);

            --cyan: #00e5ff;
            --blue: #387cff;
            --purple: #9b5cff;
            --green: #00ff9d;

            --text: #f2f7ff;
            --muted: #91a0b8;

            --mono: "JetBrains Mono", monospace;
            --font: "Inter", sans-serif;
        }

        body {
            background: var(--bg);
            color: var(--text);
            font-family: var(--font);
            overflow-x: hidden;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        ::selection {
            background: var(--cyan);
            color: #000;
        }


        /* =========================================================
           BACKGROUND
        ========================================================= */

        body::before {
            content: "";
            position: fixed;
            inset: 0;

            background-image:
                linear-gradient(rgba(0,229,255,0.035) 1px, transparent 1px),
                linear-gradient(90deg, rgba(0,229,255,0.035) 1px, transparent 1px);

            background-size: 50px 50px;

            pointer-events: none;
            z-index: -3;
        }

        body::after {
            content: "";

            position: fixed;
            width: 600px;
            height: 600px;

            background: rgba(0,229,255,0.08);

            filter: blur(140px);

            border-radius: 50%;

            top: -250px;
            right: -200px;

            z-index: -2;
        }


        /* =========================================================
           NAVBAR
        ========================================================= */

        nav {
            position: fixed;

            top: 0;
            left: 0;

            width: 100%;

            padding: 20px 7%;

            display: flex;
            align-items: center;
            justify-content: space-between;

            background: rgba(5,7,13,0.72);

            backdrop-filter: blur(18px);

            border-bottom: 1px solid rgba(255,255,255,0.06);

            z-index: 1000;
        }

        .logo {
            font-family: var(--mono);

            font-size: 20px;
            font-weight: 700;

            color: var(--cyan);
        }

        .logo span {
            color: white;
        }

        .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }

        .nav-links a {
            font-family: var(--mono);

            font-size: 13px;

            color: var(--muted);

            transition: 0.3s;
        }

        .nav-links a:hover {
            color: var(--cyan);
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            min-height: 100vh;

            padding: 150px 7% 80px;

            display: flex;
            align-items: center;

            position: relative;
        }

        .hero-container {
            width: 100%;
            max-width: 1300px;

            margin: auto;

            display: grid;
            grid-template-columns: 1.2fr 0.8fr;

            gap: 70px;

            align-items: center;
        }

        .terminal-label {
            font-family: var(--mono);

            color: var(--green);

            font-size: 14px;

            margin-bottom: 20px;
        }

        .terminal-label::before {
            content: "➜ ";
            color: var(--cyan);
        }

        .hero h1 {
            font-size: clamp(45px, 7vw, 90px);

            line-height: 0.95;

            letter-spacing: -4px;

            margin-bottom: 25px;
        }

        .hero h1 span {
            background: linear-gradient(
                    90deg,
                    var(--cyan),
                    var(--blue),
                    var(--purple)
            );

            -webkit-background-clip: text;
            color: transparent;
        }

        .hero h2 {
            font-family: var(--mono);

            font-size: clamp(20px, 3vw, 30px);

            color: #d5dfed;

            margin-bottom: 25px;
        }

        .hero-description {
            color: var(--muted);

            max-width: 650px;

            line-height: 1.8;

            font-size: 16px;

            margin-bottom: 35px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 13px 23px;

            border: 1px solid var(--border);

            border-radius: 8px;

            font-family: var(--mono);

            font-size: 13px;

            transition: 0.3s;

            cursor: pointer;
        }

        .btn-primary {
            background: linear-gradient(
                    90deg,
                    var(--cyan),
                    var(--blue)
            );

            color: #020509;

            border: none;

            font-weight: 700;
        }

        .btn:hover {
            transform: translateY(-4px);

            box-shadow:
                    0 10px 30px rgba(0,229,255,0.15);
        }


        /* =========================================================
           TERMINAL
        ========================================================= */

        .terminal {
            background: rgba(4,9,16,0.9);

            border: 1px solid rgba(0,229,255,0.2);

            border-radius: 14px;

            overflow: hidden;

            box-shadow:
                    0 30px 80px rgba(0,0,0,0.5),
                    0 0 60px rgba(0,229,255,0.05);
        }

        .terminal-header {
            padding: 12px 16px;

            background: #0c131f;

            display: flex;
            align-items: center;

            gap: 8px;
        }

        .dot {
            width: 11px;
            height: 11px;

            border-radius: 50%;

            background: #333;
        }

        .dot:nth-child(1) {
            background: #ff5f57;
        }

        .dot:nth-child(2) {
            background: #febc2e;
        }

        .dot:nth-child(3) {
            background: #28c840;
        }

        .terminal-body {
            padding: 25px;

            font-family: var(--mono);

            font-size: 13px;

            line-height: 2;
        }

        .green {
            color: var(--green);
        }

        .cyan {
            color: var(--cyan);
        }

        .purple {
            color: var(--purple);
        }

        .terminal-line {
            color: #bdc8d9;
        }


        /* =========================================================
           SECTION
        ========================================================= */

        section {
            padding: 110px 7%;
        }

        .section-container {
            max-width: 1300px;
            margin: auto;
        }

        .section-label {
            font-family: var(--mono);

            color: var(--cyan);

            font-size: 13px;

            margin-bottom: 10px;
        }

        .section-title {
            font-size: clamp(32px, 5vw, 55px);

            margin-bottom: 60px;

            letter-spacing: -2px;
        }


        /* =========================================================
           ABOUT
        ========================================================= */

        .about-grid {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 30px;
        }

        .glass-card {
            background: var(--card);

            border: 1px solid var(--border);

            border-radius: 16px;

            padding: 30px;

            backdrop-filter: blur(12px);

            transition: 0.35s;
        }

        .glass-card:hover {
            transform: translateY(-7px);

            border-color: rgba(0,229,255,0.45);

            box-shadow:
                    0 20px 50px rgba(0,0,0,0.25);
        }

        .glass-card h3 {
            margin-bottom: 18px;

            color: var(--cyan);
        }

        .glass-card p {
            color: var(--muted);

            line-height: 1.8;
        }


        /* =========================================================
           SKILLS
        ========================================================= */

        .skills-grid {
            display: grid;

            grid-template-columns:
                    repeat(auto-fit, minmax(240px, 1fr));

            gap: 20px;
        }

        .skill-card {
            padding: 25px;

            background: linear-gradient(
                    145deg,
                    rgba(13,25,40,0.85),
                    rgba(7,12,20,0.8)
            );

            border: 1px solid var(--border);

            border-radius: 14px;

            transition: 0.3s;
        }

        .skill-card:hover {
            transform: translateY(-8px);

            border-color: var(--cyan);
        }

        .skill-icon {
            font-size: 30px;

            margin-bottom: 18px;
        }

        .skill-card h3 {
            margin-bottom: 8px;
        }

        .skill-card p {
            color: var(--muted);

            font-size: 14px;

            line-height: 1.6;
        }


        /* =========================================================
           PROJECTS
        ========================================================= */

        .projects {
            display: grid;

            grid-template-columns:
                    repeat(auto-fit, minmax(350px, 1fr));

            gap: 30px;
        }

        .project-card {
            position: relative;

            padding: 32px;

            min-height: 390px;

            background:
                    linear-gradient(
                            145deg,
                            rgba(13,25,40,0.9),
                            rgba(5,9,16,0.95)
                    );

            border: 1px solid var(--border);

            border-radius: 18px;

            overflow: hidden;

            transition: 0.4s;
        }

        .project-card::before {
            content: "";

            position: absolute;

            width: 200px;
            height: 200px;

            background: var(--cyan);

            opacity: 0.06;

            filter: blur(80px);

            top: -80px;
            right: -80px;
        }

        .project-card:hover {
            transform: translateY(-10px);

            border-color: var(--cyan);
        }

        .project-number {
            font-family: var(--mono);

            color: var(--cyan);

            font-size: 13px;

            margin-bottom: 25px;
        }

        .project-card h3 {
            font-size: 26px;

            margin-bottom: 15px;
        }

        .project-card p {
            color: var(--muted);

            line-height: 1.7;

            margin-bottom: 25px;
        }

        .tags {
            display: flex;

            flex-wrap: wrap;

            gap: 8px;
        }

        .tag {
            font-family: var(--mono);

            font-size: 11px;

            padding: 7px 10px;

            border-radius: 5px;

            color: var(--cyan);

            background: rgba(0,229,255,0.07);

            border: 1px solid rgba(0,229,255,0.15);
        }


        /* =========================================================
           PIPELINE
        ========================================================= */

        .pipeline {
            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 10px;

            margin-top: 30px;

            flex-wrap: wrap;
        }

        .pipeline-item {
            flex: 1;

            min-width: 120px;

            text-align: center;

            padding: 18px 10px;

            border: 1px solid var(--border);

            border-radius: 10px;

            font-family: var(--mono);

            font-size: 12px;

            color: var(--muted);
        }

        .pipeline-item strong {
            display: block;

            color: var(--cyan);

            margin-bottom: 7px;
        }


        /* =========================================================
           EXPERIENCE
        ========================================================= */

        .timeline {
            border-left: 2px solid rgba(0,229,255,0.2);

            padding-left: 35px;
        }

        .timeline-item {
            position: relative;

            margin-bottom: 45px;
        }

        .timeline-item::before {
            content: "";

            position: absolute;

            left: -43px;
            top: 4px;

            width: 14px;
            height: 14px;

            background: var(--cyan);

            border-radius: 50%;

            box-shadow:
                    0 0 20px var(--cyan);
        }

        .timeline-date {
            font-family: var(--mono);

            color: var(--green);

            font-size: 13px;

            margin-bottom: 8px;
        }

        .timeline-item h3 {
            font-size: 23px;

            margin-bottom: 5px;
        }

        .timeline-item h4 {
            color: var(--cyan);

            margin-bottom: 15px;
        }

        .timeline-item p {
            color: var(--muted);

            line-height: 1.8;
        }


        /* =========================================================
           STATS
        ========================================================= */

        .stats {
            display: grid;

            grid-template-columns:
                    repeat(4, 1fr);

            gap: 20px;

            margin-top: 60px;
        }

        .stat {
            text-align: center;

            padding: 30px;

            border: 1px solid var(--border);

            background: var(--card);

            border-radius: 14px;
        }

        .stat-number {
            font-size: 40px;

            font-weight: 800;

            color: var(--cyan);
        }

        .stat p {
            color: var(--muted);

            margin-top: 5px;
        }


        /* =========================================================
           EDUCATION
        ========================================================= */

        .education-card {
            display: flex;

            justify-content: space-between;

            gap: 30px;

            align-items: center;
        }

        .education-card h3 {
            font-size: 25px;

            margin-bottom: 8px;
        }

        .education-card p {
            color: var(--muted);

            line-height: 1.7;
        }

        .gpa {
            font-family: var(--mono);

            color: var(--green);

            white-space: nowrap;
        }


        /* =========================================================
           CONTACT
        ========================================================= */

        .contact {
            text-align: center;

            max-width: 800px;

            margin: auto;
        }

        .contact h2 {
            font-size: clamp(35px, 6vw, 65px);

            margin-bottom: 20px;
        }

        .contact p {
            color: var(--muted);

            line-height: 1.8;

            margin-bottom: 30px;
        }

        .contact-links {
            display: flex;

            justify-content: center;

            flex-wrap: wrap;

            gap: 15px;
        }


        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            border-top: 1px solid rgba(255,255,255,0.06);

            padding: 30px 7%;

            text-align: center;

            color: var(--muted);

            font-family: var(--mono);

            font-size: 12px;
        }


        /* =========================================================
           ANIMATION
        ========================================================= */

        .reveal {
            opacity: 0;

            transform: translateY(30px);

            transition: 0.8s ease;
        }

        .reveal.active {
            opacity: 1;

            transform: translateY(0);
        }


        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 900px) {

            .hero-container {
                grid-template-columns: 1fr;
            }

            .about-grid {
                grid-template-columns: 1fr;
            }

            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .nav-links {
                display: none;
            }

        }

        @media (max-width: 600px) {

            section {
                padding: 80px 5%;
            }

            .hero {
                padding: 130px 5% 70px;
            }

            .hero h1 {
                letter-spacing: -2px;
            }

            .projects {
                grid-template-columns: 1fr;
            }

            .stats {
                grid-template-columns: 1fr;
            }

            .education-card {
                flex-direction: column;
                align-items: flex-start;
            }

            .pipeline {
                flex-direction: column;
            }

            .pipeline-item {
                width: 100%;
            }
        }

    </style>
</head>

<body>


<!-- =========================================================
     NAVBAR
========================================================= -->

<nav>

    <div class="logo">
        TEZ<span>PRATAP</span>
    </div>

    <ul class="nav-links">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#skills">SKILLS</a></li>
        <li><a href="#projects">PROJECTS</a></li>
        <li><a href="#experience">EXPERIENCE</a></li>
        <li><a href="#contact">CONTACT</a></li>
    </ul>

</nav>


<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="hero-container">

        <div>

            <div class="terminal-label">
                devops.engineer --status=online
            </div>

            <h1>
                Saurabh<br>
                <span>Kumar</span>
            </h1>

            <h2>
                DevOps Engineer / Cloud Engineer
            </h2>

            <p class="hero-description">

                I design, automate and maintain scalable cloud infrastructure
                and CI/CD pipelines using AWS, Docker, Kubernetes, Jenkins,
                Terraform and Ansible.

            </p>

            <div class="hero-buttons">

                <a href="#projects"
                   class="btn btn-primary">
                    VIEW PROJECTS
                </a>

                <a href="#contact"
                   class="btn">
                    CONTACT ME
                </a>

            </div>

        </div>


        <!-- TERMINAL -->

        <div class="terminal">

            <div class="terminal-header">

                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>

            </div>

            <div class="terminal-body">

                <div class="terminal-line">
                    <span class="green">tezpratap@devops</span>:~$
                    whoami
                </div>

                <div class="cyan">
                    DevOps Engineer
                </div>

                <br>

                <div class="terminal-line">
                    <span class="green">tezpratap@devops</span>:~$
                    kubectl get services
                </div>

                <div class="purple">
                    AWS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RUNNING
                </div>

                <div class="purple">
                    JENKINS&nbsp;&nbsp;RUNNING
                </div>

                <div class="purple">
                    DOCKER&nbsp;&nbsp;&nbsp;RUNNING
                </div>

                <div class="purple">
                    K8S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RUNNING
                </div>

                <br>

                <div class="terminal-line">
                    <span class="green">tezpratap@devops</span>:~$
                    deploy --production
                </div>

                <div class="green">
                    ✔ deployment successful
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     ABOUT
========================================================= -->

<section id="about">

    <div class="section-container">

        <div class="section-label">
            01 / ABOUT
        </div>

        <h2 class="section-title">
            Engineering reliable<br>
            <span style="color:#00e5ff;">
                infrastructure.
            </span>
        </h2>

        <div class="about-grid">

            <div class="glass-card reveal">

                <h3>
                    Who I Am
                </h3>

                <p>
                    DevOps Engineer with 1+ years of professional
                    experience in designing, automating and maintaining
                    scalable CI/CD pipelines and cloud infrastructure
                    for enterprise applications.
                </p>

            </div>


            <div class="glass-card reveal">

                <h3>
                    What I Build
                </h3>

                <p>
                    I work with containerized applications, AWS cloud
                    infrastructure, Infrastructure as Code, automated
                    deployments, configuration management, monitoring
                    and microservices-based environments.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     SKILLS
========================================================= -->

<section id="skills">

    <div class="section-container">

        <div class="section-label">
            02 / TECH STACK
        </div>

        <h2 class="section-title">
            My DevOps Arsenal
        </h2>


        <div class="skills-grid">


            <div class="skill-card reveal">

                <div class="skill-icon">☁️</div>

                <h3>AWS</h3>

                <p>
                    EC2 · S3 · IAM · RDS · VPC ·
                    Route53 · CloudWatch · ELB · EBS
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">🐳</div>

                <h3>Docker</h3>

                <p>
                    Application containerization,
                    portable environments and
                    deployment workflows.
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">☸️</div>

                <h3>Kubernetes</h3>

                <p>
                    Container orchestration,
                    microservices deployments
                    and scalable workloads.
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">⚙️</div>

                <h3>Jenkins</h3>

                <p>
                    Automated build, test and
                    deployment pipelines for
                    enterprise applications.
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">🏗️</div>

                <h3>Terraform</h3>

                <p>
                    Infrastructure as Code,
                    repeatable cloud infrastructure
                    and automation.
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">🔧</div>

                <h3>Ansible</h3>

                <p>
                    Configuration management,
                    automation and server
                    provisioning.
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">🐧</div>

                <h3>Linux</h3>

                <p>
                    Server administration,
                    troubleshooting, services,
                    permissions and shell operations.
                </p>

            </div>


            <div class="skill-card reveal">

                <div class="skill-icon">🔀</div>

                <h3>Git / GitHub</h3>

                <p>
                    Version control, branching,
                    collaboration and CI/CD
                    source management.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     CI/CD PIPELINE
========================================================= -->

<section>

    <div class="section-container">

        <div class="section-label">
            AUTOMATION
        </div>

        <h2 class="section-title">
            CI/CD Pipeline
        </h2>

        <div class="glass-card">

            <div class="pipeline">

                <div class="pipeline-item">
                    <strong>01</strong>
                    Git
                </div>

                <div class="pipeline-item">
                    <strong>02</strong>
                    Build
                </div>

                <div class="pipeline-item">
                    <strong>03</strong>
                    Test
                </div>

                <div class="pipeline-item">
                    <strong>04</strong>
                    Docker
                </div>

                <div class="pipeline-item">
                    <strong>05</strong>
                    Jenkins
                </div>

                <div class="pipeline-item">
                    <strong>06</strong>
                    AWS
                </div>

                <div class="pipeline-item">
                    <strong>07</strong>
                    Deploy
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     PROJECTS
========================================================= -->

<section id="projects">

    <div class="section-container">

        <div class="section-label">
            03 / PROJECTS
        </div>

        <h2 class="section-title">
            Systems I've Built
        </h2>


        <div class="projects">


            <!-- SAMURAI -->

            <div class="project-card reveal">

                <div class="project-number">
                    PROJECT_01
                </div>

                <h3>
                    Samurai
                </h3>

                <p>
                    AI/Robotics Dataset Delivery &
                    Automation Platform designed to
                    securely deliver training datasets
                    from internal systems to client
                    applications.
                </p>

                <p>
                    Built using Docker and AWS with
                    S3, EC2, EBS, IAM and ELB.
                    Deployment was automated using
                    Jenkins CI/CD.
                </p>

                <div class="tags">

                    <span class="tag">AWS</span>
                    <span class="tag">EC2</span>
                    <span class="tag">S3</span>
                    <span class="tag">EBS</span>
                    <span class="tag">IAM</span>
                    <span class="tag">ELB</span>
                    <span class="tag">Docker</span>
                    <span class="tag">Jenkins</span>

                </div>

            </div>


            <!-- SCIENTIFIC -->

            <div class="project-card reveal">

                <div class="project-number">
                    PROJECT_02
                </div>

                <h3>
                    Scientific
                </h3>

                <p>
                    AI Dataset Platform designed to
                    process and deliver structured datasets
                    used for training AI models on precise
                    robotic movement and action sequences.
                </p>

                <p>
                    Deployed on AWS and containerized
                    using Docker with automated Jenkins
                    CI/CD pipelines.
                </p>

                <div class="tags">

                    <span class="tag">AWS</span>
                    <span class="tag">EC2</span>
                    <span class="tag">S3</span>
                    <span class="tag">IAM</span>
                    <span class="tag">EBS</span>
                    <span class="tag">ELB</span>
                    <span class="tag">Docker</span>
                    <span class="tag">Jenkins</span>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     EXPERIENCE
========================================================= -->

<section id="experience">

    <div class="section-container">

        <div class="section-label">
            04 / EXPERIENCE
        </div>

        <h2 class="section-title">
            Career Timeline
        </h2>


        <div class="timeline">


            <div class="timeline-item reveal">

                <div class="timeline-date">
                    AUG 2024 — PRESENT
                </div>

                <h3>
                    DevOps Engineer
                </h3>

                <h4>
                    Cogito Tech
                </h4>

                <p>
                    Designing and maintaining cloud infrastructure,
                    automating deployment pipelines and supporting
                    enterprise AI/robotics dataset platforms.
                    Working with AWS, Docker, Jenkins, EBS,
                    S3, IAM and ELB to create scalable and
                    reliable deployment environments.
                </p>

            </div>


            <div class="timeline-item reveal">

                <div class="timeline-date">
                    CONTINUOUS LEARNING
                </div>

                <h3>
                    Cloud & DevOps Engineering
                </h3>

                <h4>
                    Infrastructure Automation
                </h4>

                <p>
                    Hands-on experience with Kubernetes,
                    Terraform, Ansible, Linux administration,
                    Git/GitHub, CI/CD automation and
                    microservices-based deployments.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     STATS
========================================================= -->

<section>

    <div class="section-container">

        <div class="stats">

            <div class="stat reveal">

                <div class="stat-number">
                    1+
                </div>

                <p>
                    Years Experience
                </p>

            </div>


            <div class="stat reveal">

                <div class="stat-number">
                    2
                </div>

                <p>
                    Major Projects
                </p>

            </div>


            <div class="stat reveal">

                <div class="stat-number">
                    10+
                </div>

                <p>
                    DevOps Technologies
                </p>

            </div>


            <div class="stat reveal">

                <div class="stat-number">
                    AWS
                </div>

                <p>
                    Cloud Platform
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     EDUCATION
========================================================= -->

<section>

    <div class="section-container">

        <div class="section-label">
            05 / EDUCATION
        </div>

        <h2 class="section-title">
            Academic Foundation
        </h2>


        <div class="glass-card education-card reveal">

            <div>

                <h3>
                    Master of Computer Applications
                </h3>

                <p>
                    Sharda University
                </p>

                <p>
                    Aug 2022 — June 2024
                </p>

                <p>
                    Database Management · Operating Systems ·
                    Computer Networks · Cryptography ·
                    Data Structures · Java · Python
                </p>

            </div>

            <div class="gpa">
                GPA: 8.2 / 10
            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     RESEARCH
========================================================= -->

<section>

    <div class="section-container">

        <div class="section-label">
            06 / RESEARCH
        </div>

        <h2 class="section-title">
            Research Interests
        </h2>


        <div class="about-grid">

            <div class="glass-card reveal">

                <h3>
                    BharatFix
                </h3>

                <p>
                    Connecting India's services through
                    a one-click platform.
                </p>

            </div>


            <div class="glass-card reveal">

                <h3>
                    Smart Environment Monitoring
                </h3>

                <p>
                    Research focused on smart environment
                    monitoring systems using IoT and sensors.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     CONTACT
========================================================= -->

<section id="contact">

    <div class="contact">

        <div class="section-label">
            07 / CONTACT
        </div>

        <h2>
            Let's build something
            <span style="color:#00e5ff;">
                scalable.
            </span>
        </h2>

        <p>
            Interested in DevOps, cloud infrastructure,
            automation or building reliable deployment
            systems? Let's connect.
        </p>

        <div class="contact-links">

            <a
                href="mailto:tezpratapydv143@gmail.com"
                class="btn btn-primary">

                EMAIL ME

            </a>

            <a
                href="tel:+918271119104"
                class="btn">

                CALL ME

            </a>

        </div>

    </div>

</section>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    © 2026 Tezpratap Yadav · DevOps Engineer

</footer>


<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>

    /*
     * Scroll Reveal Animation
     */

    const revealElements =
        document.querySelectorAll(".reveal");


    const observer =
        new IntersectionObserver(
            entries => {

                entries.forEach(entry => {

                    if (entry.isIntersecting) {

                        entry.target.classList.add("active");

                    }

                });

            },
            {
                threshold: 0.15
            }
        );


    revealElements.forEach(element => {

        observer.observe(element);

    });


    /*
     * Terminal typing effect
     */

    const terminalMessages = [
        "deploy --production",
        "docker build .",
        "kubectl get pods",
        "terraform apply",
        "ansible-playbook deploy.yml"
    ];

    let messageIndex = 0;


    function updateTerminal() {

        const terminalCommand =
            document.querySelector(
                ".terminal-body .terminal-line:last-of-type"
            );

        if (!terminalCommand) {
            return;
        }

        messageIndex++;

        if (messageIndex >= terminalMessages.length) {
            messageIndex = 0;
        }

    }


    /*
     * Active navigation
     */

    const sections =
        document.querySelectorAll("section");

    const navLinks =
        document.querySelectorAll(".nav-links a");


    window.addEventListener("scroll", () => {

        let current = "";

        sections.forEach(section => {

            const sectionTop =
                section.offsetTop - 150;

            if (
                window.scrollY >= sectionTop
            ) {

                current =
                    section.getAttribute("id");

            }

        });


        navLinks.forEach(link => {

            link.style.color = "";

            if (
                link.getAttribute("href") ===
                "#" + current
            ) {

                link.style.color =
                    "#00e5ff";

            }

        });

    });

</script>

</body>
</html>
