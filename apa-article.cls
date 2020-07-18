%% Custom 'article' class made by Nicholas Hedges, beginning July 2020
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apa-article}[2020/07/18 APA Format article class]

\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt, a4paper]{article}
\RequirePackage{geometry}
\geometry{margin=1in}
\pagestyle{fancy}
\fancyhf{}
\rhead{\thepage}
\renewcommand{\headrulewidth}{0pt}

\newcommand*{\institution}[1]{\gdef\@institution{#1}%
}
\newcommand*{\coursename}[1]{\gdef\@coursename{#1}%
}
\newcommand*{\professorname}[1]{\gdef\@professorname{#1}%
}

\renewcommand*{\maketitle}{
  \newpage
  \null
  \vskip 8em%
  \begin{center}%
  \let \footnote \thanks
    {\bf \@title \par}%
    \vskip 2em%
      \@author\\
      \vskip 1em%
      \@institution\\
      \vskip 1em%
      \@coursename\\
      \vskip 1em%
      \@professorname\\
      \vskip 1em%
      \@date
  \end{center}%
  \newpage
}
