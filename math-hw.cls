%% Custom 'article' class made by Nicholas Hedges, beginning July 2020
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math-hw}[2020/07/23 Class formatted as math homework]

\RequirePackage{graphicx} % support the \includegraphics command and options for images
\RequirePackage{amssymb}%for better math support
\RequirePackage{fancyhdr}               % include better headers and footers
\RequirePackage{mathtools}				% matrix alignment, more math stuff
\RequirePackage{wrapfig}				% for puting graphs next to problems

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper]{article}
\RequirePackage{geometry} % to change the page dimensions
\geometry{
	left=0.5in,
	right=0.5in,
	top=0.75in,
	bottom=0.75in
}
\newcommand*{\coursename}[1]{\gdef\@coursename{#1}}
\newcommand*{\professorname}[1]{\gdef\@professorname{#1}}
\newcommand*{\firstname}[1]{\gdef\@firstname{#1}}
\newcommand*{\lastname}[1]{\gdef\@lastname{#1}}

\pagestyle{fancy}
\fancyhf{}
% Set Headers and Footers
\fancyhead[L]{}
\fancyhead[R]{\@coursename}
\fancyfoot[L]{\@lastname} 
\fancyfoot[R]{\thepage}
%%% Change things in the document section to get corresponding changes in pdf
\allowdisplaybreaks

\renewcommand*{\maketitle}{
  \newpage
  \begin{flushleft}
    \@firstname{} \@lastname{}\\
    \@coursename\\
    \@professorname\\
    Due: \@date\\
  \end{flushleft}

  \begin{center}
    \Large \bf \@title
  \end{center}
}
