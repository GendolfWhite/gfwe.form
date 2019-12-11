<style type="text/css">
#fBut{width:100%; height:100%; display:flex; align-items:center; justify-content:center; position:fixed; top:0px; left:0px; background:rgba(0,0,0,0.45); z-index:300; transition:all linear 0.6s; box-sizing:border-box; color:#000;}
#fBut *{box-sizing:border-box;}

#fBut[data-visibility=hidden]{opacity:0; visibility:hidden;}
#fBut[data-visibility=visible]{opacity:1; visibility:visible;}
	/* transition */
	#fBut > .wrapper > form > span, #fBut > .wrapper > .close{transition:all linear 0.3s;}
	/* transition */
	#fBut .close{cursor:pointer;}
	#fBut > .close{width:100%; height:100%; position:absolute; top:0px; left:0px; z-index:301;}
	#fBut > .wrapper{width:calc(100% - 30px); max-width:450px; max-height:calc(100% - 30px); padding:15px; background:#FFF; border-radius:15px; position:relative; z-index:302; box-shadow:0px 0px 3px rgba(0,0,0,0.35);}
		#fBut > .wrapper > .close{width:30px; height:30px; display:flex; align-items:center; justify-content:center; font-size:20px; position:absolute; top:-15px; right:-15px; background:#FF0000; color:#FFF; border-radius:50%;}
		@media(max-width:500px){
			#fBut > .wrapper > .close{top:5px; right:5px;}
		}
		#fBut > .wrapper > .title{font-size:20px; text-align:center; font-weight:300;}
		#fBut > .wrapper > form{display:flex; width:100%; align-items:center; justify-content:center; flex-wrap:wrap; margin-top:15px;}
			#fBut > .wrapper > form input::placeholder{color:#000;}
			#fBut > .wrapper > form > span > input, #fBut > .wrapper > form > span > textarea, #fBut > .wrapper > form select, #fBut > .wrapper > form > span > label.file > span{display:block; width:100%; height:35px; border:none; font-size:15px; font-family:'Exo 2'; font-weight:300; box-shadow:0px 0px 2px rgba(0,0,0,0.25); padding-left:30px; color:#000; overflow:hidden;}
			#fBut > .wrapper > form > span{display:block; width:100%; min-width:250px; max-width:300px; margin:5px auto; position:relative;}
			@media(max-width:450px){
				#fBut > .wrapper > form > span{min-width:100%;}
			}
				#fBut > .wrapper > form > span > i{display:flex; align-items:center; justify-content:center; width:30px; height:100%; position:absolute; top:0px; left:0px; color:#FF0000;}

				#fBut > .wrapper > form > span > select{cursor:pointer;}
					#fBut > .wrapper > form > span > select > option{display:block; padding:5px 10px;}

				#fBut > .wrapper > form > span > textarea{resize:vertical; padding-top:5px; padding-bottom:5px; min-height:50px;}

				#fBut > .wrapper > form > span > label.file{cursor:pointer; display:block; width:100%;}
					#fBut > .wrapper > form > span > label.file > input{display:none;}
					#fBut > .wrapper > form > span > label.file > span{display:flex; align-items:center;}

			#fBut > .wrapper > form > span.radio{}
				#fBut > .wrapper > form > span.radio > b{display:block; font-size:16px; font-weight:500;}
				#fBut > .wrapper > form > span.radio > label{display:inline-block; cursor:pointer; margin:3px 5px 3px 0px;}
				#fBut > .wrapper > form > span.radio > label > input{display:none;}
				#fBut > .wrapper > form > span.radio > label > input:checked + i:before{content:'\f192';}
			
			#fBut > .wrapper > form > span.checkbox{}
				#fBut > .wrapper > form > span.checkbox > label{display:block; cursor:pointer; margin:3px 0px 3px 0px;}
				#fBut > .wrapper > form > span.checkbox > label > input{display:none;}
				#fBut > .wrapper > form > span.checkbox > label > input:checked + i:before{content:'\f14a';}

				#fBut > .wrapper > form > span > button{display:block; width:100%; border:none; height:40px; border-radius:4px; background:#FF0000; color:#FFF; font-family:'Exo 2'; font-weight:300; font-size:18px;}

			#fBut > .wrapper > form > span.info{text-align:center; font-size:12px;}


