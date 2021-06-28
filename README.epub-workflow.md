# Using EPUB conversion tool

You can use a semi-automated EPUB conversion tool embedded in this boilerplate.

1. Create a new repository using the **Use this template** button
2. In the newly created repository, upload the EPUB file into the folder `epub`.
3. Wait until there’s a green check mark symbol in the latest [running action](../../actions)
4. Allow Github’s [Pages functionality](../../settings/pages) and select branch `docs` as its source. You’ll be provided with a link.
5. Follow the link — you’ll find a conversion configurator. After setting everything up, go to the Data export, copy all data via the button and follow the link to params.json file — paste copied data into the file and commit changes.
6. Delete the EPUB file uploaded in step 2 — now, instead of configurator the [Pages link](../../settings/pages) should provide you with a published book.
7. You may edit files in `content` folder to further edit book’s source code. See [README.md](README.md) for more details.
