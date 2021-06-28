# Next-book Boilerplate

A quick start for publishing next-books. It requires skills in web development and some command line profficiency.

We know it asks a lot at the moment — if there’s anything we could help with, reach us via [next-book.info](https://next-book.info) website.

## Use

Every next-book is a website. This tool makes it easier to publish a next-book from a set of resources (texts, layouts, styles etc.).

You may use this boilerplate on your machine or use this on service such as Netlify that handles all the installation and requirements for you (config file `netlify.toml` is included).

## Requirements

Depending on your system, you may have some of these already installed.

- git ([installation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- [node.js](https://nodejs.org/en/)
- [hugo](https://gohugo.io/) ([installation](https://gohugo.io/getting-started/installing))

## Running the book generator

1. Clone this repository — use a git client such as GitKraken or run `git clone https://github.com/next-book/boilerplate.git .` on command line.
2. Open the command line and navigate into the newly created folder (see troubleshooting if you don’t know how).
3. Run `npm install`.
4. Run `npm run build`.

If everything goes well, there should be a `_book` folder with the book.

**Tip:** You can preview the book by running `npm run server` — it will generate the book and then create a local server on [http://127.0.0.1:23011/](http://127.0.0.1:23011/) where the book is available.

Book needs to be in a git repository to properly version itself, so if you downloaded the book instead of cloning the repository, init the repository and commit its current status.

## Publishing a book

- Edit book contents in `content` folder:
  - Book chapters are in `.md` files.
  - Book metadata is in `_book.md` file. (You need to specify reading order of chapters in `chapters` array.)
  - Book opening page is in `_index.md`.
- Edit book layout in `layouts` folder. This boilerplate uses [hugo](https://gohugo.io/) for HTML generation.
- Edit visual styles and scripts in `assets` folder.
- You can use `filters.js` file to run some search and replace and similar operations on the generated HTML.

To publish a book, run `npm run build` and upload the `_book` folder to any website. You can use your local web server to preview the book.

## Using EPUB conversion tool

You may want to use a semi-automated EPUB conversion tool embedded in this boilerplate. See [README.epub-workflow.md](README.epub-workflow.md).

## Troubleshooting

### I’m not sure whether git is installed on my system!

Run `git version` on command line. If there’s an error, git is probably not installed or there’s some other problem. (It should be available on Linux and MacOs. On Windows, use above linked installation guide.)

### When trying to run commands on my MacOS computer, „invalid active developer path“ error pops up or a „Command Line Tools are required“ modal window is shown.

Agree to install Command Line Tools or run `xcode-select --install`.

### I don’t know how to navigate to a folder on command line.

Use command `cd` (cd as in Change Directory). You can just write `cd`, then press space and the write a name of the folder. Your command line app will be probably initially in some default location (your user folder on Linux/Mac and C:/ on Windows), so you may write something `cd Documents` and press enter — this should either warn you (when folder does not exist) or take you there. **Tips:** your command line will probably have autocompletion — you can write `cd Doc` and press TAB key and if there‘s a folder with a name starting with `Doc`, its name should be autocompleted. On some systems you can drag a folder from file browser to the command line window so that you don’t need to write it manually.
