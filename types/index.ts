export type Book = { id: string; title: string; slug: string; author: string; category: string; rating: number; views: number; chapters: number; cover: string; description: string };
export type ReaderPreferences = { font: "serif" | "sans"; fontSize: number; lineHeight: number; width: "narrow" | "normal" | "wide"; theme: "light" | "sepia" | "dark" | "amoled" };
