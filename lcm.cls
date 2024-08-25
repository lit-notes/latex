
\ProvidesClass{lcm}[2024/08/23 LCM LaTeX class]

\LoadClass{ctexart}

\RequirePackage{graphicx}

\RequirePackage{listings}
\PassOptionsToPackage{
language=bash,
showspaces=true
}{listings}
\RequirePackage{listings}

\renewcommand{\maketitle}{
    \twocolumn[
        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \@title
        \medskip
    ]
}


\graphicspath{
    {img/}
    {../img/}
}

\newcommand{\img}[1]{
    \begin{figure}[h] % must add `h` to insert here
    \centering
    \includegraphics[width=\textwidth]{#1}
    \caption{#1}
    \end{figure}
}

\RequirePackage{xcolor}

\lstset{
  language=bash,
  backgroundcolor = \color{lightgray},
  showspaces=false,
  showstringspaces=false,
  breaklines=true,
  frame=single
}

\newcommand{\shCode}[1]{
    \lstinline[language=bash]|#1|
}

\newcommand{\ans}[1]{
  \marginpar{\textbf{ans:} #1}
}

\renewcommand\lstlistingname{Step-Code}

\newcommand{\showSh}[1]{
    \lstinputlisting[language=bash, caption={\lstname}]{../../step/#1.sh}
}

\newcommand*\h{\section}
\newcommand*\hh{\subsection}
\newcommand*\hhh{\subsubsection}
