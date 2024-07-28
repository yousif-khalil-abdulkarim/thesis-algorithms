// @ts-check
import { processResult } from "./process-result.js";

await processResult({
  inputPath: ["results/**/*.json"],
  ingorePath: [
    "results/**/platform-info.json"
  ],
  outputPath: "processed",
});
