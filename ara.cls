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
% ║   ment(report) and its paper size format.                                    ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[12pt,letterpaper]{report}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║   Packages required by the ara class document structure arrangement.         ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{calc}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║   Margins definitions. Please visit the documentation for more informa-      ║
% ║   tion:                                                                      ║
% ║   www.overleaf.com/learn/latex/Lengths_in_LaTeX                              ║                                           ║
% ║   www.overleaf.com/learn/latex/Page_size_and_margins                         ║                                           ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

% Horizontal
\setlength{\hoffset}{0in}
\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{0in}
\setlength{\textwidth}{\paperwidth-2in}
\setlength{\marginparsep}{0in}
\setlength{\marginparwidth}{0in}

% Identation
\setlength{\parindent}{0.5in}

% Vertical
\setlength{\voffset}{0in}
\setlength{\topmargin}{-0.5in}
\setlength{\footskip}{0.5in}
\setlength{\headsep}{-\topmargin-\headheight}
\setlength{\textheight}{\paperheight-2in}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║   Preamble macro's parameters for cover page information. Please visit the   ║
% ║   documentation for more information:                                        ║
% ║   www.overleaf.com/learn/latex/How_TeX_macros_actually_work%3A_Part_4        ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\def\degree#1{\gdef\@degree{#1}}
\def\director#1{\gdef\@director{#1}}
\def\directordegree#1{\gdef\@directordegree{#1}}
\def\codirector#1{\gdef\@codirector{#1}}
\def\codirectordegree#1{\gdef\@codirectordegree{#1}}
\def\institution#1{\gdef\@institution{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\school#1{\gdef\@school{#1}}
\def\academicprogram#1{\gdef\@academicprogram{#1}}
\def\city#1{\gdef\@city{#1}}
\def\actualyear#1{\gdef\@actualyear{#1}}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                                  COVER PAGE                                  ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\newcommand{\coverpage}{
    \begin{center}
        {\@title \par}
        \vfill
        {\@author \par}
        \vfill
        {Trabajo de Grado Para Optar al Título de \@degree}
        \vfill
        {Director \par}
        {\@director \par}
        {\@directordegree \par}
        \vfill
        {Codirector \par}
        {\@codirector \par}
        {\@codirectordegree \par}
        \vfill
        {\@institution \par}
        {Facultad de \@faculty \par}
        {Escuela de \@school \par}
        {\@academicprogram \par}
        {\@city \par}
        {\@actualyear}
    \end{center}
}
