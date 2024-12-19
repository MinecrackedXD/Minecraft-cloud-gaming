# Cloud Minecraft Setup (GitHub Codespaces)

## 🛑 Before You Start Assuming, Read This:
I know you're probably thinking, *"This is affiliated with Eaglercraft or something similar. It's playing Minecraft in a browser, and we all know how Eaglercraft got DMCA'd because it distributed Minecraft source code, pirated it, etc."*  
**IT'S NOT.**

This setup does not involve distributing Minecraft source code or pirating the game. It’s entirely different. Read on to understand how it works.

---

## ❓ How This Works
1. A **virtual desktop environment** is created by emulating a screen.
2. The **official Minecraft Launcher** is downloaded and installed.
3. **Java Runtime Environment 17** (JRE 17) is installed to run Minecraft.
4. **Streaming tools** (VNC + noVNC) are used to provide access to Minecraft through a browser.

---

## ✅ Is This Legal?
**Yes.**  
- This setup does not modify the game in any way.
- The Minecraft Launcher and files are downloaded directly from Mojang's official servers.
- The only potential legal issue would be using a **local (offline) account**, which bypasses Minecraft's authentication system. That’s entirely your choice, and **I’m not responsible** for that.

---

## 🔧 Is This Feasible?
Yes! If you’ve used any cloud gaming service like **Xbox Cloud Gaming**, **now.gg**, or **GeForce Now**, the concept here is similar.  
GitHub Codespaces offers **4 cores**, which is more than enough to run Minecraft Java Edition in a cloud environment.

---

## 📖 Setup Instructions

### 1. Fork This Repository
Click the **Fork** button at the top-right of this repository to create your own copy.

---

### 2. Open a Codespace
1. Navigate to your forked repository.
2. Click the **Code** button and select **Create Codespace on main**.

---

### 3. Run the Setup Script
1. Once the Codespace loads, open the terminal.
2. Run the following command to start the setup:
   ```bash
   bash setup-minecraft.sh
