// @ts-check
import { processResult } from "./process-result.js";

await processResult({
  inputPath: ["results/windows_nt/data/**/*.json"],
  ingorePath: [
    "results/**/platform-info.json"
  ],
  outputPath: "processed",
});
