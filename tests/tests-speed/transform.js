// @ts-check
import { processResult } from "./process-result.js";

await processResult({
  inputPath: ["results/**/data/**/*.json"],
  ingorePath: ["results/**/platform-info.json", "results/**/1_8_2024_14_38_788/**/*.json"],
  outputPath: "processed",
});
