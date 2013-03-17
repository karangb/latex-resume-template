\ProvidesClass{onkursen-resume}[2013/03/12 Onkur Sen Resume Class]

\NeedsTeXFormat{LaTeX2e}
\PassOptionsToClass{10pt}{article}
\LoadClassWithOptions{article}

\RequirePackage{mdwlist}
\RequirePackage{hyperref}

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
\newcommand{\job}[3]{
\noindent {\bf #1} \hfill {\bf #2} $\vert$ #3\\
\vspace{-6mm}
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

