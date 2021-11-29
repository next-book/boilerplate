const fs = require("fs");
const book = JSON.parse(fs.readFileSync("./_temp/book.json", "utf8"));

book.readingOrder.forEach(filename => {
  const path = "./_temp/" + filename;
  const text = fs.readFileSync(path, "utf8");
  fs.writeFileSync(
    path,
    text
      .replace(/(<table[^>]*>)/g, '<div class="table-wrapper">$1')
      .replace(/(<\/table>)/g, "$1</div>")
  );
});

console.log("Filters applied…");
