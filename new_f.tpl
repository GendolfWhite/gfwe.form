<a href="#" fbut="_main2" fbut_t="Заголовок услуги">Открыть форму</a>

<fbut-form view='hide' style="display:none;">
	<link rel="stylesheet" type="text/css" href="/css/fbut-form.css">
	<script type="text/javascript" src="/js/jquery.mask.min.js"></script>
	<script type="text/javascript" src="/js/fbut-form.js"></script>
	<fbut-close></fbut-close>
	<fbut-load><b></b><b></b><b></b><b></b></fbut-load>
	
	<fbut-wrap view="hide" id='_main'>
		<fbut-close></fbut-close>
		<fbut-title>Оставьте заявку<br> и наш менеджер свяжется<br>с Вами в кратчайшее время</fbut-title>
		<form method="POST" action='/mailindex.php' accept-charset='UTF-8' autocomplete="off" enctype="multipart/form-data" ajax>
			<input type="hidden" name="Заголовок" value="Заголовок формы">
			<label fbut-select>
				<i class="fa fa-bars"></i>
				<select name="Куда">
					<option value="gendolfwhite@yandex.ru">yandex.ru</option>
					<option value="stiven.kolenz@mail.ru">mail.ru</option>
					<option value="mr.whitegroup@gmail.com">google.com</option>
				</select>
			</label>
			<fbut-file>
				<i class="far fa-file"></i>
				<label class="file">
					<input type="file" name="Файлы[]" placeholder="Ваше Имя" multiple required>
					<span placeholder="Выберите файлы" count="0">Выберите файлы</span>
				</label>
			</fbut-file>
			<label>
				<i class="far fa-calendar"></i><input type="date" name="Дата" placeholder="Выберите дату" required>
			</label>
			<label>
				<i class="far fa-user"></i>
				<input type="text" name="Имя" placeholder="Ваше Имя" required>
			</label>
			<label>
				<i class="fa fa-mobile-alt"></i><input type="text" name="Телефон" placeholder="Ваш телефон" required>
			</label>
			<label>
				<i class="far fa-envelope"></i><input type="text" name="Почта" placeholder="Ваш e-mail" required>
			</label>
			<label>
				<i class="far fa-comment"></i>
				<textarea name="Дополнительное описание" placeholder="Тут будет какое-то дополнительное описание в письмо, но это не факт :)"></textarea>
			</label>
			<fbut-radio>
				<b>Куда отправить письмо?</b>
				<label>
					<input type="radio" name="Куда_отправить" value="yandex.ru" checked>
					<span>yandex.ru</span>
				</label>
				<label>
					<input type="radio" name="Куда_отправить" value="mail.ru">
					<span>mail.ru</span>
				</label>
				<label>
					<input type="radio" name="Куда_отправить" value="google.com">
					<span>google.com</span>
				</label>
			</fbut-radio>
			<fbut-checkbox>
				<label>
					<input type="checkbox" name="Копия" value="Да">
					<span>Отправить копию на ваш ящик?</span>
				</label>
			</fbut-checkbox>
			<button><span><i class="fab fa-telegram-plane"></i> Отправить заявку</span></button>
			<fbut-agree>
				<label>
					<input type="checkbox" name="Персональные_данные" value="Я даю согласие на обработку персональных данных" required checked>
					<span>
						Я даю согласие на обработку моих персональных данных.
					</span>
				</label>
			</fbut-agree>
		</form>
	</fbut-wrap>

	<fbut-wrap view="hide" id='_main2'>
		<fbut-close></fbut-close>
		<fbut-title>Оставьте заявку<br> и наш менеджер свяжется<br>с Вами в кратчайшее время</fbut-title>
		<form method="POST" action='/mail/index.php' accept-charset='UTF-8' autocomplete="off" enctype="multipart/form-data" ajax>
			<input type="hidden" name="Заголовок" value="Заголовок формы">
			<fbut-file>
				<i class="far fa-file"></i>
				<label class="file">
					<input type="file" name="Файлы[]" placeholder="Ваше Имя" multiple required>
					<span placeholder="Выберите файлы" count="0">Выберите файлы</span>
				</label>
			</fbut-file>
			<label>
				<i class="far fa-user"></i>
				<input type="text" name="Имя" placeholder="Ваше Имя" required>
			</label>
			<label>
				<i class="fa fa-mobile-alt"></i><input type="text" name="Телефон" placeholder="Ваш телефон" required>
			</label>
			<button><span><i class="fab fa-telegram-plane"></i> Отправить заявку</span></button>
			<fbut-agree>
				<label>
					<input type="checkbox" name="Персональные_данные" value="Я даю согласие на обработку персональных данных" required checked>
					<span>
						Я даю согласие на обработку моих персональных данных.
					</span>
				</label>
			</fbut-agree>
		</form>
	</fbut-wrap>
</fbut-form>
<fbut-info><div></div></fbut-info>