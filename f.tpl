<a href="#" data-fbut='1' data-fbut_title='Обратный звонок'>Открыть форму</a>
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