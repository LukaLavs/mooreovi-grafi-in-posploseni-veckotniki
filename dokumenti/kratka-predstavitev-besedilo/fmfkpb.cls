\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fmfkpb}[Preprosta klasa]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Osnovna klasa in paketi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[12pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[slovene]{babel}
\RequirePackage{amsmath,amssymb,amsfonts,amsthm}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\geometry{left=3cm,right=2.5cm,top=3cm,bottom=3cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matematična inoreja
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\theoremstyle{definition} % poševno za definicije, opombe, primere
\newtheorem{definicija}{Definicija}[section]
\newtheorem{opomba}[definicija]{Opomba}
\newtheorem{primer}[definicija]{Primer}

\theoremstyle{plain} % poševno za trditve, izreke, posledice
\newtheorem{trditev}[definicija]{Trditev}
\newtheorem{izrek}[definicija]{Izrek}
\newtheorem{posledica}[definicija]{Posledica}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Osnovni podatki
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\avtor}[1]{\def\@avtor{#1}}
\newcommand{\naslov}[1]{\def\@naslov{#1}}
\newcommand{\letnica}[1]{\def\@letnica{#1}}
\newcommand{\mentor}[1]{\def\@mentor{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Naslovnica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makefrontpage}{
  \thispagestyle{empty}
  \begin{center}
    {\large
      UNIVERZA V LJUBLJANI\\
      FAKULTETA ZA MATEMATIKO IN FIZIKO\\[1em]
      \@naslov
    }\\[2em]
    {\large Avtor: \@avtor\\[1em]
      Mentor: \@mentor\\[1em]
      Ljubljana, \@letnica
    }
  \end{center}
  \cleardoublepage
}
