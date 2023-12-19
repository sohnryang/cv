\ProvidesClass{resume}[Resume Class]

\LoadClass[11pt, a4paper]{article}

\usepackage[left=1.5cm,top=1.5cm,right=1.5cm,bottom=1.5cm]{geometry}
\usepackage[parfill]{parskip}
\usepackage{lmodern}
\pagestyle{empty}

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \printname{
  \begingroup
    \hfill{\namestyle\namesize \@name}\hfill
    \nameskip\break
  \endgroup
}

\def \email#1{\def\@email{#1}}
\def \@email {}

\def \printcontact{
  \begingroup
    \centerline{\emailstyle \@email}
    \smallskip\break
  \endgroup
}

\let\old@document=\document
\renewcommand{\document}{
  \old@document
  \printname
  \printcontact
}

\newenvironment{res-section}[1]{
  \sectionskipbefore
  {\bfseries\sffamily #1}
  \sectionskipafter
  \hrule
  \begin{list}{}{
    \setlength{\leftmargin}{1.5em}
  }
  \item[]
}{
  \end{list}
}

\newenvironment{res-subsection}[2]{
  {\bfseries\sffamily #1} \hfill {\it #2}
  \begin{list}{--}{
    \setlength{\leftmargin}{1.5em}
  }
  \itemsep -0.5em \vspace{-0.5em}
  \item[]
}{
  \end{list}
  \vspace{0.5em}
}

\def\namestyle{\bfseries\sffamily}
\def\namesize{\huge}
\def\nameskip{\bigskip}
\def\emailstyle{\ttfamily}
\def\sectionskipbefore{\medskip}
\def\sectionskipafter{\medskip}
