%% resume.cls
% Resume class file
%
% Philip Linden <pjl7651@rit.edu>
% https://github.com/runphilrun/resume
%
% This file defines the layout and typesetting of document parts.
% This file should not be edited.
%
% LaTeX Project Public License (LPPL) 1.3c
% https://www.latex-project.org/lppl

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2018/07/23 v0.1 Resume Class]

% =======
% options
% -------
\DeclareOption*{% inherit options of article
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}
% -------

% ========
% packages
% --------
\RequirePackage{titlesec} % customize header styles
\RequirePackage{geometry} % page layout
\RequirePackage[T1]{fontenc} % T1 font encoding
\RequirePackage{lmodern} % use Latin Modern Sans Serif
% --------

% ======
% format
% ------

% PAGE LAYOUT
\geometry{margin=1in}
\SetFontSize{10pt}
% SECTION HEADERS
\titleformat{\section} % modify the \section command
  {\Large\scshape\raggedright} % Make the \section headers Large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the headingshape}

\titleformat{\subsection}
  {\large\bf\raggedright}
  {}{0em}
  {}

% DATED HEADERS
\newcommand{\datedsection}[2]{% right align dates after section
  \section[#1]{#1 \hfill #2} 
}

\newcommand{\datedsubsection}[2]{% right align dates after subsection
  \subsection[#1]{#1 \hfill #2} 
}

% TITLE BLOCK
\newcommand{\name}[1]{
  \centerline{\LARGE{#1}}
  \vspace{0.5em}
}

\newcommand{\contact}[2]{
  \centerline{#1 \quad // \quad #2}
}
% ------