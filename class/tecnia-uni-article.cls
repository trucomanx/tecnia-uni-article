%% source:
%% https://github.com/trucomanx/separator-rule

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tecnia-uni-article}[2023/04/16 Example LaTeX class]

% Options
%\DeclareOption{red}{\renewcommand{\wordcolour}{sharelatexcolour}}
\DeclareOption*{\PackageWarning{separator-rule}{The option ‘\CurrentOption’ is current unknown}}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[twocolumn,twoside,a4]{article}


\RequirePackage{comment}
\RequirePackage{setspace}
\RequirePackage{leading}

\RequirePackage{hyperref}
\RequirePackage{anyfontsize}


\RequirePackage{Archivo}

\RequirePackage[left=20mm,right=20mm,top=20mm,bottom=25mm]{geometry}
\def\InterColumnSpace{0.6cm}
\setlength{\columnsep}{\InterColumnSpace}


\RequirePackage[T1]{fontenc}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tikz}
\RequirePackage{xcolor}

\definecolor{orcidgreen}{HTML}{76B200}
\newcommand{\orcidlogo}{%
  \begin{tikzpicture}[scale=0.15]
    \fill[orcidgreen] (0,0) circle (1);
    \node[white, font=\bfseries\tiny] at (0,0) {ID};
  \end{tikzpicture}%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Title format
\newcommand{\TecniaTitleFormat}[1]
{{\centering\fontsize{17pt}{25pt}\selectfont\textbf{\MakeUppercase{#1}}\par\vspace{5mm}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Authors
\newenvironment{TecniaAuthors}
{%
\noindent
\begin{minipage}[t]{\textwidth}
\centering\fontsize{13pt}{15pt}\selectfont%
}
{%
\end{minipage}\\[0pt]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Author format
\newcommand{\TecniaAuthorFormat}[3]
{%
{\fontsize{13pt}{21.4}\selectfont\textbf{#1}$^{\mathbf{#2}}$%
\ifx\relax#3\relax
% Se #1 for vazio
\else
% Se #1 não for vazio
\href{#3}{\orcidlogo}
\fi
}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abstract
\newenvironment{TecniaAbstract}[1]
{
\noindent
\begin{minipage}[t]{\textwidth}
\fontsize{9pt}{12pt}\selectfont%
\noindent\textbf{\MakeUppercase{#1}}\\[9pt]
}
{
\par
\end{minipage}\\[9pt]
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Keywords
\newenvironment{TecniaKeywords}[1]
{
\noindent
\begin{minipage}[t]{\textwidth}
\fontsize{8pt}{12pt}\selectfont\itshape#1:%
}
{
\par
\end{minipage}\\[0mm]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data
\newenvironment{TecniaDate}
{
\noindent
\begin{minipage}[t]{\textwidth}
\fontsize{8pt}{12pt}\selectfont%
}
{
\end{minipage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data
\newenvironment{TecniaInstitutions}
{
\noindent
\begin{minipage}[t]{\textwidth}
\centering
\fontsize{8pt}{12pt}\selectfont%
}
{
\end{minipage}\\[3pt]
}


\newcommand{\TecniaInstitution}[2]
{{\fontsize{8pt}{12pt}\selectfont$^{#1}$#2}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}

\def\IndentSpace{20pt}


% Configuring section title format: number, point, space, title in normal size
\titleformat{\section}
  {\normalfont\normalsize\bfseries} % Font size same as normal text (12pt), bold
  {\hspace{\IndentSpace}\thesection.\ } % Number, point, space
  {0pt} % No additional indentation beyond paragraph indent
  {\MakeUppercase} % No extra formatting after the title

% Configuring subsection title format to match
\titleformat{\subsection}
  {\normalfont\normalsize\bfseries} % Font size same as normal text (12pt), bold
  {\hspace{\IndentSpace}\thesubsection.\ } % Number, point, space
  {0pt} % No additional indentation beyond paragraph indent
  {\MakeUppercase} % No extra formatting after the title



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% References

\RequirePackage[backend=biber]{biblatex}%block=ragged,


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Foot line

\RequirePackage{fancyhdr}

% Valores configuraveis
\def\TecniaDoiNumber{10.21754/tecnia.vxxxx.xxx}
\def\TecniaVolDate{Vol\textbf{.xx} N°\textbf{y} \textbf{Enero-Junio 20xx}}
\def\TecniaInitialPage{5}
\def\TecniaAuthorEtAl{Author et al.}

\newcommand{\SetTecniaDoiNumber}[1]{\def\TecniaDoiNumber{#1}}
\newcommand{\SetTecniaVolDate}[1]{\def\TecniaVolDate{#1}}
\newcommand{\SetTecniaInitialPage}[1]{\def\TecniaInitialPage{#1}}
\newcommand{\SetTecniaAuthorEtAl}[1]{\def\TecniaAuthorEtAl{#1}}


% Configuring the footer with fancyhdr
\pagestyle{fancy}
\fancyhf{} % Clear default headers and footers
\fancyfoot[L]{DOI: \TecniaDoiNumber} % Left footer
\fancyfoot[R]{TECNIA \TecniaVolDate} % Right footer
\fancyhead[R]{\number\numexpr\thepage+\TecniaInitialPage-1\relax} % Right header with page number
\fancyhead[C]{\TecniaAuthorEtAl}
\renewcommand{\headrulewidth}{0pt} % Remove header rule
\renewcommand{\footrulewidth}{0pt} % Add a thin footer rule



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Book antiqua en word is Palatino en latex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% avoid line break
\hyphenpenalty 10000
\exhyphenpenalty 10000


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



