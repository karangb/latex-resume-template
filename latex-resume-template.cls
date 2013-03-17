\ProvidesClass{latex-resume-template}[2013/03/12 Onkur Sen Resume Class]

\NeedsTeXFormat{LaTeX2e}
\PassOptionsToClass{10pt}{article}
\LoadClassWithOptions{article}

\RequirePackage{mdwlist}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}

\RequirePackage[compact]{titlesec}
\titlespacing{\section}{0pt}{*0}{*0}
\titleformat{\section}{\Large\sc}{\thesection}{1em}{}

\RequirePackage{multicol}
\setlength{\multicolsep}{6.0pt plus 2.0pt minus 1.5pt}

\hoffset -1.5in
\voffset -0.8in
\textheight 10.4in
\textwidth 7.8in

\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}
\setlength{\headsep}{0pt}
\setlength{\topskip}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}

% Insert normalizing space at the beginning due to fancyhdr
\AtBeginDocument{
  \begin{center}
  \end{center}
}

\pagestyle{fancy}

% First argument: address
% Second argument: phone number
\newcommand{\address}[2]{
  \lhead{#1\\#2}
}

% First argument: email address
% Second argument: github page
\newcommand{\email}[2]{
  \rhead{#1\\#2}
}

% First argument: name
\newcommand{\name}[1]{
  \chead{{\bf \huge #1}}
}

\lfoot{}
\cfoot{}
\rfoot{}

% Academic honor
% First argument: honor name
% Second argument: Date
\newcommand{\honor}[2]{#1 & #2 \\}

% Horizontal line to separate sections
\newcommand{\hr}{
\vspace{-3mm}
\begin{center}
\line(1,0){560}
\end{center}
\vspace{-1mm}
}

% Job header.
% First argument: Company name
% Second argument: Skills
% Third argument: Date
% Title argument: Date
\newcommand{\job}[4]{
  \subHeading{#1}{#2}{#3}
  \noindent \emph{#4} \\
  \vspace{-6mm}
}

\newcommand{\school}[3]{
  \subHeading{#1}{#2}{#3}  
  \vspace{-6mm}
}

\newcommand{\subHeading}[3]{
  \noindent {\bf #1} \hfill {\bf #2} $\vert$ #3\\
}

% Project information
\newcommand{\project}[4]{
{\bf #1}: #2  & {\bf #3} & #4 \\
}

% Commands used for typesetting publication
\newcommand{\aSpace}{\\ \indent \; \;}
\newcommand{\aItem}{\; \; \longrightarrow}
\newcommand{\publication}[1]{
\vspace{-2mm}
$\aItem$ {\bf Publication:} #1
\vspace{2mm}
}

% Activity
\newcommand{\activity}[2]{
\item {\bf #1}: #2
}

