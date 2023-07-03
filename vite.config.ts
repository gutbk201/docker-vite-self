import { defineConfig, loadEnv } from "vite";
import react from "@vitejs/plugin-react";
export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd());
  const port = Number(env.VITE_PORT);
  return {
    plugins: [react()],
    server: {
      host: true,
      port,
    },
  };
});