@keyframes fButLoadRotate{0%{transform:rotate(0deg);}20%{transform:rotate(72deg);}40%{transform:rotate(144deg);}60%{transform:rotate(216deg);}80%{transform:rotate(288deg);}100%{transform:rotate(3600deg);}}
@keyframes fButLoadScale{0%{transform:scale(1.0);}10%{transform:scale(1.1);}20%{transform:scale(1.2);}30%{transform:scale(1.3);}40%{transform:scale(1.4);}50%{transform:scale(1.5);}60%{transform:scale(1.4);}70%{transform:scale(1.3);}80%{transform:scale(1.2);}90%{transform:scale(1.1);}100%{transform:scale(1.0);}}
#fButLoad{width:50px; height:50px; display:block; position:fixed; top:calc(50% - (50px / 2)); left:calc(50% - (50px / 2)); z-index:1000; animation: fButLoadRotate 2s infinite ease-in-out; transition:all linear 0.3s; opacity:0; visibility:hidden;}
#fButLoad.send{opacity:1; visibility:visible;}
	#fButLoad > b{display:block; width:15px; height:15px; border-radius:99px; background:#FFF; box-shadow:0px 0px 3px rgba(0,0,0,0.35); position:absolute; animation: fButLoadScale .7s infinite ease-in-out;}
	#fButLoad > b:nth-child(1){top:0px; left:0px;}
	#fButLoad > b:nth-child(2){top:0px; right:0px;}
	#fButLoad > b:nth-child(3){bottom:0px; right:0px;}
	#fButLoad > b:nth-child(4){bottom:0px; left:0px;}


#fButInfo{width:100%; height:auto; padding:35px 10px 15px; background:linear-gradient(rgba(0,0,0,0), rgba(0,0,0,0.65)); position:fixed; bottom:0px; left:0px; text-align:center; color:rgba(255,255,255,0.85); z-index:1000; transition:all linear .6s; opacity:0; visibility:hidden;}
#fButInfo.show{opacity:1; visibility:visible;}
</style>
<script type="text/javascript">
$(function(){
	function toggle_fButForm($fbut_id){
		var $state = $("#fBut[data-form_id='"+$fbut_id+"']").attr('data-visibility');
		var $new_state = 'visible';

		if($state == $new_state)
			$new_state = 'hidden';

		$("#fBut[data-form_id='"+$fbut_id+"']").attr({
			'data-visibility':$new_state
		});
	}

	function close_fButForm(){
		$("#fBut").attr({'data-visibility':'hidden'});
	}

	function setTitle_fButForm($fbut_id, $fbut_title){
		if(typeof $fbut_title !== typeof undefined && $fbut_title !== false)
			$("#fBut[data-form_id='"+$fbut_id+"'] form input[name='Заголовок']").val($fbut_title);
	}

	$('[data-fbut]').click(function(){
		var $fbut_id = $(this).attr('data-fbut');

		setTitle_fButForm($fbut_id, $(this).attr('data-fbut_title'));
		toggle_fButForm($fbut_id);

		return false;
	});

	$('#fBut .close').click(function(){
		close_fButForm();
	});

	$("#fBut form input[type=file]").change(function(){
		$(this).toggleClass('this');

		var $filename = $(this).val().replace(/.*\\/, "");
		var $files = $(this).prop('files');
		var $filesName = "";

		if($files.length == 0){
			$filesName = $("#fBut form input[type=file].this + span").attr("placeholder");
		}else{
			for(i = 0; i < $files.length; i++){
				if(i != 0) $filesName += ", ";
				$filesName += $files[i].name;		
			}	
		}
		
		$("#fBut form input[type=file].this + span").text($filesName);

		$(this).toggleClass('this');
	});



	//////////////// ################ АЯКС ФОРМА ################ ////////////////

	function fButSendAjax(){
		$('#fButLoad').toggleClass('send');
		console.log('fButSendAjax');
	}
	$.ajaxSetup({
		url: '/mail/index.php',
		type: 'POST',
		dataType: 'text',
		beforeSend: function(){
			fButSendAjax();
		},
		error: function(req, text, error){
			console.error('Упс! Ошибочка: ' + text + ' | ' + error);
			console.log('error');
		},
		complete: function(){
			fButSendAjax();
		}
	});

	$('[data-fbut_ajax]').on('submit', function(e){
		close_fButForm();
		e.preventDefault();
		var $that = $(this),
		formData = new FormData($that.get(0));
		$.ajax({
			contentType: false,
			processData: false,
			data: formData,
			success: function(json){
				if(json){
					console.log(json);
					json = json.replace("\n", "<br>").replace("\n", "<br>").replace("\n", "<br>").replace("\n", "<br>");
					$("#fButInfo > div").html(json);
					$("#fButInfo").toggleClass('show');
					setTimeout(function(){
						$("#fButInfo").toggleClass('show');
					}, 5000);
				}
			}
		});
	});
	//////////////// ################ АЯКС ФОРМА ################ ////////////////
});
</script>
<!-- <a href="#" data-fbut='1' data-fbut_title='Обратный звонок'>Открыть форму</a> -->
<div id='fButLoad'><b></b><b></b><b></b><b></b></div>
<div id='fButInfo'>
	<div>
		Ваше сообщение было отправлено. Ожидайте ответа оператора! :)
	</div>
