
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#050505">
<meta name="description" content="ELKABROOS WEBS — Websites for companies, shops and businesses.">
<title>ELKABROOS WEBS | Web Design Studio</title>

<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Ccircle cx='50' cy='50' r='46' fill='%23070707' stroke='%23c9a45c' stroke-width='2'/%3E%3Ctext x='50' y='69' text-anchor='middle' font-size='57' fill='%23d8b66f' font-family='Arial'%3EK%3C/text%3E%3C/svg%3E">

<style>
:root {
  --bg: #050505;
  --white: #f7f5ef;
  --muted: #b8b4ab;
  --gold: #d2ad62;
  --gold-light: #f0d69a;
  --gold-dark: #80602d;
  --border: rgba(210,173,98,.22);
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  scroll-behavior: smooth;
  scroll-padding-top: 100px;
}

body {
  background: var(--bg);
  color: var(--white);
  font-family: Arial, Helvetica, sans-serif;
  line-height: 1.7;
  overflow-x: hidden;
}

a {
  color: inherit;
  text-decoration: none;
}

button {
  font: inherit;
}

.container {
  width: min(1380px, 91%);
  margin-inline: auto;
}

/* GOLD CUSTOM CURSOR */

@media (pointer: fine) {
  body,
  a,
  button {
    cursor: none;
  }

  .custom-cursor,
  .cursor-halo {
    display: block;
  }
}

.custom-cursor {
  display: none;
  position: fixed;
  z-index: 1000;
  left: 0;
  top: 0;
  width: 35px;
  height: 35px;
  border: 1px solid var(--gold);
  border-radius: 50%;
  pointer-events: none;
  transform: translate(-50%,-50%);
  background: rgba(210,173,98,.08);
  box-shadow: 0 0 13px rgba(210,173,98,.15);
  transition:
    width .2s,
    height .2s,
    background .2s,
    border-color .2s;
}

.custom-cursor::before {
  content: "K";
  position: absolute;
  inset: 0;
  display: grid;
  place-items: center;
  color: var(--gold-light);
  font-size: 15px;
  font-weight: 400;
}

.cursor-halo {
  display: none;
  position: fixed;
  z-index: 999;
  left: 0;
  top: 0;
  width: 66px;
  height: 66px;
  border: 1px solid rgba(210,173,98,.24);
  border-radius: 50%;
  pointer-events: none;
  transform: translate(-50%,-50%);
  transition: width .25s, height .25s;
}

body.cursor-hover .custom-cursor {
  width: 47px;
  height: 47px;
  background: rgba(210,173,98,.18);
  border-color: var(--gold-light);
}

body.cursor-hover .cursor-halo {
  width: 82px;
  height: 82px;
  border-color: rgba(210,173,98,.4);
}

.cursor-glint {
  position: fixed;
  z-index: 998;
  width: 4px;
  height: 4px;
  border-radius: 50%;
  background: var(--gold-light);
  box-shadow: 0 0 10px var(--gold);
  pointer-events: none;
  animation: glintFade .65s ease-out forwards;
}

@keyframes glintFade {
  from { opacity: .8; transform: scale(1); }
  to { opacity: 0; transform: scale(.1); }
}

/* NAVIGATION */

header {
  position: absolute;
  inset: 0 0 auto;
  z-index: 20;
}

.nav {
  min-height: 94px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 25px;
  border-bottom: 1px solid rgba(255,255,255,.04);
}

.brand {
  display: inline-block;
  font-size: 23px;
  font-weight: 900;
  letter-spacing: 4px;
  line-height: 1.2;
  white-space: nowrap;
}

.brand small {
  display: block;
  margin-top: 8px;
  color: var(--gold);
  font-size: 9px;
  font-weight: 400;
  letter-spacing: 5px;
}

nav {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: clamp(13px, 2.8vw, 38px);
}

nav a {
  position: relative;
  padding: 8px 0;
  color: #e4e2df;
  font-size: 11px;
  letter-spacing: 1px;
  transition: color .3s;
}

nav a::after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  width: 0;
  height: 1px;
  background: var(--gold);
  transition: width .3s;
}

nav a:hover {
  color: var(--gold-light);
}

nav a:hover::after {
  width: 100%;
}

.nav-actions {
  display: flex;
  align-items: center;
  gap: 12px;
}

.lang-btn {
  border: 1px solid rgba(210,173,98,.65);
  border-radius: 30px;
  padding: 10px 14px;
  color: var(--gold-light);
  background: transparent;
  cursor: pointer;
  font-size: 11px;
  transition: .3s;
}

.lang-btn:hover {
  background: var(--gold);
  color: #080808;
}

.nav-cta {
  display: inline-flex;
  align-items: center;
  gap: 16px;
  padding: 11px 18px;
  border: 1px solid rgba(210,173,98,.65);
  border-radius: 30px;
  white-space: nowrap;
  font-size: 10px;
  letter-spacing: .6px;
  transition: .3s;
}

.nav-cta:hover {
  background: var(--gold);
  color: black;
}

