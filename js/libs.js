$(function(){

	function toggle_fButForm($fbut_id){
		var $state = $("#fBut[data-form_id='"+$fbut_id+"']").attr('data-visibility');
		var $new_state = 'visible';

		if($state == $new_state){
			$new_state = 'hidden';
		}

		$("#fBut[data-form_id='"+$fbut_id+"']").attr({
			'data-visibility':$new_state
		});
	}

	function close_fButForm(){
		$("#fBut").attr({
			'data-visibility':'hidden'
		});
	}

	function setTitle_fButForm($fbut_id, $fbut_title){
		if(typeof $fbut_title !== typeof undefined && $fbut_title !== false){
			$("#fBut[data-form_id='"+$fbut_id+"'] form input[name='Заголовок']").val($fbut_title);
		}
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