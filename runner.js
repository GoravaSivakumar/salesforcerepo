#!/usr/bin/env node
const { execSync } = require("child_process");
const fs = require("fs");
const outPath =
  "/force-app/main/default/lwc/opportunityTile/__tests__/test_run_output.txt";
let output = "";
try {
  output += execSync("npm install 2>&1", {
    cwd: "/",
    timeout: 600000,
    maxBuffer: 100 * 1024 * 1024,
    shell: true,
    encoding: "utf-8"
  });
  output += "\n===== TEST RUN =====\n";
  output += execSync("npm test 2>&1", {
    cwd: "/",
    timeout: 600000,
    maxBuffer: 100 * 1024 * 1024,
    shell: true,
    encoding: "utf-8"
  });
} catch (e) {
  output += e.stdout || "";
  output += "\n[EXIT CODE: " + (e.status || "N/A") + "]\n";
}
fs.writeFileSync(outPath, output, "utf-8");
