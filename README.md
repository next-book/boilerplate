# Next-book Boilerplate

A quick start for publishing next-books. It requires skills in web development and very basic command line use.

We know it asks a lot at the moment — if there’s anything we could help with, reach us via [next-book.info](https://next-book.info) website.

## Requirements

Depending on your system, you may have some of these already installed.

- git ([installation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- [node.js](https://nodejs.org/en/)
- [hugo](https://gohugo.io/) ([installation](https://gohugo.io/getting-started/installing))

## Installation

1. Clone this repository.
2. Open the command line and navigate into the newly created folder.
3. Run `npm install`.
4. Run `npm run build`.

If everything goes well, there should be a `_book` folder with the book.

Book needs to be in a git repository, so if you downloaded the book instead of cloning the repository, init the repository and commit its current status.

## Publishing a book

- Edit book contents in `content` folder:
  - Book chapters are in `.md` files.
  - Book metadata is in `book.json` file. (Specify reading order of chapter into `chapters` array.)
  - Book opening page is in `_index.md`.
- Edit book layout in `layouts` folder. This boilerplate uses [hugo](https://gohugo.io/) for HTML generation.
- Edit visual styles and scripts in `assets` folder.
- You can use `filters.js` file to run some search and replace and similar operations on the generated HTML.

To publish a book, run `npm run build` and upload the `_book` folder to any website. You can use your local web server to preview the book.
