const fs = require("node:fs");
const path = require("node:path");

const root = path.resolve(__dirname, "..");
const webDir = path.join(root, "www");

fs.mkdirSync(webDir, { recursive: true });
fs.copyFileSync(path.join(root, "Halo.html"), path.join(webDir, "index.html"));
fs.copyFileSync(path.join(root, "Halo.html"), path.join(root, "index.html"));

// Copy static assets to www if they exist
const assets = ["logo.png", "icon.png", "favicon.ico", "_redirects"];
for (const a of assets) {
  const src = path.join(root, a);
  const dst = path.join(webDir, a);
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, dst);
  }
}
