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
\ExecuteOptions{letterpaper,10pt,oneside,final}
\ProcessOptions\relax
\LoadClass{article}
% -------

% ========
% packages
% --------
\RequirePackage{titlesec} % customize header styles
\RequirePackage[margin=0.75in]{geometry} % page layout
\RequirePackage[colorlinks=true,urlcolor=blue]{hyperref} % insert hyperlinks
\RequirePackage{url}      % insert links
\RequirePackage[T1]{fontenc} % T1 font encoding
\RequirePackage{lmodern}  % use Latin Modern Sans Serif
\RequirePackage{fontawesome} % high quality web icons
% --------

% ======
% format
% ------

% TITLE BLOCK SPECIAL
\newcommand{\name}[1]{
  \centerline{\LARGE{#1}}
  \vspace{0.5em}
}

% SECTION HEADERS
\titleformat{\section} % modify the \section command
{\Large\scshape\raggedright} % Make the \section headers Large (\Large),
                             % small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the headingshape}

\titleformat{\subsection} % modify the \subsection command
{\large\bf\raggedright}
{}{0em}
{}

\newcommand{\headerwithlabel}[3]{% bold first item, italic second, right align third
  {\large{\bf #1}, {\it #2}\hfill #3} \\
}
