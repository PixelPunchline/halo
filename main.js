const { app, BrowserWindow } = require("electron");
const path = require("node:path");

function createWindow() {
  const iconIcns = path.join(__dirname, "build", "icon.icns");
  const iconPng = path.join(__dirname, "icon.png");

  if (process.platform === "darwin" && app.dock) {
    try {
      app.dock.setIcon(iconPng);
    } catch (_) {}
  }

  const window = new BrowserWindow({
    width: 460,
    height: 900,
    minWidth: 360,
    minHeight: 600,
    title: "Halo",
    icon: process.platform === "darwin" ? iconIcns : iconPng,
    backgroundColor: "#0b0912",
    autoHideMenuBar: true,
    webPreferences: {
      contextIsolation: true,
      nodeIntegration: false,
      sandbox: true
    }
  });

  window.loadFile(path.join(__dirname, "Halo.html"));
}

app.whenReady().then(() => {
  createWindow();

  app.on("activate", () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on("window-all-closed", () => {
  if (process.platform !== "darwin") app.quit();
});
