\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aaltoslides}

\RequirePackage{graphicx,color}
\LoadClassWithOptions{beamer}

\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamertemplate{items}[ball]
\setbeamertemplate{sections/subsections in toc}[ball]
\setbeamertemplate{title page}[default][colsep=-4bp,rounded=true,shadow=true]
\setbeamertemplate{part page}[default][colsep=-4bp,rounded=true,shadow=true]

\logo{}
\newcommand{\smalllogo}{}
\newcommand{\largelogo}{}

\newcommand\aaltofootertext[3]{\def\footfrow{#1}\def\footsrow{#2}\def\foottrow{#3}}
\aaltofootertext{}{}{}

\newif\iffooter\footertrue
\newif\ifnormaltitle\normaltitlefalse

% AALTO COLORS
\definecolor{aaltoyellow}{RGB}{254,203,00}  % FECB00
\definecolor{aaltored}{RGB}{237,41,57}      % ED2939
\definecolor{aaltoblue}{RGB}{00,101,189}    % 0065BD
\definecolor{aaltogray}{RGB}{146,139,129}   % 928B81
\definecolor{aaltolgreen}{RGB}{105,190,40}  % 69BE28
\definecolor{aaltodgreen}{RGB}{00,155,58}   % 009B3A
\definecolor{aaltocyan}{RGB}{00,168,180}    % 00A8B4
\definecolor{aaltopurple}{RGB}{102,57,183}  % 6639B7
\definecolor{aaltomagenta}{RGB}{177,05,157} % B1059D
\definecolor{aaltoorange}{RGB}{255,121,00}  % FF7900

% LENGTHS
\newlength\aaltofooterplace \setlength\aaltofooterplace{8.5cm}
\newlength\aaltofooterruleheight \setlength\aaltofooterruleheight{2.5pt}
\newlength\aaltofooterrulewidth \setlength\aaltofooterrulewidth{12cm}
\newlength\aaltotitleboxplace \setlength\aaltotitleboxplace{0cm}
\newlength\aaltotitleboxheight \setlength\aaltotitleboxheight{5cm}
\newlength\aaltotitleboxwidth \setlength\aaltotitleboxwidth{12cm}
\newlength\aaltotitlesep \setlength\aaltotitlesep{0.3cm}
\newlength\aaltotitleentrysep \setlength\aaltotitleentrysep{0.2cm}
\newlength\largelogoheight \setlength\largelogoheight{1.5cm}
\newlength\smalllogoheight \setlength\smalllogoheight{0.5cm}

% OPTIONS
% Primary color
\DeclareOption{first=yellow}{\definecolor{primarycolor}{named}{aaltoyellow}}
\DeclareOption{first=red}{\definecolor{primarycolor}{named}{aaltored}}
\DeclareOption{first=blue}{\definecolor{primarycolor}{named}{aaltoblue}}
\DeclareOption{first=gray}{\definecolor{primarycolor}{named}{aaltogray}}
\DeclareOption{first=lgreen}{\definecolor{primarycolor}{named}{aaltolgreen}}
\DeclareOption{first=dgreen}{\definecolor{primarycolor}{named}{aaltodgreen}}
\DeclareOption{first=cyan}{\definecolor{primarycolor}{named}{aaltocyan}}
\DeclareOption{first=purple}{\definecolor{primarycolor}{named}{aaltopurple}}
\DeclareOption{first=magenta}{\definecolor{primarycolor}{named}{aaltomagenta}}
\DeclareOption{first=orange}{\definecolor{primarycolor}{named}{aaltoorange}}
% Secondary color
\DeclareOption{second=yellow}{\definecolor{secondarycolor}{named}{aaltoyellow}}
\DeclareOption{second=red}{\definecolor{secondarycolor}{named}{aaltored}}
\DeclareOption{second=blue}{\definecolor{secondarycolor}{named}{aaltoblue}}
\DeclareOption{second=gray}{\definecolor{secondarycolor}{named}{aaltogray}}
\DeclareOption{second=lgreen}{\definecolor{secondarycolor}{named}{aaltolgreen}}
\DeclareOption{second=dgreen}{\definecolor{secondarycolor}{named}{aaltodgreen}}
\DeclareOption{second=cyan}{\definecolor{secondarycolor}{named}{aaltocyan}}
\DeclareOption{second=purple}{\definecolor{secondarycolor}{named}{aaltopurple}}
\DeclareOption{second=magenta}{\definecolor{secondarycolor}{named}{aaltomagenta}}
\DeclareOption{second=orange}{\definecolor{secondarycolor}{named}{aaltoorange}}
% Logo
\renewcommand{\largelogo}{\includegraphics[height=\largelogoheight]{Aalto_ELEC_EN_21_RGB_2.png}}
%\renewcommand{\smalllogo}{\includegraphics[height=\smalllogoheight]{Aalto_ELEC_EN_13_RGB_1.png}}
%\renewcommand{\smalllogo}{\includegraphics[height=\smalllogoheight]{Aalto_ELEC_EN_13_RGB_2.png}}
%\renewcommand{\smalllogo}{\includegraphics[height=\smalllogoheight]{Aalto_ELEC_EN_13_RGB_3.png}}

% Other options
\DeclareOption{nofoot}{\footerfalse}
\DeclareOption{nologo}{\renewcommand{\largelogo}{\vspace{\largelogoheight}}\renewcommand{\smalllogo}{}}
\DeclareOption{normaltitle}{\normaltitletrue}

\ExecuteOptions{first=blue,second=red}
\ProcessOptions

\newcommand{\aaltosl@name}{aaltoslides}
\newcommand{\aaltosl@date}{July 2, 2010}
\newcommand{\aaltosl@version}{Version 1.0}
\newcommand{\aaltosl@id}{\aaltosl@version\space (\aaltosl@date)}
\typeout{********************************************************^^J%
'\aaltosl@name'\space Document Class\space\aaltosl@id^^J%
Author: Kimmo Jarvinen (kimmo.jarvinen@tkk.fi), modified by Simo S\"arkk\"a (simo.sarkka@aalto.fi)^^J%
********************************************************^^J%
}

% SOME CUSTOMIZATION

\setbeamertemplate{navigation symbols}{} % Remove navigation symbols
\setbeamertemplate{frametitle continuation}[from second] 
\setbeamersize{text margin left=1cm, text margin right=1cm}
\iffooter\setbeamertemplate{footline}{\vspace{1.1cm}}\fi % B. Brumley's fix to the "text too low problem"

% Set fonts
\renewcommand{\rmdefault}{phv} % Helvetica (resembles Arial)
\renewcommand{\sfdefault}{phv} % Helvetica (resembles Arial)
\setbeamerfont{title}{size=\Large, series=\bfseries}
\setbeamerfont{frametitle}{size=\Large, series=\bfseries}

% Set colors
\setbeamercolor{structure}{fg=primarycolor}
\setbeamercolor{alerted text}{fg=secondarycolor}
\setbeamercolor{example text}{fg=secondarycolor}

\setbeamercolor{block title}{use=structure,fg=white,bg=structure.fg!75!black}
\setbeamercolor{block title alerted}{use=alerted text,fg=white,bg=alerted text.fg!75!black}
\setbeamercolor{block title example}{use=example text,fg=white,bg=example text.fg!75!black}

\setbeamercolor{block body}{parent=normal text,use=block title,bg=block title.bg!10!bg}
\setbeamercolor{block body alerted}{parent=normal text,use=block title alerted,bg=block title alerted.bg!10!bg}
\setbeamercolor{block body example}{parent=normal text,use=block title example,bg=block title example.bg!10!bg}


% FOOTER
\usebackgroundtemplate{
  \iffooter  
  \begin{minipage}{\paperwidth}
    \begin{center}
      \vspace{\aaltofooterplace}
      {\color{primarycolor}\rule{\aaltofooterrulewidth}{\aaltofooterruleheight}}
    \end{center}
    \vspace{-0.65cm}
    {\flushleft\hspace{0.45cm}\smalllogo}
    \vspace{-0.9cm}
    \begin{flushright}
    \Tiny \bfseries
    \footfrow \qquad \ \, \phantom{0} \\ 
    {\color{aaltogray} \footsrow \qquad \ \, \phantom{0} \\ 
    \foottrow \qquad \ \, \phantom{0} \\}
    \end{flushright}
  \end{minipage}
  \fi
}

% TITLEPAGE
\ifnormaltitle
  % More traditional title page
  \newcommand{\aaltotitleframe}{
  {\usebackgroundtemplate{}
  \frame{
  \vspace{0.6cm}
  \largelogo
  \vspace{0.3cm}
  \titlepage
  }}}
\else
  % Aalto-style title page
  \newcommand{\aaltotitleframe}{
  {\usebackgroundtemplate{
    \begin{minipage}{\paperwidth}
      \vspace{0.8cm}
      \hspace{0.5cm}
      \largelogo
      \vspace{\aaltotitleboxplace}
      \begin{center}
        {\color{primarycolor}\rule{\aaltotitleboxwidth}{\aaltotitleboxheight}}
      \end{center}
    \end{minipage} 
  }
  \frame[t]{
  \vspace{1.2cm}
  \vspace{\largelogoheight}
  {\color{white} 
  {\bfseries \Large \inserttitle}  \\[\aaltotitlesep]
  \begin{minipage}{0.6\textwidth}
  \insertauthor \\[\aaltotitleentrysep]
  \footnotesize \insertinstitute \\[\aaltotitleentrysep]
  \insertdate
  \end{minipage}
  \begin{minipage}{0.37\textwidth}
%  \begin{flushright}
%   \includegraphics[width=0.6\columnwidth]{simo}
%  \end{flushright}
  \end{minipage}
  }
  }
  }}
\fi