/* HERO */

.hero {
  position: relative;
  isolation: isolate;
  min-height: 790px;
  padding: 165px 0 40px;
  overflow: hidden;
  background:
    radial-gradient(ellipse at 50% 43%, rgba(170,160,145,.08), transparent 48%),
    #050505;
}

.threads {
  position: absolute;
  z-index: -2;
  inset: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
}

.thread {
  fill: none;
  stroke: rgba(245,239,226,.47);
  stroke-width: .8;
  vector-effect: non-scaling-stroke;
}

.thread-group {
  animation: waveThreads 4.4s ease-in-out infinite alternate;
  transform-origin: center;
}

.thread-group.two {
  animation-duration: 5.2s;
  animation-direction: alternate-reverse;
  opacity: .58;
}

.thread-group.three {
  animation-duration: 3.8s;
  opacity: .32;
  animation-direction: alternate-reverse;
}

@keyframes waveThreads {
  0% {
    transform: translate(-15px, 5px) scaleY(.97);
  }
  50% {
    transform: translate(12px, -8px) scaleY(1.035);
  }
  100% {
    transform: translate(-5px, 8px) scaleY(.97);
  }
}

/* Transparent grey circle */

.orb {
  position: absolute;
  z-index: -1;
  top: 115px;
  left: 50%;
  width: min(75vw, 900px);
  aspect-ratio: 1;
  transform: translateX(-50%);
  border-radius: 50%;
  border: 1px solid rgba(210,173,98,.63);
  background:
    radial-gradient(circle at 50% 40%,
      rgba(170,160,145,.10),
      rgba(65,60,51,.10) 48%,
      rgba(0,0,0,.93) 72%);
  box-shadow:
    0 0 45px rgba(210,173,98,.08),
    inset 0 0 100px rgba(255,255,255,.025);
  animation: circleGlow 4s ease-in-out infinite alternate;
}

@keyframes circleGlow {
  from {
    box-shadow: 0 0 30px rgba(210,173,98,.04),
                inset 0 0 65px rgba(255,255,255,.015);
  }
  to {
    box-shadow: 0 0 65px rgba(210,173,98,.16),
                inset 0 0 100px rgba(255,255,255,.04);
  }
}

/* Circular K emblem */

.hero-emblem {
  position: absolute;
  z-index: 0;
  top: 30%;
  left: 50%;
  width: clamp(76px, 9vw, 112px);
  aspect-ratio: 1;
  display: grid;
  place-items: center;
  transform: translate(-50%, -50%) scale(.4);
  border: 1px solid rgba(210,173,98,.7);
  border-radius: 50%;
  background: rgba(100,85,55,.15);
  box-shadow: 0 0 35px rgba(210,173,98,.12);
  opacity: 0;
  pointer-events: none;
}

.hero-emblem span {
  font-size: clamp(40px, 5vw, 58px);
  font-weight: 300;
  color: var(--gold-light);
  letter-spacing: -4px;
}

.hero-emblem.show {
  animation: emblemPop .8s cubic-bezier(.18,.8,.25,1) forwards;
}

@keyframes emblemPop {
  0% {
    opacity: 0;
    transform: translate(-50%,-50%) scale(.25) rotate(-25deg);
    filter: blur(12px);
  }
  65% {
    opacity: 1;
    transform: translate(-50%,-50%) scale(1.12) rotate(5deg);
    filter: blur(0);
  }
  100% {
    opacity: 1;
    transform: translate(-50%,-50%) scale(1) rotate(0);
  }
}

/* Wavy text entrance — flowing like the white threads */

.hero-content {
  position: relative;
  z-index: 3;
  width: min(790px, 91%);
  margin: 30px auto 0;
  text-align: center;
}

.eyebrow {
  margin-bottom: 19px;
  color: var(--gold);
  font-size: 12px;
  letter-spacing: 2.3px;
  text-transform: uppercase;
}

.hero h1 {
  margin-bottom: 20px;
  font-size: clamp(39px, 6.5vw, 77px);
  font-weight: 750;
  line-height: 1.1;
  letter-spacing: -2px;
}

.hero h1 .line {
  display: block;
  overflow: hidden;
  padding: 4px 0 7px;
}

.hero h1 .line span {
  display: inline-block;
  opacity: 0;
  transform: translateX(-115%);
}

.hero h1 .line span.animate {
  animation: flowingEntrance 1.35s cubic-bezier(.2,.75,.25,1) forwards;
}

.hero h1 .line:nth-child(2) span.animate {
  animation-delay: .16s;
}

@keyframes flowingEntrance {
  0% {
    opacity: 0;
    transform: translate(-115%, 0) skewX(-15deg);
    filter: blur(8px);
  }
  18% {
    opacity: 1;
    transform: translate(-78%, -12px) skewX(-10deg);
    filter: blur(3px);
  }
  34% {
    transform: translate(-52%, 9px) skewX(8deg);
  }
  49% {
    transform: translate(-32%, -7px) skewX(-6deg);
    filter: blur(1px);
  }
  64% {
    transform: translate(-18%, 5px) skewX(4deg);
  }
  79% {
    transform: translate(-8%, -3px) skewX(-2deg);
    filter: blur(0);
  }
  91% {
    transform: translate(-2%, 1px) skewX(1deg);
  }
  100% {
    opacity: 1;
    transform: translate(0,0) skewX(0);
    filter: blur(0);
  }
}

