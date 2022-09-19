extrn GetModuleHandleA : proc
extrn MessageBoxA : proc
extrn RegisterClassExA : proc
extrn CreateWindowExA : proc
extrn DefWindowProcA : proc
extrn ShowWindow : proc
extrn GetMessageA : proc
extrn TranslateMessage : proc
extrn DispatchMessageA : proc
extrn PostQuitMessage : proc
extrn DestroyWindow : proc
extrn ExitProcess : proc

WNDCLASSEX struct
  cbSize            dd      ?
  style             dd      ?
  lpfnWndProc       dq      ?
  cbClsExtra        dd      ?
  cbWndExtra        dd      ?
  hInstance         dq      ?
  hIcon             dq      ?
  hCursor           dq      ?
  hbrBackground     dq      ?
  lpszMenuName      dq      ?
  lpszClassName     dq      ?
  hIconSm           dq      ?
WNDCLASSEX ends

POINT struct
  x                 dd      ?
  y                 dd      ?
POINT ends

MSG struct
  hwnd              dq      ?
  message           dd      ?
  padding1          dd      ?      ; padding

  wParam            dq      ?
  lParam            dq      ?
  time              dd      ?
  pt                POINT   <>
  padding2          dd      ?      ; padding

MSG ends

.const
NULL equ 0
CS_VREDRAW equ 1
CS_HREDRAW equ 2
COLOR_WINDOW equ 5
; WS_OVERLAPPEDWINDOW = (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU |

; WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX)

WS_OVERLAPPEDWINDOW equ 0CF0000h
CW_USEDEFAULT equ 80000000h
SW_SHOW equ 5
WM_DESTROY equ 2
WM_COMMAND equ 111h
IDC_MENU equ 109
IDM_ABOUT equ 104
IDM_EXIT equ 105

.data
szWindowClass db 'FirstApp', 0
szTitle db 'My First x64 Windows', 0
szHelpTitle db 'Help', 0
szHelpText db 'This will be a big help...', 0

.data?
hInstance qword ?
hWnd qword ?
wndclass WNDCLASSEX <>
wmsg MSG <>

.code

WndProc: ; proc hWnd : qword, uMsg : dword, wParam : qword, lParam : qword

  mov [rsp+8], rcx        ; hWnd (save parameters as locals)

  mov [rsp+10h], edx      ; Msg

  mov [rsp+18h], r8       ; wParam

  mov [rsp+20h], r9       ; lParam

  sub rsp, 38h
  cmp edx, WM_DESTROY
  jnz @next1

  xor ecx, ecx          ; exit code

  call PostQuitMessage
  xor rax, rax
  add rsp, 38h
  ret

@next1:
  cmp edx, WM_COMMAND
  jnz @default

  mov rbx, rsp
  add rbx, 38h
  mov r10, [rbx+18h]     ; wParam

  cmp r10w, IDM_ABOUT
  jz @about
  cmp r10w, IDM_EXIT
  jz @exit
  jmp @default

@about:
  xor r9d, r9d
  lea r8, szHelpTitle
  lea rdx, szHelpText
  xor ecx, ecx
  call MessageBoxA
  jmp @default

@exit:
  mov rbx, rsp
  add rbx, 38h
  mov rcx, [rbx+8h]       ; hWnd

  call DestroyWindow
  xor rax, rax
  add rsp, 38h
  ret

@default:
  mov rbx, rsp
  add rbx, 38h
  mov r9, [rbx+20h]       ; lParam

  mov r8, [rbx+18h]       ; wParam

  mov edx, [rbx+10h]      ; Msg

  mov rcx, [rbx+8]        ; hWnd

  call DefWindowProcA
  add rsp, 38h
  ret

MyRegisterClass:  ; proc hInst : qword

  sub rsp, 28h
  mov wndclass.cbSize, sizeof WNDCLASSEX
  mov eax, CS_VREDRAW
  or eax, CS_HREDRAW
  mov wndclass.style, eax
  lea rax, WndProc
  mov wndclass.lpfnWndProc, rax
  mov wndclass.cbClsExtra, 0
  mov wndclass.cbWndExtra, 0
  mov wndclass.hInstance, rcx
  mov wndclass.hIcon, NULL
  mov wndclass.hCursor, NULL
  mov wndclass.hbrBackground, COLOR_WINDOW
  mov wndclass.lpszMenuName, IDC_MENU
  lea rax, szWindowClass
  mov wndclass.lpszClassName, rax
  mov wndclass.hIconSm, NULL
  lea rcx, wndclass
  call RegisterClassExA
  add rsp, 28h
  ret


InitInstance: ; proc hInst : qword

  sub rsp, 78h
  mov rax, CW_USEDEFAULT
  xor rbx, rbx
  mov [rsp+58h], rbx            ; lpParam

  mov [rsp+50h], rcx            ; hInstance

  mov [rsp+48h], rbx            ; hMenu = NULL

  mov [rsp+40h], rbx            ; hWndParent = NULL

  mov [rsp+38h], rbx            ; Height

  mov [rsp+30h], rax            ; Width

  mov [rsp+28h], rbx            ; Y

  mov [rsp+20h], rax            ; X

  mov r9d, WS_OVERLAPPEDWINDOW  ; dwStyle

  lea r8, szTitle               ; lpWindowName

  lea rdx, szWindowClass        ; lpClassName

  xor ecx, ecx                  ; dwExStyle

  call CreateWindowExA
  mov hWnd, rax
  mov edx, SW_SHOW
  mov rcx, hWnd
  call ShowWindow
  mov rax, hWnd                 ; set return value

  add rsp,78h
  ret


Main proc
  sub rsp, 28h
  xor rcx, rcx
  call GetModuleHandleA
  mov hInstance, rax
  mov rcx, rax
  call MyRegisterClass
  test rax, rax
  jz @close              ; if the RegisterClassEx fails, exit


  mov rcx, hInstance
  call InitInstance
  test rax, rax
  jz @close              ; if the InitInstance fails, exit


@handlemsgs:             ; message processing routine

  xor r9d, r9d
  xor r8d, r8d
  xor edx, edx
  lea rcx, wmsg
  call GetMessageA
  test eax, eax
  jz @close
  lea rcx, wmsg
  call TranslateMessage
  lea rcx, wmsg
  call DispatchMessageA
  jmp @handlemsgs

@close:
  xor ecx, ecx
  call ExitProcess
Main endp

end