</div>
<div id="fBut" data-form_id='1' data-visibility='hidden'>
<!-- <div id="fBut" data-form_id='1' data-visibility='visible'> -->
	<div class="close"></div>
	<div class='wrapper'>
		<div class="close">
			<i class='fa fa-times'></i>
		</div>
		<div class="title">
			Оставьте заявку<br> и наш специалист <br>свяжется с вами
		</div>
		<!-- data-fbut_ajax -->
		<form method='post' action='/mail/index.php' enctype="multipart/form-data" data-fbut_ajax>
			<input type="hidden" name="Заголовок" value='Новая всплывающая форма от Stiven.Kolenz'>
			<!-- <span>
				<i class="fa fa-bars"></i>
				<select name="Куда">
					<option value="gendolfwhite@yandex.ru">yandex.ru</option>
					<option value="stiven.kolenz@mail.ru">mail.ru</option>
					<option value="mr.whitegroup@gmail.com">google.com</option>
				</select>
			</span> -->
			<span>
				<i class="far fa-file"></i>
				<label class="file">
					<input type="file" name="Файлы[]" placeholder="Ваше Имя" multiple>
					<span placeholder="Выберите файлы">Выберите файлы</span>
				</label>
			</span>
			<!-- <span>
				<i class="far fa-calendar"></i><input type="date" name="Дата" placeholder="Выберите дату" required>
			</span> -->
			<span>
				<i class="far fa-user"></i>
				<input type="text" name="Имя" placeholder="Ваше Имя" required>
			</span>
			<span>
				<i class="fa fa-mobile-alt"></i><input type="text" name="Телефон" placeholder="Ваш телефон" required>
			</span>
<!-- 			<span>
				<i class="far fa-envelope"></i><input type="text" name="Почта" placeholder="Ваш e-mail" required>
			</span>
			<span>
				<i class="far fa-comment"></i>
				<textarea name="Дополнительное описание" placeholder="Тут будет какое-то дополнительное описание в письмо, но это не факт :)"></textarea>
			</span>
			<span class="radio">
				<b>Куда отправить письмо?</b>
				<label>
					<input type="radio" name="Куда_отправить"><i class="far fa-circle"></i>
					yandex.ru
				</label>
				<label>
					<input type="radio" name="Куда_отправить"><i class="far fa-circle"></i>
					mail.ru
				</label>
				<label>
					<input type="radio" name="Куда_отправить"><i class="far fa-circle"></i>
					google.com
				</label>
			</span>
			<span class="checkbox">
				<label>
					<input type="checkbox" name=""><i class="far fa-square"></i>
					Отправить копию на ваш ящик?
				</label>
			</span> -->
			<span>
				<button><i class="fab fa-telegram-plane"></i> Отправить</button>
			</span>
			<span class="info">Ваши данные не будут переданы третьим лицам.</span>
		</form>
	</div>
</div>