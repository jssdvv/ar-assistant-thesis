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
\ProvidesClass{ara}[2024/09/24 v1.1 ara APA class]

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║   Default options for the predefined class right before the type of docu-    ║
% ║   ment(report) and its paper size format.                                    ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt,letterpaper]{article}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║   Packages required by the ara class document structure arrangement.         ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{etoolbox}                   % Logic Conditions
\RequirePackage{fancyhdr}                   % Headers
\RequirePackage{titlesec}                   % Titles
\RequirePackage{enumitem}                   % Lists
\RequirePackage{fancyvrb,fvextra}           % Advanced Verbatim
\RequirePackage{tocloft}                    
\RequirePackage{calc}                       

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                                   MARGINS                                    ║
% ║                                                                              ║
% ║   https://www.overleaf.com/learn/latex/Lengths_in_LaTeX                      ║
% ║   https://www.overleaf.com/learn/latex/Page_size_and_margins                 ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

% GENERAL

\setlength{\hoffset}{0in}                   % Initial Horizontal Offset
\setlength{\voffset}{0in}                   % Initial Vertical Offset

% TEXT

\setlength{\oddsidemargin}{0in}             % Left Side Margin Odd Page
\setlength{\evensidemargin}{0in}            % Left Side Margin Even Page
\setlength{\textwidth}{\paperwidth-2in}     % Text Area Width
\setlength{\textheight}{\paperheight-2in}   % Text Area Height

% NOTES

\setlength{\marginparwidth}{0in}            % Notes Area Width
\setlength{\marginparsep}{0in}              % Left Margin And Right Text Area Margin

% HEADER

\setlength{\headheight}{12pt}               % Header Area Height
\setlength{\topmargin}{-0.5in}              % Top Margin And Vertical Offset Separation
\setlength{\headsep}{-\topmargin-\headheight}

% FOOTER

\setlength{\footskip}{0.5in}

% LINE BREAKS

\fvset{breaklines=true}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                                 IDENTATIONS                                  ║
% ║                                                                              ║
% ║   https://ctan.org/pkg/titlesec                                              ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

% TITLES

\titlespacing{\section}{0pt}{*0}{\baselineskip}
\titlespacing{\subsection}{0pt}{*0}{*0}
\titlespacing{\subsubsection}{0pt}{*0}{*0}
\titlespacing{\paragraph}{0.5in}{*0}{1ex}
\titlespacing{\subparagraph}{0.5in}{*0}{1ex}

% TEXT
\setlength{\parindent}{0.5in}

% LISTS

\setlist[itemize]{
    label=\textbullet,       
    topsep=0pt,
    partopsep=0pt,
    parsep=0pt,
    leftmargin=0.5in
}

% QUOTES

\renewenvironment{quote}{
    \list{}{
        \leftmargin=0.5in
        \rightmargin=0pt
        \topsep=0pt
        \parsep=0pt
    }\item\relax
}{\endlist}%\vspace{-\baselineskip}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                                    HEADERS                                   ║
% ║                                                                              ║
% ║   https://ctan.org/pkg/fancyhdr                                              ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\newcommand{\setheader}[1]{

    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[L]{#1}
    \fancyhead[R]{\thepage}

    \renewcommand{\headrulewidth}{0pt}

    \fancypagestyle{plain}{
        \fancyhf{}
        \fancyhead[L]{#1}
        \fancyhead[R]{\thepage}
        \renewcommand{\headrulewidth}{0pt}
    }
}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                                  COVER PAGE                                  ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

\newcommand{\@dregree}{}
\newcommand{\@director}{}
\newcommand{\@directordegree}{}
\newcommand{\@codirector}{}
\newcommand{\@codirectordegree}{}
\newcommand{\@institution}{}
\newcommand{\@faculty}{}
\newcommand{\@school}{}
\newcommand{\@program}{}
\newcommand{\@city}{}
\newcommand{\@actualyear}{}

\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\director}[1]{\gdef\@director{#1}}
\newcommand{\directordegree}[1]{\gdef\@directordegree{#1}}
\newcommand{\codirector}[1]{\gdef\@codirector{#1}}
\newcommand{\codirectordegree}[1]{\gdef\@codirectordegree{#1}}
\newcommand{\institution}[1]{\gdef\@institution{#1}}
\newcommand{\faculty}[1]{\gdef\@faculty{#1}}
\newcommand{\school}[1]{\gdef\@school{#1}}
\newcommand{\academicprogram}[1]{\gdef\@program{#1}}
\newcommand{\city}[1]{\gdef\@city{#1}}
\newcommand{\actualyear}[1]{\gdef\@actualyear{#1}}

\newcommand{\coverpage}{
    \begin{center}
        
        \ifboolexpr{
            test {\ifdefempty{\@title}} or
            test {\ifdefempty{\@author}} or
            test {\ifdefempty{\@degree}} or
            test {\ifdefempty{\@director}} or
            test {\ifdefempty{\@directordegree}}
        }{
            \PackageError{ara}{
                Falta alguno de los siguientes datos:
                \string\title{...},
                \string\author{...},
                \string\degree{...},
                \string\director{...},
                \string\directordegree{...},
            }{
                Complete estos comandos antes de \string\begin{document}
            }
        }{
            \@title \par
            \vfill
            \@author \par
            \vfill
            Trabajo de Grado Para Optar al Título de \@degree
            \vfill
            Director \par
            \@director \par
            \@directordegree \par
        }

        \ifdefempty{\@codirector}{
            \vfill
            \vspace{3\baselineskip}
            \vfill
        }{
            \ifx\@codirectordegree\@empty

                \PackageError{ara}{
                    Falta el grado del codirector
                }{
                    Agregue \string\codirectordegree{...} antes de \string\begin{document}
                }

            \fi
            
            \vfill
            Codirector \par
            \@codirector \par
            \@codirectordegree \par
            \vfill
        }

        \ifboolexpr{
            test {\ifdefempty{\@institution}} or
            test {\ifdefempty{\@faculty}} or
            test {\ifdefempty{\@school}} or
            test {\ifdefempty{\@program}} or
            test {\ifdefempty{\@city}} or
            test {\ifdefempty{\@actualyear}}
        }{
            \PackageError{ara}{
                Falta alguno de los siguientes datos:
                \string\institution{...},
                \string\faculty{...},
                \string\school{...},
                \string\program{...},
                \string\city{...},
                \string\actualyear{...}
            }{
                Complete estos comandos antes de \string\begin{document}
            }
        }{
            \@institution \par
            Facultad de \@faculty \par
            Escuela de \@school \par
            \@program \par
            \@city \par
            \@actualyear
        }

        \clearpage

    \end{center}
}

% ╔══════════════════════════════════════════════════════════════════════════════╗
% ║                                                                              ║
% ║                           LIST OF APPENDICES PAGE                            ║
% ║                                                                              ║
% ║   https://ctan.org/pkg/tocloft                                               ║
% ║                                                                              ║
% ╚══════════════════════════════════════════════════════════════════════════════╝

% Using Tocloft
\newlistof{appendixlist}{loa}{\hfill\bfseries\normalsize{Lista de apéndices}\hfill}

% Command for creating appendices in LOA and in text
\newcommand{\appendixsection}[1]{
  \refstepcounter{section}
  \addcontentsline{loa}{section}{{Apéndice \thesection. }#1}
  \section*{\textbf{Apéndice \thesection}\\#1}
}

\addtocontents{loa}{\hfill\bfseries\normalsize{Pág.}\par}

\newcommand{\listofappendices}{\listofappendixlist}