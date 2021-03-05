#!/usr/bin/env node
const path = require("path");
const execa = require('execa');
const root = "/Users/kevinlin/Dropbox/Apps/Noah"

const dirs = [
  "vaults/dendron-dev-vault",
  "vaults/dendron-private",
  "vaults/yc-vault",
  "vaults/public-vault",
  "vaults/business-vault",
  "vaults/people-vault",
  "vaults/dendron-vault",
  "vaults/dev-vault",
  "vaults/aws-vault",
  "notes",
  "dev"
]

async function main() {
  return await Promise.all(dirs.map(async ent => {
    const fpath = path.join(root, ent);
    console.log("updating", fpath);
    try {
      await execa('/Users/kevinlin/go/bin/gitupdate', ['.'], { cwd: fpath, shell: true });
      await execa('git', ['pull'], { cwd: fpath, shell: true });
      await execa('git', ['push'], { cwd: fpath, shell: true });
      console.log("finish updating", ent)
    } catch (err) {
      console.log("no updates", ent);
    }
  }));
};

main();
