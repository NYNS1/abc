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
									<h3>공지사항</h3>
									<ul>
										<li><a href="/sharingInformation/noticeMatter/nmList">&nbsp;&nbsp;&nbsp;└ 공지사항조회</a></li>
									</ul>
									
								</li>
							
								<li>
									<h3>일정관리</h3>
									<ul>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 일정관리</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 일정추가</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 일정출력</a></li>
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 상세일정설정</a></li>
									</ul>
								</li>
							
								<li>
									<h3>게시판</h3>                       
									<ul>                                 
										<li><a href="/sharingInformation/board/list">&nbsp;&nbsp;&nbsp;└ 게시판조회</a></li>  
									</ul>                                	
								</li>
								
								<li>
									<h3>직원정보</h3>                       
									<ul>                                 
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 조직도조회</a></li>  
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 주소록조회</a></li>  
										<li><a href="#">&nbsp;&nbsp;&nbsp;└ 생일자확인</a></li>  
									</ul>                                	
								</li>
							</ul>
						</div><!-- side_list -->
					</article>
				<!-- side -->