import type { Config } from "tailwindcss";
export default { darkMode: ["class"], content: ["./app/**/*.{ts,tsx}","./components/**/*.{ts,tsx}"], theme: { extend: { colors: { ink: "#11111a", violet: "#6d5dfc", gold: "#d4a94f" } } }, plugins: [] } satisfies Config;
