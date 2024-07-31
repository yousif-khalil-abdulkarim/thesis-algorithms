// @ts-check
import { processResult } from "./process-result.js";

await processResult({
  inputPath: ["results/windows_nt/**/*.json"],
  ingorePath: [
    "results/windows_nt/**/platform-info.json"
  ],
  outputPath: "processed",
});
