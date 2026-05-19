
import fs from 'fs';
import path from 'path';
import ts from 'typescript';
const dir = process.argv[2];
for (const file of fs.readdirSync(dir)) {
  if (!/\.(tsx|ts|js)$/.test(file)) continue;
  const full = path.join(dir, file);
  const src = fs.readFileSync(full, 'utf8');
  const result = ts.transpileModule(src, {
    compilerOptions: {
      jsx: ts.JsxEmit.ReactJSX,
      target: ts.ScriptTarget.ES2020,
      module: ts.ModuleKind.ESNext,
      esModuleInterop: true,
      allowSyntheticDefaultImports: true,
      importsNotUsedAsValues: ts.ImportsNotUsedAsValues.Remove,
    },
    fileName: file,
  }).outputText;
  let outName = file
    .replace(/index\.tsx$/, 'main.jsx')
    .replace(/\.tsx$/, '.jsx')
    .replace(/\.ts$/, '.js');
  fs.writeFileSync(path.join(dir, outName), result, 'utf8');
}
