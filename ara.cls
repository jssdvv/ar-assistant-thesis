% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                                 MIT License                                  ║
% ║                                                                              ║
% ║   Copyright (c) 2024 Jesús D. Galvis Carvajal, Juan S. Carrillo Rangel       ║
% ║                                                                              ║
% ║   Permission is hereby granted, free of charge, to any person obtaining a    ║
% ║   copy of this software and associated documentation files (the "Soft-       ║
% ║   ware"), to deal in the Software without restriction, including without     ║
% ║   limitation the rights to use, copy, modify, merge, publish, distribute,    ║
% ║   sublicense, and/or sell copies of the Software, and to permit persons to   ║
% ║   whom the Software is furnished to do so, subject to the following condi-   ║
% ║   tions:                                                                     ║
% ║                                                                              ║
% ║   The above copyright notice and this permission notice shall be included    ║
% ║   in all copies or substantial portions of the Software.                     ║
% ║                                                                              ║
% ║   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS    ║
% ║   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI-  ║
% ║   TY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT      ║
% ║   SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES    ║
% ║   OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,   ║
% ║   ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR      ║
% ║   OTHER DEALINGS IN THE SOFTWARE.                                            ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ara}[2024/09/24 v1.0 ara APA class]

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║   Default options for the predefined class right before the type of docu-    ║
% ║   ment and its paper size format.                                            ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[letterpaper]{report}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║  Packages required by the ara class document structure arrangement.          ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\RequirePackage{layout}
