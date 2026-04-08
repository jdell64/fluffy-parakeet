# 🎓 Project: Class of 2005 (Year 1)
## Master Technical & Design Context

---

## 📝 Overview

**Class of 2005** is a run-based, social/psychological simulator set in a "set in a small-town American public high school during the 2001–2002 academic year.

The game is built using **Ink (Inkle Studios)** for narrative logic and state management.

---

## 🧠 The Core Philosophy

- **No "Winning"**  
  The player defines success. The game is a reflective journey of identity formation.

- **Selective Time**  
  We do not play every second. We play *"High-Density"* moments while routine days are auto-resolved based on player-set **Weekly Focus**.

- **Social Entropy**  
  Relationships decay naturally. Standing still in a high school social web is the same as moving backward.

- **Aesthetic**  
  Early 2000s, Yahoo! Messenger, dial-up, midwest small-town vibes.

---

## ⚙️ The Technical Engine (Ink Logic)

### 1. Core Vital Stats (Dynamic)

| Stat        | Function |
|------------|---------|
| `energy`   | Currency for actions. Low energy = forced rest/debuffs |
| `stress`   | Friction multiplier. High stress triggers meltdowns and negative events |
| `grades`   | Institutional shield. Low grades trigger parental/teacher intervention |
| `confidence` | Dialogue key. High confidence unlocks bold/risky choices |
| `reputation` | Segmented (Jocks, Nerds, Rebels, Populars). No global popularity |

---

### 2. Aptitudes (Capabilities)

- `scholastics` → Efficiency in academic events / cheating  
- `varsity` → Physical performance and jock-gate access  
- `eloquence` → Charm and social manipulation (Y!M efficiency)  
- `expression` → Creative output and arts-gate access  
- `grit` → Stress resistance and recovery speed  

---

### 3. The Identity Loop (The "Mirror")

- **Personality**  
  Static Big Five traits chosen at start:  
  Openness, Conscientiousness, Extraversion, Agreeableness, Neuroticism  

- **Behavior**  
  The player's choices in events  

- **Perception**  
  Emergent label assigned by the game (e.g., *The Slacker*, *The Ghost*, *The Pillar*)

---

## 🎭 Character & Faction Manifest

- **Alex (The Connector)**  
  Starting friend, baseline affinity  

- **Sarah (The Crush)**  
  High status, initial social goal  

- **Chloe (The Confidante)**  
  Late bloomer, emotional anchor  

- **Marcus (The Athlete)**  
  High varsity, potential rival or ally  

- **Derek (The Rebel)**  
  Gateway to high-risk, high-reward "outside" play  

- **Ms. Carter (The Authority)**  
  Gatekeeper of grades and discipline  

---

## 📂 Narrative Architecture (File Structure)

Cursor should follow this structure for Ink implementation:

- `main.ink`  
  Global variables, `daily_loop`, and time manager  

- `calendar.ink`  
  Spine of the year (fixed events like 9/11, Homecoming, Midterms)  

- `social_engine.ink`  
  Relationship decay, rumor spreading, clique affinity  

- `events_random.ink`  
  Injected events (pop quizzes, hallway snubs)  

- `messenger.ink`  
  Yahoo! Messenger logic (buzzes, statuses, conversations)  

---

## 🤖 Instructions for Cursor

When writing Ink code or content:

### Systemic Writing
- Always include stat shifts  
  - Example: `~ energy -= 1`  
- Include relationship checks  
  - Example: `{ alex_affinity > 60: ... }`

---

### Selective Pacing
- Skip routine days  
- Summarize stat changes in short narrative montages  

---

### Tone Check
- Dialogue must sound like 2001  
- Use era-appropriate slang:
  - "stoked"
  - "sketchy"
  - "later"
  - (optional realism: period-accurate/problematic language if desired)

---

### No Hand-Holding
- Do NOT write "The End"  
- End with a **Yearbook Signature** summarizing the run  

---

### Variable-Led Design
- Every choice must impact **at least two systems**
  - Example:  
    - +Affinity  
    - -Energy or +Stress  

---

## 🎯 Current Goal

We are drafting **Freshman Year (Semester 1)**.

Focus:
- Transition from the **Unity Buff (Week 3, 9/11 aftermath)**  
- Into **Social Sorting (Homecoming season)**