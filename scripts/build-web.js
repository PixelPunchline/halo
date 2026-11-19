const fs = require("node:fs");
const path = require("node:path");

const root = path.resolve(__dirname, "..");
const webDir = path.join(root, "www");

fs.mkdirSync(webDir, { recursive: true });
fs.copyFileSync(path.join(root, "Halo.html"), path.join(webDir, "index.html"));
