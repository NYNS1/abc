<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>					
				
	<script>
    	$(function(){
    		
	    	
    		//아코디언
    		$("#accordion>ul>li").click(function(){
    			if($(this).children("ul").attr("style")=="display: block;"){
	    			$(this).children("ul").slideUp();
    			}else{
	    			$(this).children().slideDown();
    			}
    		
    		})
	    	
	    })
	    
	</script>
					
					<h2 class="blind">서브 메뉴</h2>
					<article>
						<div class="lst_snb" id="accordion">
							<ul>
								<li>
									<h3>중메뉴 1</h3>
									<ul>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴1-1</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴1-2</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴1-3</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴1-4</a></li>
									</ul>
									
								</li>
							
								<li>
									<h3>중메뉴 2</h3>
									<ul>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴2-1</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴2-2</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴2-3</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴2-4</a></li>
									</ul>
								</li>
							
								<li>
									<h3>중메뉴 3</h3>                       
									<ul>                                 
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴3-1</a></li>  
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴3-2</a></li>  
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴3-3</a></li>  
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 소메뉴3-4</a></li>  
									</ul>                                	
								</li>
							</ul>
						</div><!-- side_list -->
					</article>
				<!-- side -->