.gold-dot {
  color: var(--gold);
}

.hero-copy {
  max-width: 610px;
  margin: auto;
  color: #c4c1bc;
  font-size: 15px;
  line-height: 1.9;
}

.hero-buttons {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 14px;
  flex-wrap: wrap;
  margin-top: 29px;
}

.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 13px;
  min-height: 46px;
  padding: 12px 23px;
  border: 1px solid rgba(210,173,98,.65);
  border-radius: 5px;
  color: white;
  font-size: 11px;
  letter-spacing: .6px;
  transition: transform .3s, box-shadow .3s, background .3s;
}

.btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(210,173,98,.18);
}

.btn-gold {
  border-color: transparent;
  background: linear-gradient(110deg,#997234,#e0bf79);
  color: white;
}

.btn-outline {
  border-color: rgba(210,173,98,.55);
  background: rgba(0,0,0,.15);
}

.arrow {
  font-size: 18px;
}

/* Gold burst */

.light-burst {
  position: relative;
  width: 7px;
  height: 7px;
  margin: 21px auto 0;
  border-radius: 50%;
  background: var(--gold-light);
  box-shadow: 0 0 12px 4px rgba(210,173,98,.65);
  opacity: 0;
}

.light-burst::before,
.light-burst::after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  width: 7px;
  height: 7px;
  border: 1px solid rgba(210,173,98,.8);
  border-radius: 50%;
  transform: translate(-50%,-50%) scale(.5);
  opacity: 0;
}

.light-burst.fire {
  animation: burstFlash .8s ease-out forwards;
}

.light-burst.fire::before {
  animation: burstRing .85s ease-out forwards;
}

.light-burst.fire::after {
  animation: burstRing .85s .12s ease-out forwards;
}

@keyframes burstFlash {
  0% { opacity: 0; transform: scale(.2); }
  30% { opacity: 1; transform: scale(1.7); }
  100% { opacity: .85; transform: scale(1); }
}

@keyframes burstRing {
  0% { opacity: .9; transform: translate(-50%,-50%) scale(.5); }
  100% { opacity: 0; transform: translate(-50%,-50%) scale(9); }
}

/* WORK */

.work {
  position: relative;
  z-index: 3;
  margin-top: -3px;
}

.section-label {
  display: flex;
  align-items: center;
  gap: 18px;
  margin-bottom: 17px;
  color: var(--gold);
  font-size: 11px;
  letter-spacing: 1.6px;
}

.section-label::after {
  content: "";
  flex: 1;
  height: 1px;
  background: linear-gradient(90deg,rgba(210,173,98,.6),transparent);
}

.project-grid {
  display: grid;
  grid-template-columns: minmax(0,400px);
  justify-content: center;
}

.project {
  position: relative;
  min-height: 285px;
  overflow: hidden;
  border: 1px solid rgba(210,173,98,.19);
  border-radius: 9px;
  background: #0b0b0b;
  transition: border-color .3s, transform .3s;
}

.project:hover {
  transform: translateY(-4px);
  border-color: rgba(210,173,98,.7);
}

