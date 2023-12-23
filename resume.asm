section .data
    my_resume db "Name: Saeed Ghofrani Ivari", 0
    career_objective db "Career Objective: Backend Developer with a passion for creating reliable and scalable web applications.", 0

section .text
    global getResume
    extern printf

getResume:
    mov eax, my_resume         ; Load the address of my_resume into EAX register
    ret