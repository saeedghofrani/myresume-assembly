# Résumé String in x86 Assembly

A small historical NASM exercise that stores résumé text in a data section and
exports a function that returns a pointer to it.

## What it demonstrates

- Declaring null-terminated strings in an assembly data section
- Exporting a symbol for use by another object or executable
- Returning a pointer through the 32-bit `EAX` register
- Producing a 32-bit COFF object file for linking on Windows

## Source layout

- `resume.asm` contains the NASM-style source.
- `resume.obj` is the prebuilt 32-bit COFF object committed with the original
  exercise.

The exported `getResume` routine returns the address of the `my_resume` string.
The `career_objective` string and `printf` declaration are present in the source
but are not used by the current routine.

## Build

Install [NASM](https://www.nasm.us/) and run:

```powershell
nasm -f win32 resume.asm -o resume.obj
```

Link the resulting object from a compatible 32-bit program that calls
`getResume` and consumes the returned null-terminated string.

## Status and limitations

This is an educational snapshot from 2023. It is not the current professional
résumé, a standalone executable, or a complete résumé renderer. The function
uses a 32-bit calling convention and needs a compatible caller and linker.