.project-art {
  position: absolute;
  inset: 0;
  display: grid;
  place-items: center;
  overflow: hidden;
  background:
    radial-gradient(ellipse at 50% 25%,rgba(210,173,98,.22),transparent 50%),
    linear-gradient(145deg,#1d1b18,#070707 75%);
}

.project-art::before {
  content: "";
  position: absolute;
  width: 67%;
  height: 70%;
  border: 1px solid rgba(210,173,98,.4);
  transform: rotate(-9deg);
  box-shadow: 0 0 45px rgba(210,173,98,.07);
}

.project-art::after {
  content: "";
  position: absolute;
  inset: 0;
  background: linear-gradient(180deg,transparent 30%,rgba(0,0,0,.93));
}

.project-monogram {
  position: relative;
  z-index: 1;
  font-size: 76px;
  font-weight: 300;
  color: var(--gold-light);
  letter-spacing: 3px;
}

.project-info {
  position: absolute;
  z-index: 2;
  inset: auto 0 0;
  padding: 38px 18px 17px;
}

.project-info h3 {
  margin-bottom: 3px;
  font-size: 13px;
  letter-spacing: 1px;
}

.project-info p {
  color: #d1cfca;
  font-size: 12px;
}

.project-status {
  display: inline-block;
  margin-top: 6px;
  color: var(--gold);
  font-size: 10px;
  letter-spacing: .3px;
}

.project-actions {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 9px;
  margin-top: 13px;
}

.project-actions .btn {
  min-height: 38px;
  padding: 9px 13px;
  font-size: 10px;
}

/* WhatsApp gold button */

.whatsapp-btn {
  border: none;
  background: linear-gradient(110deg,#987034,#d9b66e);
  color: white;
  box-shadow: 0 0 20px rgba(210,173,98,.12);
}

.whatsapp-btn:hover {
  box-shadow: 0 0 28px rgba(210,173,98,.3);
}

/* FEATURES */

.features {
  display: grid;
  grid-template-columns: repeat(4,minmax(0,1fr));
  gap: 0;
  margin-top: 18px;
  padding: 24px 12px;
  border: 1px solid rgba(210,173,98,.12);
  border-radius: 10px;
  background: linear-gradient(120deg,#101010,#080808);
}

.feature {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 0 17px;
  border-inline-start: 1px solid rgba(255,255,255,.1);
}

.feature:first-child {
  border-inline-start: 0;
}

.feature-icon {
  display: grid;
  place-items: center;
  flex-shrink: 0;
  width: 47px;
  height: 47px;
  border: 1px solid rgba(210,173,98,.7);
  border-radius: 50%;
  color: var(--gold);
  font-size: 22px;
}

.feature h3 {
  margin-bottom: 4px;
  font-size: 10px;
  letter-spacing: .4px;
}

.feature p {
  color: var(--muted);
  font-size: 11px;
  line-height: 1.6;
}

/* SERVICES */

.section {
  padding-top: 100px;
}

.section-title {
  max-width: 700px;
  margin: 0 auto 42px;
  text-align: center;
}

.section-title .eyebrow {
  display: block;
}

.section-title h2 {
  margin-bottom: 14px;
  font-size: clamp(29px,4.5vw,46px);
  line-height: 1.25;
}

.section-title p {
  color: var(--muted);
  font-size: 14px;
}

.services {
  display: grid;
  grid-template-columns: repeat(3,minmax(0,1fr));
  gap: 15px;
}

.service {
  padding: 26px;
  border: 1px solid var(--border);
  border-radius: 8px;
  background: linear-gradient(140deg,#111,#080808);
  transition: .3s;
}

.service:hover {
  transform: translateY(-4px);
  border-color: rgba(210,173,98,.6);
}

.service-icon {
  margin-bottom: 12px;
  color: var(--gold);
  font-size: 25px;
}

.service h3 {
  margin-bottom: 8px;
  font-size: 16px;
}

.service p {
  color: var(--muted);
  font-size: 13px;
}

/* ABOUT */

.about {
  display: grid;
  grid-template-columns: 1.2fr .8fr;
  align-items: center;
  gap: 45px;
  padding: 35px;
  border: 1px solid var(--border);
  border-radius: 10px;
  background: #0b0b0b;
}

.about h2 {
  margin-bottom: 18px;
  font-size: clamp(29px,4vw,43px);
  line-height: 1.3;
}

.about p {
  margin-bottom: 12px;
  color: var(--muted);
  font-size: 14px;
}

.about-mark {
  display: grid;
  place-items: center;
  min-height: 260px;
  border: 1px solid rgba(210,173,98,.3);
  border-radius: 50%;
  background:
    radial-gradient(circle,rgba(210,173,98,.11),rgba(0,0,0,.7) 70%);
}

.about-mark span {
  display: grid;
  place-items: center;
  width: 120px;
  aspect-ratio: 1;
  border: 1px solid rgba(210,173,98,.7);
  border-radius: 50%;
  background: rgba(120,95,45,.12);
  color: var(--gold-light);
  font-size: 72px;
  font-weight: 300;
}

/* CONTACT */

.contact-box {
  padding: 62px 20px;
  text-align: center;
  border: 1px solid rgba(210,173,98,.3);
  border-radius: 10px;
  background: radial-gradient(ellipse at top,#201a12,#080808 68%);
}

.contact-box h2 {
  margin: 10px 0 14px;
  font-size: clamp(30px,5vw,47px);
  line-height: 1.25;
}

.contact-box p {
  max-width: 650px;
  margin: 0 auto 24px;
  color: var(--muted);
  font-size: 14px;
}

footer {
  margin-top: 75px;
  padding: 25px 0;
  border-top: 1px solid rgba(210,173,98,.16);
  color: #888;
  text-align: center;
  font-size: 11px;
}

.gold {
  color: var(--gold);
}

/* RTL */

[dir="rtl"] .brand {
  letter-spacing: 2px;
}

[dir="rtl"] nav a {
  letter-spacing: 0;
}

[dir="rtl"] .section-label::after {
  background: linear-gradient(270deg,rgba(210,173,98,.6),transparent);
}

/* RESPONSIVE */

@media (max-width: 1050px) {
  .nav-cta {
    display: none;
  }

  .features {
    grid-template-columns: repeat(2,minmax(0,1fr));
    gap: 23px 0;
  }

  .feature:nth-child(3) {
    border-inline-start: 0;
  }
}

@media (max-width: 720px) {
  .nav {
    flex-wrap: wrap;
    gap: 13px;
    padding: 15px 0;
  }

  .brand {
    font-size: 18px;
    letter-spacing: 3px;
  }

  .brand small {
    font-size: 8px;
    letter-spacing: 4px;
  }

  nav {
    order: 3;
    width: 100%;
    justify-content: space-between;
    gap: 8px;
  }

  nav a {
    font-size: 10px;
    letter-spacing: 0;
  }

  .lang-btn {
    padding: 8px 12px;
  }

  .hero {
    min-height: 760px;
    padding-top: 175px;
  }

  .orb {
    top: 180px;
    width: 112vw;
  }

  .hero-content {
    margin-top: 22px;
  }

  .hero h1 {
    letter-spacing: -1px;
  }

  .hero-copy {
    font-size: 13px;
  }

  .hero-emblem {
    top: 29%;
  }

  .features {
    padding: 20px 8px;
  }

  .feature {
    gap: 9px;
    padding: 0 9px;
  }

  .feature-icon {
    width: 37px;
    height: 37px;
    font-size: 17px;
  }

  .feature h3 {
    font-size: 9px;
  }

  .feature p {
    font-size: 10px;
  }

  .services {
    grid-template-columns: repeat(2,minmax(0,1fr));
  }

  .about {
    grid-template-columns: 1fr;
    gap: 25px;
    padding: 23px;
  }

  .about-mark {
    min-height: 210px;
  }

  .section {
    padding-top: 75px;
  }
}

@media (max-width: 430px) {
  .hero {
    min-height: 760px;
  }

  .hero h1 {
    font-size: clamp(35px,9vw,44px);
  }

  .hero-buttons .btn {
    min-width: 140px;
    padding: 11px 14px;
  }

  .project {
    min-height: 300px;
  }

  .project-actions {
    gap: 7px;
  }

  .project-actions .btn {
    padding: 9px 10px;
    font-size: 9px;
  }

  .features {
    grid-template-columns: 1fr;
    gap: 20px;
  }

  .feature {
    border-inline-start: 0 !important;
  }

  .services {
    grid-template-columns: 1fr;
  }
}

@media (prefers-reduced-motion: reduce) {
  *,*::before,*::after {
    animation-duration: .01ms !important;
    animation-iteration-count: 1 !important;
    scroll-behavior: auto !important;
  }
}
</style>
</head>

<body>

<!-- Custom cursor -->
<div class="cursor-halo" id="cursorHalo"></div>
<div class="custom-cursor" id="customCursor"></div>

<header>
  <div class="container nav">
    <a class="brand" href="#home">
      ELKABROOS
      <small>WEB DESIGN STUDIO</small>
    </a>

    <nav>
      <a href="#home" data-ar="الرئيسية" data-en="HOME">HOME</a>
      <a href="#services" data-ar="الخدمات" data-en="SERVICES">SERVICES</a>
      <a href="#work" data-ar="الأعمال" data-en="WORK">WORK</a>
      <a href="#about" data-ar="عنّا" data-en="ABOUT">ABOUT</a>
      <a href="#contact" data-ar="التواصل" data-en="CONTACT">CONTACT</a>
    </nav>

    <div class="nav-actions">
      <button class="lang-btn" id="languageButton" type="button">عربي</button>
      <a class="nav-cta" href="#contact">
        <span data-ar="خلينا نبدأ مشروعك" data-en="LET'S WORK TOGETHER">LET'S WORK TOGETHER</span>
        <span class="arrow">→</span>
      </a>
    </div>
  </div>
</header>

<main>
<section class="hero" id="home">

  <svg class="threads" viewBox="0 0 1440 800" preserveAspectRatio="none" aria-hidden="true">
    <g class="thread-group">
      <path class="thread" d="M-80 160 C180 310 280 470 520 360 S950 160 1520 300"/>
      <path class="thread" d="M-80 175 C180 325 280 485 520 375 S950 175 1520 315"/>
      <path class="thread" d="M-80 190 C180 340 280 500 520 390 S950 190 1520 330"/>
      <path class="thread" d="M-80 205 C180 355 280 515 520 405 S950 205 1520 345"/>
      <path class="thread" d="M-80 220 C180 370 280 530 520 420 S950 220 1520 360"/>
      <path class="thread" d="M-80 235 C180 385 280 545 520 435 S950 235 1520 375"/>
      <path class="thread" d="M-80 250 C180 400 280 560 520 450 S950 250 1520 390"/>
      <path class="thread" d="M-80 265 C180 415 280 575 520 465 S950 265 1520 405"/>
      <path class="thread" d="M-80 280 C180 430 280 590 520 480 S950 280 1520 420"/>
      <path class="thread" d="M-80 295 C180 445 280 605 520 495 S950 295 1520 435"/>
    </g>
    <g class="thread-group two">
      <path class="thread" d="M-60 410 C190 600 330 230 620 380 S1050 570 1500 390"/>
      <path class="thread" d="M-60 425 C190 615 330 245 620 395 S1050 585 1500 405"/>
      <path class="thread" d="M-60 440 C190 630 330 260 620 410 S1050 600 1500 420"/>
      <path class="thread" d="M-60 455 C190 645 330 275 620 425 S1050 615 1500 435"/>
      <path class="thread" d="M-60 470 C190 660 330 290 620 440 S1050 630 1500 450"/>
      <path class="thread" d="M-60 485 C190 675 330 305 620 455 S1050 645 1500 465"/>
    </g>
    <g class="thread-group three">
      <path class="thread" d="M-80 350 C190 490 400 200 650 350 S1080 490 1520 320"/>
      <path class="thread" d="M-80 365 C190 505 400 215 650 365 S1080 505 1520 335"/>
      <path class="thread" d="M-80 380 C190 520 400 230 650 380 S1080 520 1520 350"/>
      <path class="thread" d="M-80 395 C190 535 400 245 650 395 S1080 535 1520 365"/>
    </g>
  </svg>

  <div class="orb"></div>

  <div class="hero-emblem" id="heroEmblem">
    <span>K</span>
  </div>

  <div class="hero-content">
    <p class="eyebrow"
       data-ar="تصميم مواقع • شركات • محلات • ترويج"
       data-en="WEBSITES • BUSINESSES • SHOPS • PROMOTION">
      WEBSITES • BUSINESSES • SHOPS • PROMOTION
    </p>

    <h1>
      <span class="line"><span class="animated-line"
        data-ar="نبني حضورك الرقمي"
        data-en="Building Your Brand.">Building Your Brand.</span></span>
      <span class="line"><span class="animated-line"
        data-ar="ونصنع تأثيرك"
        data-en="Creating Impact.">Creating Impact.</span></span>
    </h1>

    <p class="hero-copy"
       data-ar="بنصمم مواقع عصرية للشركات والمحلات والمشروعات التجارية، ونساعدك تعرض خدماتك ومنتجاتك وتروّج لعلامتك التجارية باحترافية."
       data-en="We create modern websites for companies, shops and businesses, helping you showcase services, promote products and build your online presence.">
      We create modern websites for companies, shops and businesses, helping you showcase services, promote products and build your online presence.
    </p>

    <div class="hero-buttons">
      <a class="btn btn-gold" href="#work">
        <span data-ar="شاهد أعمالنا" data-en="VIEW OUR WORK">VIEW OUR WORK</span>
        <span class="arrow">→</span>
      </a>
      <a class="btn btn-outline" href="#services"
         data-ar="خدماتنا" data-en="OUR SERVICES">OUR SERVICES</a>
    </div>

    <div class="light-burst" id="lightBurst"></div>
  </div>
</section>

<section class="container work" id="work">
  <div class="section-label">
    <span data-ar="من أعمالنا" data-en="FEATURED PROJECT">FEATURED PROJECT</span>
  </div>

  <div class="project-grid">
    <article class="project">
      <div class="project-art"><span class="project-monogram">AT.</span></div>
      <div class="project-info">
        <h3>ANGEL TOYS</h3>
        <p data-ar="موقع مبدئي تعريفي لشركة ألعاب"
           data-en="Preliminary website concept for a toy company">
          Preliminary website concept for a toy company
        </p>
        <span class="project-status"
          data-ar="نموذج مبدئي — وليس الموقع النهائي"
          data-en="EARLY CONCEPT — NOT THE FINAL SITE">
          EARLY CONCEPT — NOT THE FINAL SITE
        </span>
        <div class="project-actions">
          <a class="btn btn-outline"
             href="https://abdalrahmanmohamed2011-hash.github.io/Angel-Toyss/"
             target="_blank" rel="noopener noreferrer">
            <span data-ar="عرض الموقع" data-en="VIEW WEBSITE">VIEW WEBSITE</span>
            <span class="arrow">↗</span>
          </a>
          <a class="btn whatsapp-btn"
             href="https://wa.me/201012774909"
             target="_blank" rel="noopener noreferrer">
            <span data-ar="تواصل واتساب" data-en="WHATSAPP">WHATSAPP</span>
            <span class="arrow">↗</span>
          </a>
        </div>
      </div>
    </article>
  </div>

  <div class="features">
    <div class="feature">
      <div class="feature-icon">◎</div>
      <div>
        <h3 data-ar="تصميم مدروس" data-en="THOUGHTFUL DESIGN">THOUGHTFUL DESIGN</h3>
        <p data-ar="شكل يناسب هوية مشروعك" data-en="Design made for your business.">Design made for your business.</p>
      </div>
    </div>
    <div class="feature">
      <div class="feature-icon">↗</div>
      <div>
        <h3 data-ar="مناسب للموبايل" data-en="MOBILE FRIENDLY">MOBILE FRIENDLY</h3>
        <p data-ar="تصفح مريح على مختلف الشاشات" data-en="Made for different screen sizes.">Made for different screen sizes.</p>
      </div>
    </div>
    <div class="feature">
      <div class="feature-icon">◇</div>
      <div>
        <h3 data-ar="عرض واضح" data-en="CLEAR PRESENTATION">CLEAR PRESENTATION</h3>
        <p data-ar="عرض منتجاتك وخدماتك بسهولة" data-en="Showcase products and services clearly.">Showcase products and services clearly.</p>
      </div>
    </div>
    <div class="feature">
      <div class="feature-icon">↗</div>
      <div>
        <h3 data-ar="حسب احتياجاتك" data-en="BUILT FOR YOUR GOALS">BUILT FOR YOUR GOALS</h3>
        <p data-ar="موقع يخدم أهداف مشروعك" data-en="A website built around your goals.">A website built around your goals.</p>
      </div>
    </div>
  </div>
</section>

<section class="section" id="services">
  <div class="container">
    <div class="section-title">
      <span class="eyebrow" data-ar="خدماتنا" data-en="OUR SERVICES">OUR SERVICES</span>
      <h2 data-ar="موقعك هو واجهة مشروعك على الإنترنت"
          data-en="Your Business Deserves a Great Website">
        Your Business Deserves a Great Website
      </h2>
      <p data-ar="من الشركات والمحلات إلى المنتجات والخدمات، بنصمم مواقع تساعدك تقدم مشروعك بشكل احترافي."
         data-en="From companies and shops to products and services, we design websites that present your business professionally.">
        From companies and shops to products and services, we design websites that present your business professionally.
      </p>
    </div>

    <div class="services">
      <article class="service">
        <div class="service-icon">✳</div>
        <h3 data-ar="مواقع الشركات" data-en="COMPANY WEBSITES">COMPANY WEBSITES</h3>
        <p data-ar="عرّف العملاء بشركتك وخدماتك ومعلومات التواصل في موقع واحد."
           data-en="Introduce your company, services and contact details in one place.">
          Introduce your company, services and contact details in one place.
        </p>
      </article>
      <article class="service">
        <div class="service-icon">◇</div>
        <h3 data-ar="مواقع المحلات" data-en="SHOP WEBSITES">SHOP WEBSITES</h3>
        <p data-ar="اعرض نشاط محلك ومنتجاتك بطريقة مرتبة وجذابة."
           data-en="Present your shop and products in a clear, attractive way.">
          Present your shop and products in a clear, attractive way.
        </p>
      </article>
      <article class="service">
        <div class="service-icon">↗</div>
        <h3 data-ar="مواقع الترويج" data-en="PROMOTION WEBSITES">PROMOTION WEBSITES</h3>
        <p data-ar="صفحات للتعريف بمنتج أو خدمة أو حملة ترويجية."
           data-en="Landing pages for products, services and promotional campaigns.">
          Landing pages for products, services and promotional campaigns.
        </p>
      </article>
      <article class="service">
        <div class="service-icon">▱</div>
        <h3 data-ar="معارض الأعمال" data-en="PORTFOLIO WEBSITES">PORTFOLIO WEBSITES</h3>
        <p data-ar="اعرض أعمالك ومشروعاتك في موقع منظم وسهل التصفح."
           data-en="Showcase your work and projects in an organised portfolio.">
          Showcase your work and projects in an organised portfolio.
        </p>
      </article>
      <article class="service">
        <div class="service-icon">⌘</div>
        <h3 data-ar="تصميم متجاوب" data-en="RESPONSIVE DESIGN">RESPONSIVE DESIGN</h3>
        <p data-ar="تصميم يتكيف مع الموبايل والتابلت والكمبيوتر."
           data-en="Design that adapts to phones, tablets and computers.">
          Design that adapts to phones, tablets and computers.
        </p>
      </article>
      <article class="service">
        <div class="service-icon">✧</div>
        <h3 data-ar="تصميم حسب الطلب" data-en="CUSTOM DESIGN">CUSTOM DESIGN</h3>
        <p data-ar="نناقش فكرتك واحتياجات مشروعك قبل تحديد شكل الموقع."
           data-en="We discuss your idea and requirements before planning the website.">
          We discuss your idea and requirements before planning the website.
        </p>
      </article>
    </div>
  </div>
</section>

<section class="section" id="about">
  <div class="container">
    <div class="about">
      <div>
        <span class="eyebrow" data-ar="عن ELKABROOS WEBS" data-en="ABOUT ELKABROOS WEBS">ABOUT ELKABROOS WEBS</span>
        <h2 data-ar="كل مشروع يستحق حضورًا رقميًا مميزًا."
            data-en="Every Business Deserves a Strong Digital Presence.">
          Every Business Deserves a Strong Digital Presence.
        </h2>
        <p data-ar="ELKABROOS WEBS مشروع لتصميم مواقع تساعد الشركات والمحلات وأصحاب المشروعات على تقديم خدماتهم ومنتجاتهم بصورة واضحة وجذابة."
           data-en="ELKABROOS WEBS is a web design project focused on helping companies, shops and business owners present their services and products clearly.">
          ELKABROOS WEBS is a web design project focused on helping companies, shops and business owners present their services and products clearly.
        </p>
        <p data-ar="نحرص على أن يكون لكل مشروع تصميم يناسب فكرته واحتياجاته. بعض الأعمال المعروضة نماذج مبدئية وليست مواقع نهائية."
           data-en="We aim to tailor each design to the project's needs. Some displayed work is an early concept, not a final website.">
          We aim to tailor each design to the project's needs. Some displayed work is an early concept, not a final website.
        </p>
      </div>
      <div class="about-mark"><span>K</span></div>
    </div>
  </div>
</section>

<section class="section" id="contact">
  <div class="container">
    <div class="contact-box">
      <span class="eyebrow" data-ar="عندك فكرة لمشروع؟" data-en="HAVE A PROJECT IN MIND?">
        HAVE A PROJECT IN MIND?
      </span>
      <h2 data-ar="خلينا نتكلم عن مشروعك."
          data-en="Let's Talk About Your Project.">
        Let's Talk About Your Project.
      </h2>
      <p data-ar="للمزيد من المعرفة والاستفسار عن تصميم موقع لشركتك أو محلك أو للترويج لخدماتك، يرجى التواصل عبر واتساب."
         data-en="For more information about a website for your company, shop or promotion, please contact us via WhatsApp.">
        For more information about a website for your company, shop or promotion, please contact us via WhatsApp.
      </p>
      <a class="btn whatsapp-btn"
         href="https://wa.me/201012774909"
         target="_blank" rel="noopener noreferrer">
        <span data-ar="تواصل معنا عبر واتساب" data-en="CONTACT US ON WHATSAPP">CONTACT US ON WHATSAPP</span>
        <span class="arrow">↗</span>
      </a>
    </div>
  </div>
</section>
</main>

<footer>
  <div class="container">
    © <span id="year"></span>
    <span class="gold">ELKABROOS WEBS</span>
    —
    <span data-ar="تصميم مواقع للشركات والمحلات والمشروعات."
          data-en="Websites for companies, shops and businesses.">
      Websites for companies, shops and businesses.
    </span>
  </div>
</footer>

<script>
const languageButton = document.getElementById("languageButton");
const heroEmblem = document.getElementById("heroEmblem");
const lightBurst = document.getElementById("lightBurst");
const animatedLines = document.querySelectorAll(".animated-line");

const cursor = document.getElementById("customCursor");
const halo = document.getElementById("cursorHalo");

let currentLanguage = "en";
let mouseX = window.innerWidth / 2;
let mouseY = window.innerHeight / 2;
let haloX = mouseX;
let haloY = mouseY;
let animationTimer;
let lastGlint = 0;

function setLanguage(language) {
  currentLanguage = language;
  document.documentElement.lang = language;
  document.documentElement.dir = language === "ar" ? "rtl" : "ltr";

  document.querySelectorAll("[data-ar][data-en]").forEach((element) => {
    element.textContent = element.getAttribute("data-" + language);
  });

  languageButton.textContent = language === "en" ? "عربي" : "English";
}

languageButton.addEventListener("click", () => {
  setLanguage(currentLanguage === "en" ? "ar" : "en");
});

/* Animate the gold cursor smoothly */

window.addEventListener("mousemove", (event) => {
  mouseX = event.clientX;
  mouseY = event.clientY;

  cursor.style.left = mouseX + "px";
  cursor.style.top = mouseY + "px";

  const now = performance.now();

  // Tiny gold sparkles occasionally follow the pointer
  if (now - lastGlint > 65) {
    const glint = document.createElement("span");
    glint.className = "cursor-glint";
    glint.style.left = mouseX + "px";
    glint.style.top = mouseY + "px";
    document.body.appendChild(glint);
    setTimeout(() => glint.remove(), 700);
    lastGlint = now;
  }
});

function moveHalo() {
  haloX += (mouseX - haloX) * 0.18;
  haloY += (mouseY - haloY) * 0.18;

  halo.style.left = haloX + "px";
  halo.style.top = haloY + "px";

  requestAnimationFrame(moveHalo);
}

moveHalo();

document.querySelectorAll("a, button").forEach((element) => {
  element.addEventListener("mouseenter", () => {
    document.body.classList.add("cursor-hover");
  });

  element.addEventListener("mouseleave", () => {
    document.body.classList.remove("cursor-hover");
  });
});

/* Wave-like heading animation and K reveal */

function playHeroAnimation() {
  clearTimeout(animationTimer);

  animatedLines.forEach((line) => {
    line.classList.remove("animate");
  });

  heroEmblem.classList.remove("show");
  lightBurst.classList.remove("fire");

  void document.querySelector(".hero h1").offsetWidth;

  animatedLines.forEach((line) => {
    line.classList.add("animate");
  });

  animationTimer = setTimeout(() => {
    lightBurst.classList.add("fire");
    heroEmblem.classList.add("show");
  }, 1650);
}

window.addEventListener("load", () => {
  setLanguage("en");
  playHeroAnimation();
});

document.getElementById("year").textContent = new Date().getFullYear();
</script>

</body>
</html>
