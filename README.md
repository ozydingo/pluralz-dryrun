# Pluralz Dry-run

This repository contains instructions and a git history aimed at teaching how to build a gem. This gem will repluralize words with `z` instead of `s`. It will have a dependency on the `strings-inflection` gem to practice using a gem dependency, as well as rspec both for testing and to practice using a development dependency.

This lesson was first taught to a group at 3Play Media on 2021-09-24

## Getting started from scratch

### 0. Check git default branch settings

```sh
git config --global init.defaultBranch
git config --global init.defaultBranch main
```

### 1. Create the rpository

```sh
mkdir pluralz && cd pluralz
git init
touch README.md
git commit -m "initial commit"
```

Push this repository to github

```sh
git remote add origin git@github.com:3playmedia-dev/pluralz-gem.git
git push -u origin main
```

### 2. Create the gemspec file

```sh
touch pluralz.gemspec
```

Edit the contents.

### 3. Create the file scaffolding

```sh
mkdir -p lib spec/lib
touch spec/spec_helper.rb
touch spec/lib/pluralz_spec.rb
touch lib/pluralz.rb
```

Use TDD. Add the first test to pluralz_spec.rb:

```rb
require "spec_helper"

describe Pluralz do
  it "loads" do
    expect { Pluralz }.not_to raise_error
  end
end
```

This will fail. Make it pass.

```rb
require "pluralz"
```

```rb
module Pluralz; end
```

### 4. Add an inflection module

```sh
mkdir lib/pluralz spec/lib/pluralz
touch spec/lib/pluralz/infelction_spec.rb
touch lib/pluralz/infelction.rb
```

Add a test

```rb
require "spec_helper"

descibe Pluralz::Inflection do
  describe "splural?" do
    it "knows 'developers' is plural" do
      splural = Pluralz::Inflection.splural?("developers")
      expect(splural).to eq(true)
    end

    it "knows 'developer' is not plural" do
      splural = Pluralz::Inflection.splural?("developer")
      expect(splural).to eq(false)
    end
  end
end
```

Make it pass. Add a Gemfile so we can use `strings-inflection` in our lib.

```sh
touch Gemfile
echo Gemfile.lock >> .gitignore
```

```
source 'https://rubygems.org'
gemspec
```

```sh
bundle install
```

And so on.

### 5. Build the gem

```sh
echo "*.gemspec" >> .gitignore
gem build pluralz.gemspec
```

Use it in another project

```rb
gem 'pluralz', path: "$PATH_TO_GEM/pluralz-dryrun"
```
