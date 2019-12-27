$(function(){

	// $('input[name="Телефон"]').mask('+7 (999) 999-99-99');

	var $_fBut = {
		_fbut_button_attr: 'data-fbut',
		_fbut_button_title_attr: 'data-fbut_t',
		_fbut_tag: 'fbut-form',
		_fbut_tag_close: 'fbut-close',
		_fbut_wrap_tag: 'fbut-wrap',
		_fbut_view_attr: 'data-view',
		_fbut_opt_close: 'hide',
		_fbut_opt_open: 'show',
		_fbut_inputTitle: 'input[name="Заголовок"]',
		_fbut_inputfile: 'fbut-file input[type="file"]',
		_fbut_load: 'fbut-load',
		_fbut_load_class: 'send',
		_errorText: 'Ошибка по время отправки сообщения.',
		_fbut_info_tag: 'fbut-info',
		_fbut_info: null,

		_ajax: true, // Отправка формы без перезагрузки.
		_autoHideInfo: true, // Автоматическое закрытие окна с информацией.
		_autoHideDelay: 10000, // Задержка закрытия окна с информацией.

		_wrap: null,
		_forms: null,
		_form: null,
		_form_id: null,

		hideForms: function(){
			this._forms.attr(this._fbut_view_attr, this._fbut_opt_close);
		},
		showForm: function(){
			this._form.attr(this._fbut_view_attr, this._fbut_opt_open);
		},
		setForm: function(){
			this._form = this._wrap.find(this._fbut_wrap_tag+'#'+this._form_id);
		},
		showWrap: function(){
			this._wrap.attr(this._fbut_view_attr, this._fbut_opt_open);
		},
		hideWrap: function(){
			this.hideForms();
			this._wrap.attr(this._fbut_view_attr, this._fbut_opt_close);
		},
		setFormTitle: function($title){
			if($title)
				this._form.find(this._fbut_inputTitle).val($title);
		},
		open: function($form_id, $title = false){
			this._form_id = $form_id;
			this.hideForms();
			this.setForm();
			this.setFormTitle($title);
			this.showForm();
			this.showWrap();
		},
		changeFile: function($input){
			let $filename = $input.val().replace(/.*\\/, "");
			let $files = $input.prop('files');
			let $filesName = "";
			if($files.length == 0){
				$filesName = $input.siblings('span').attr("placeholder");
			}else{
				if($files.length > 1)
					$input.siblings('span').attr({'count':$files.length});

				for(i = 0; i < $files.length; i++){
					if(i != 0) $filesName += ", ";
					$filesName += $files[i].name;
				}	
			}
			$input.siblings('span').text($filesName);
		},
		load_anim: function(){
			this._fbut_load.toggleClass(this._fbut_load_class);
		},
		infoText: function($text){
			this._fbut_info.find('div').text($text);
		},
		showInfo: function(){
			this._fbut_info.attr(this._fbut_view_attr, this._fbut_opt_open);
			if(this._autoHideInfo)
				setTimeout(function(){
					$self.hideInfo();
				}, this._autoHideDelay);
		},
		hideInfo: function(){
			this._fbut_info.attr(this._fbut_view_attr, this._fbut_opt_close);
		},
		sendForm: function($form){
			let $f = $($form);
			$.ajax({
				url: $f.attr('action'),
				type: 'POST',
				dataType: 'text',
				contentType: false,
				processData: false,
				data: new FormData($form),
				beforeSend: function(){
					$self.load_anim(); // Запуск функции лоадера
				},
				error: function(req, text, error){
					$self.infoText($self._errorText+text + ' | ' + error)
				},
				complete: function(){
					$self.hideWrap();
					$self.load_anim(); // Окончание функции лоадера
					$self.showInfo();
				},
				success: function($answer){
					$self.infoText($answer)
				}
			}).done(function(){
				$($form).trigger("reset");
			});

		},

		////// EVENTS //////
		e_buttonForOpen: function(){
			$(document).on('click', '['+this._fbut_button_attr+']', function(){
				let $but = $(this);
				let $form_id = $but.attr($self._fbut_button_attr);
				let $title = $but.attr($self._fbut_button_title_attr);
				$self.open($form_id, $title);
			});
		},
		e_buttonForClose: function(){
			$(document).on('click', this._fbut_tag_close, function(){
				$self.hideWrap();
			});
		},
		e_changeFile: function(){
			$(document).on('change', this._fbut_inputfile, function(){
				$self.changeFile($(this));
			});
		},
		e_submitForm: function(){
			$(document).on('submit', this._fbut_wrap_tag+' form', function(event){
				if($self._ajax){
					event.preventDefault();
					$self.sendForm(this);
					// return false;
				}else{

				}
			});
		},
		e_close_info: function(){
			$(document).on('click', this._fbut_info_tag, function(){
				$self.hideInfo();
			});
		},
		setEvents: function(){
			$self = this;
			this.e_buttonForOpen();
			this.e_buttonForClose();
			this.e_changeFile();
			this.e_submitForm();
			this.e_close_info();
		},
		////// EVENTS //////

		init: function(){
			this._wrap = $(this._fbut_tag);
			this._fbut_load = this._wrap.find(this._fbut_load);
			this._fbut_info = this._wrap.siblings(this._fbut_info_tag);
			this._forms = this._wrap.find(this._fbut_wrap_tag);
			this.setEvents();
		}
	};

	$_fBut.init();

});