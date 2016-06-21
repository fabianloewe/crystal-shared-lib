# crystal-shared-lib

A very simple compilable Crystal library to test https://github.com/hyronx/crystal/tree/feature/shared-library

## Usage

### Step 1: Compile the modified compiler

```
git clone https://github.com/hyronx/crystal && cd crystal
git checkout -b feature/shared_library
make
cd ..
```
NOTE: My laptop wasn't even able to finish the compilation because it seems to be too slow.
      You should use a computer with more then 3 core at 1GHz I suppose... 

### Step 2: Compile this code

Assuming you copy-pasted the previous...
```
git clone https://github.com/hyronx/crystal-shared-lib && cd crystal-shared-lib
../crystal/.build/crystal compile --emit obj src/crystal-shared-lib.cr
gcc -shared -fPIC crystal-shared-lib.o -o libcrystal-shared-lib.so 
../crystal/.build/crystal compile --link-flags "-L${PWD}" src/crystal-shared-lib-test.cr
./crystal-shared-lib-test  # -> "Hi from CrystalSharedClass" (hopefully)
```
NOTE: If ld can't find the library when executing 'crystal-shared-lib-test'
      you may create a symlink in /usr/lib to ${PWD}/libcrystal-shared-lib.so 

### Step 3: Be happy

Yay.

## Development

Test more stuff together with this compiler version

## Contributing

1. Fork it ( https://github.com/hyronx/crystal-lib/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [hyronx](https://github.com/hyronx)  - creator, maintainer
