<?php

$ThemeInfo['bootstrap'] = array(
  'Name'        => 'Bootstrap',
  'Description' => "Bootstrap for Vanilla has been rewritten from scratch on top of <a href='http://getbootstrap.com'>Bootstrap 3</a> in this second installation of the most popular theme for Vanilla Forums. Kickstart your community with a fresh and solid theme that is ready to be customized to your heart's desires.",
  'Version'     => '2.5.1',
  'Url'         => 'https://github.com/kasperisager/vanilla-bootstrap',
  'Author'      => 'Kasper Kronborg Isager',
  'AuthorEmail' => 'kasperisager@gmail.com',
  'AuthorUrl'   => 'https://github.com/kasperisager',
  'License'     => 'MIT',
  'RequiredApplications' => array('Vanilla' => '2.1.x'),

  'Options' => array(
    'Styles' => array(
      'Default'   => '%s_default',
      'Cerulean'  => '%s_cerulean',
      'Cogsci'    => '%s_cogsci',
      'Darkly'    => '%s_darkly',
      'Flatly'    => '%s_flatly',
      'Yeti'      => '%s_yeti'
    )
  )
);
