<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".nav_sum li").mouseover(function(){
		var index = $(".nav_sum li").index($(this));
		$(".nav_sum2:nth-child("+(parseInt(index)+1)+")").show().siblings(".nav_sum2:visible").hide();
	});
	
	if(new Date().getDay()==0)var week="������"; 
	if(new Date().getDay()==1)var week="����һ"; 
	if(new Date().getDay()==2)var week="���ڶ�"; 
	if(new Date().getDay()==3)var week="������"; 
	if(new Date().getDay()==4)var week="������"; 
	if(new Date().getDay()==5)var week="������"; 
	if(new Date().getDay()==6)var week="������";
	$("#date").html(new Date().getFullYear()+"��"+(new Date().getMonth()+1)+"��"+new Date().getDate()+"�� "+week);
});
</script>
<div id="header">
  <div id="nav">
    <ul class="nav_sum">
      <li<{if $fcateinfo.id==""}> class="li3"<{else}> class="li2"<{/if}>><a href="/">��ҳ</a></li>
      <li<{if $fcateinfo.id=="1"}> class="li3"<{/if}>><a href="content.php?fid=1">���ĸſ�</a></li>
      <li<{if $fcateinfo.id=="6"}> class="li3"<{/if}>><a href="list.php?fid=6">������Ϣ</a></li>
      <li<{if $fcateinfo.id=="9"}> class="li3"<{/if}>><a href="list.php?fid=9">��ѧ��Դ</a></li>
      <li<{if $fcateinfo.id=="13"}> class="li3"<{/if}>><a href="content.php?fid=13&cid=14">ʵ��ʵѵ</a></li>
      <li<{if $fcateinfo.id=="18"}> class="li3"<{/if}>><a href="list.php?fid=18">����԰��</a></li>
      <li<{if $fcateinfo.id=="21"}> class="li3"<{/if}>><a href="content.php?fid=21">����ָ��</a></li>
      <div class="clear"></div>
    </ul>
    <{foreach key=fid item=cates from=$newscate}>
    <ul class="nav_sum2" fid="<{$fid}>"<{if $fcateinfo.id==""}><{if $fid>1}> style="display:none;"<{/if}><{else}><{if $fcateinfo.id!=$fid}> style="display:none;"<{/if}><{/if}>>
    <{foreach item=v from=$cates}>
      <li<{if $cateinfo.id==$v.id}> class="li2"<{/if}>><a href="<{if $v.alone==1}>content<{else}>list<{/if}>.php?fid=<{$fid}>&cid=<{$v.id}>"><{$v.title}></a></li>
    <{/foreach}>
      <div class="clear"></div>
    </ul>
    <{/foreach}>
    <div class="nav_sum3"><strong>�����ǣ�</strong><span id="date"></span></div>
  </div>
</div>