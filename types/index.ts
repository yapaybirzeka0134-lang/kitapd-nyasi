export type Book = { id:string; slug:string; title:string; author:string; category:string; cover:string|null; publishedYear?:number; editionCount?:number; description?:string; isbn?:string };
export type ReaderPreferences = { font:"serif"|"sans"; fontSize:number; lineHeight:number; width:"narrow"|"normal"|"wide"; theme:"light"|"sepia"|"dark"|"amoled" };
