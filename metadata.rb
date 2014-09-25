# rubocop:disable SingleSpaceBeforeFirstArg
name             'php-xcache'
maintainer       'Libeo'
maintainer_email 'maxime.pelletier@libeo.com'
license          'All rights reserved'
description      'Installs php-xcache'
# Problemes d'accent, alors ne pas mettre le README comme description longue
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'
depends          'php'
depends          'yum-repoforge'
