  <div class="container-fluid">
%include templates/snippet.errors errors=errors
     <div class="row">
        <div class="span12">
          <h2>{{dashboard}}</h2>
<ul>
    % for q in queries:
        <li>
           <a href="/index/{{isinstance(q, dict) and q['query'] or q}}">
               {{isinstance(q, dict) and q['desc'] or 'query: %s' % q}}
           </a>
        </li>
    %end
</ul>
       </div>
      </div>
    </div> <!-- /container -->

