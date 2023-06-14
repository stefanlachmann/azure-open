# azure-open

It's essentially like [git-open](https://github.com/paulirish/git-open) and
git-open works execellent with most providers, but not with azure repos that
lives in `dev.azure.com`. So i made this little script so i can do the same as
with `git open` but with `az-open`

## install

clone this repo to a location of your choice

basic:

```bash
echo 'alias az-open=<path/to/your/azure-open>' >> .zshrc
```

or you can make the script into an executable and then symlink or move it into
your $PATH || .bashrc etc

## Test with

navigate to an azure repository and run `$ az-open`

this should print the url and then open your default browser to the azure devops
repository

## Unit tests

Basic verification that urls are fetched in a correct manor and that url
replacements are applied correctly. Please note that these tests assume you have
substituted <expected_fetch_url> and <expected_rewritten_url> with the expected
values you want to compare against. Additionally, these tests should be run
within the same shell environment where the code is executed, as they rely on
the current Git configuration.
