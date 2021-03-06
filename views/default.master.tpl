<!DOCTYPE html>
<html lang="{$CurrentLocale.Lang}" class="sticky-footer-html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {asset name="Head"}
  </head>
  <body id="{$BodyID}" class="{$BodyClass} sticky-footer-body">
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">{t c="Toggle navigation"}</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{link path="home"}">{logo}</a>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            {categories_link}
            {discussions_link}
            {activity_link}
            {custom_menu}
          </ul>
          {if $User.SignedIn}
            <ul class="nav navbar-nav navbar-right hidden-xs">
              {module name="MeModule"}
            </ul>
            <ul class="nav navbar-nav navbar-right visible-xs">
              {profile_link}
              {inbox_link}
              {bookmarks_link}
              {dashboard_link}
              {signinout_link}
            </ul>
          {else}
            <ul class="nav navbar-nav navbar-right">
              {signin_link}
            </ul>
          {/if}
        </div>
      </div>
    </nav>

    <section class="container">
      <div class="row">
        <div id="cogsci-forum-header" class="col-md-12">
          <div class="well">
            <a href="http://www.cogsci.nl/" target="blank">
              <img src="themes/cogsci/images/header1.png">
            </a>
          </div>
        </div>
      </div>

      <div class="row">
        <aside class="page-sidebar" role="complementary">
          <div class="well">
            {asset name="Panel"}
          </div>
        </aside>

        <main class="page-content" role="main">
          {if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList"))}
            <div class="well search-form">{searchbox}</div>
          {/if}
          {asset name="Content"}
        </main>
      </div>
    </section>

    <footer class="page-footer sticky-footer">
      <div class="container">
        <div class="clearfix">
          <p class="pull-right">{t c="Copyright"} &copy; {$smarty.now|date_format:"%Y"} <a href="http://www.cogsci.nl/smathot">Sebastiaan Mathôt</a> // Photos originally from <a href="http://www.lucnix.be/main.php">Lucnix</a> and <a href="http://commons.wikimedia.org/wiki/File:Octopus_vulgaris2.jpg">WikiMedia</a> // Powerered by <a href="http://www.vanillaforums.org/">Vanilla</a>
          </p>
        </div>
        {asset name="Foot"}
      </div>
    </footer>

    {event name="AfterBody"}
  </body>
</html>
