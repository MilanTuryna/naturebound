# 02 - Game Design

## 1. Core Mechanics
Each player controls a unique **elemental character** with specific abilities and weaknesses:

| Element | Ability | Limitation | Status |
|----------|----------|-------------|---------|
| Fire | Burns wooden obstacles, melts ice | Cannot touch water | **Planned – Priority** |
| Water | Fills holes, extinguishes fire | Evaporates in lava | **Planned – Priority** |
| Earth | Pushes heavy blocks, creates bridges | Slow movement | Future |
| Air | Lifts players with wind currents | Weak against solid obstacles | Future |

The players must use their powers together to solve puzzles and reach the goal.

---

## 2. Objective
Reach the end gate in each level by activating switches and removing obstacles.  
Both players must reach the goal for the level to be completed.

---

## 3. Level Structure
- **Level 1:** Movement and basic interaction.  
- **Level 2:** Combined puzzles requiring both elements.  
- **Level 3:** Timed switches and synchronization challenges.  

Future versions will include more elements and complex environmental logic.

---

## 4. Controls
| Player | Move Left / Right | Jump |
|---------|------------------|-------|
| Fire | A / D | W |
| Water | ← / → | ↑ |
---
(in the future it will be changeable in settings)

## 5. Visual Style
- 2D side view, simple shapes and clean colors.  
- Each element visually distinct (red/orange for fire, blue for water, green/brown for earth, white/gray for air).  
- Smooth particle effects to highlight element powers.  

---

## 6. Sound & Music
- Ambient environmental sounds (wind, fire crackle, water flow).  
- Calm background music that matches the natural theme.  
- Sound cues for interactions (switch activation, doors opening).

---

## 7.1 Actual plans
- Local co-operation mode (2 players, fire and water, playing on 1 computer)
- Three levels increasing in difficulty
- Simple scoreboard

## 7.2 Future Plans
- Online multiplayer mode (4 players, each representing an element).  
- New elements and mechanics (light, shadow, electricity).  
- Achievement and time-score system.
- Global time-score system and events
- Custom level editor
- Standardize level difficulty and use AI to create new levels

---

## 8. Game Loop Summary
1. Player selects characters.  
2. Both enter the level.  
3. Solve puzzles cooperatively.  
4. Reach the exit gate.  
5. Progress to the next level.  
6. Repeat with increasing difficulty.

---

## 9. Design Goals
- Encourage **communication** and **teamwork**.  
- Keep gameplay intuitive yet challenging.  
- Deliver short, replayable levels with multiple solution paths.
