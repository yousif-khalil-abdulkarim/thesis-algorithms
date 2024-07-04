// @ts-check
import { cpus, arch, type, version } from "node:os";
import * as shared from "./shared.js"

/**
 * @returns {shared.SystemInfo}
 */
export function getSystemInfo() {
    const cpuInfo = cpus();
    const cpuModel = [...new Set(cpuInfo.map((info) => info.model))].join(", ");
    return {
      cpuModel: cpuModel.trim(),
      cpuArchitecture: arch().trim(),
      operatingSystem: type(),
      operatingSystemVersion: version(),
    };
  }
  