
Skip to content

    0xCD4
    /
    Microprocessor

Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights

    Settings

Files
t

Assembly

    code

Introduction of Microprocessor

    README.md

Editing reverse.asm in Microprocessor
Breadcrumbs

    Microprocessor/Assembly/code

/
in
main

Indent mode
Indent size
Line wrap mode
Editing reverse.asm file contents
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
.model small
.stack 100h
.data

    string db "hello"
    
    
.code 

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset string 
        mov cx, 5
        
        
        stackpush:
            
            mov bx, [si]
            push bx
            inc si
            loop stackpush
            
        mov cx, 5
        
        stackpop:
            pop dx
            mov ah, 02h
            int 21h
            loop stackpop
            
    main endp 
    
end main 
          
Use Control + Shift + m to toggle the tab key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page.
Editing Microprocessor/Assembly/code at main · 0xCD4/Microprocessor
