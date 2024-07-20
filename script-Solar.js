$(function(){
	if (WPURLS.language_code == 'en') {
		$('input[placeholder="Receba nossos emails"]').attr('placeholder', 'Subscribe to our newsletter');
	};

	// menu
	var menuTabs;
	$( '.tabs' ).each(function() {
		menuTabs = new CBPFWTabs( $(this)[0] );
	});

	// submenu
	var mouseleaveIntent = null;
	$('.abre-submenu').on('click', function(){
		menuTabs._show($('#menu > li').index($(this).parent()));
		$submenu = $(this).siblings('.submenu');
		if (!$submenu.is(':visible')) {
			$('.submenu').fadeOut();
			$(this).siblings('.submenu').fadeIn();
		};
	});
	$('html').click(function(){
		$('.submenu').fadeOut();
		$('#menu > li').removeClass('tab-current');
	});
	$('#menu > li, .submenu').click(function(event){
		event.stopPropagation();
	});
	$('#menu').append('<li style="position: relative"></li>');
	$('#menu > li').not(':last-child').mouseleave(function() {
		mouseleaveIntent = setTimeout(function() {
			$('#menu > li').removeClass('tab-current');
			$('.submenu').fadeOut();
		}, 300);
	}).mouseenter(function() {
		clearTimeout(mouseleaveIntent);
	});
	$('.abre-link').click(function() {
		window.location = $(this).attr('href');
	})

	// menu responsivo
	$('.link-menu').click(function(e){
		e.preventDefault();
		$(this).toggleClass('ativo');
		$('.itens-menu').slideToggle();
		$('.conteudo-topo .btn').toggle().toggleClass('btn-block');
	});

	// topo fixo
	header_height = $('#topo').height() - 103;
	$(window).scroll(function() {
		if ($(window).width() > 800) {
			$(this).scrollTop();
			if ($(this).scrollTop() > header_height) {
				$('.conteudo-topo, #topo').addClass('fixed');

			} else {
				$('.conteudo-topo, #topo').removeClass('fixed');
			}
		};
	});

	// video destaque
	$('.link-video').click(function(e){
		e.preventDefault();
		$($(this).attr('href')).fadeIn();
	});
	var highestCol = Math.max($('#destaques').height());
	$('.video-destaque, .video-destaque iframe').height(highestCol);

	// mapa
	var map;
	var myLatlng = new google.maps.LatLng(-22.9811704, -43.1957684);
	var mapOptions = {
		scrollwheel: false,
		zoom: 15,
		center: new google.maps.LatLng(-22.98079012, -43.20477526),
		styles: [{"featureType":"water","stylers":[{"saturation":43},{"lightness":-11},{"hue":"#0088ff"}]},{"featureType":"road","elementType":"geometry.fill","stylers":[{"hue":"#ff0000"},{"saturation":-100},{"lightness":99}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#808080"},{"lightness":54}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"color":"#ece2d9"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#ccdca1"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#767676"}]},{"featureType":"road","elementType":"labels.text.stroke","stylers":[{"color":"#ffffff"}]},{"featureType":"poi","stylers":[{"visibility":"off"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#b8cb93"}]},{"featureType":"poi.park","stylers":[{"visibility":"on"}]},{"featureType":"poi.sports_complex","stylers":[{"visibility":"on"}]},{"featureType":"poi.medical","stylers":[{"visibility":"on"}]},{"featureType":"poi.business","stylers":[{"visibility":"simplified"}]}]
	};

	google.maps.event.addDomListener(window, 'load', init);
	function init() {
		var mapElement = document.getElementById('map');
		if (mapElement) {
			map = new google.maps.Map(mapElement, mapOptions);

			var iconBase = WPURLS.template_url+'/img/';
			var marker = new google.maps.Marker({
				position: myLatlng,
				map: map,
				icon: iconBase + 'pin.png'
			});
		}
	}
	// var setMapZoom = null;
	// $('#map').mouseenter(function() {
	// 	setMapZoom = setTimeout(function() {
	// 		mapOptions.scrollwheel = true;
	// 		map.setOptions(mapOptions);
	// 	}, 1000);
	// }).mouseleave(function() {
	// 	mapOptions.scrollwheel = false;
	// 	map.setOptions(mapOptions);
	// 	clearTimeout(setMapZoom);
	// });

	// newsletter responsive
	$('.link-newsletter a').click(function(e){
		e.preventDefault();
		$(this).toggleClass('ativo');
		$('.form-busca').toggle();
	});

	// youtube api
	var tag = document.createElement('script');
	tag.src = "https://www.youtube.com/iframe_api";
	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
	var player;

	// apresentacao
	$('.nav-apresentacao a').click(function(e) {
		e.preventDefault();
		var ancora = $(this).attr('href');
		$('html, body').animate({
			scrollTop: $(ancora).offset().top - 103
		}, 1000);
	});

	$('#abas-diferenciais, #abas-motivos').easytabs({
		updateHash: false
	});

	// login
	var colorbox_login_opts = {
		inline:true,
		width: '460px',
		height: '320px',
		opacity: 0.6
	};
	if ($('.form-login .error_wid_login').length) {
		colorbox_login_opts.height = '400px';
		colorbox_login_opts.href = '#modal-login';
		$.colorbox(colorbox_login_opts);
	}

	$('.link-login').colorbox(colorbox_login_opts);

	var colorbox_pass_opts = {
		inline:true,
		width: '460px',
		height: '190px',
		opacity: 0.6
	}
	if ($('.senha_msg').length) {
		$senha_msg = $('.senha_msg').detach();
		$('#modal-senha h3').after($senha_msg);
		colorbox_login_opts.height = '250px';
		colorbox_login_opts.href = '#modal-senha';
		$.colorbox(colorbox_login_opts);
	}

	$('.link-senha').colorbox(colorbox_pass_opts);

	// input
	$('input[type="radio"]').uniform();

	// fancyselect
	$('.campo-select').fancySelect();
	$('.fancy-select li').click(function() {
	  $that = $(this);
	  setTimeout(function() {
	    $that.closest('.fancy-select').next().find('input[type="text"]').focus();
	  }, 1);
	});

	// tooltip
	$('.icone-duvida').hover(function(){
		$(this).find('.tooltip').fadeToggle();
	});

	// copiar codigo
	ZeroClipboard.config( { swfPath: WPURLS.template_url+"/js/ZeroClipboard.swf" } );
	var client = new ZeroClipboard( $(".logotipos button") );

	// faq
	$('.pergunta').click(function(e){
		e.preventDefault();
		$(this).toggleClass('ativo');
		$(this).siblings('.resposta').slideToggle();
	});

	// banco
	$('.lista-banco li').click(function(){
		$('.lista-banco li').removeClass('ativo');
		$(this).addClass('ativo');
	});

	$('#link-voltar').click(function() {
		history.go(-1);
		return false;
	});

	// input file
	$('.link-upload').click(function (e) {
		e.preventDefault();
		$('.upload-arquivo').click();
	});
	$('.upload-arquivo').change(function () {
		$('.input-fake').val($(this).val());
	})

	// candidatar-se
	$('.box-candidatar .btn-vazado').colorbox({
		inline:true,
		width: '500px',
		height: '800px',
		opacity: 0.6,
		maxWidth: '100%',
		onOpen: function() {
			$li = $(this).closest('li');
			texto_modal = $li.find('.texto-modal').html();
			$('#modal-candidatar-texto').html(texto_modal);
			titulo = $li.find('h3').text();
			$('#modal-candidatar input[name="your-subject"]').val(titulo);
			$('.box-candidatar').css('display', '');
		}
	});

	$('.lista-vagas li').click(function(){
		$('.box-candidatar').hide();
		$(this).find('.box-candidatar').show();
	});

	// mais depoimentos
	$('.depoimentos-voluntario .veja-mais .link-verde').click(function(e){
		e.preventDefault();
		$(this).hide();
		$('.todos-depoimentos').slideDown(function(){
			var $container = $('#mais-depoimentos');
			// initialize
			$container.masonry({
				columnWidth: 290,
				itemSelector: '.item',
				'gutter': 30
			});
		});
	});
	$('.depoimentos-voluntario .veja-menos .link-verde').click(function(e){
		e.preventDefault();
		$('.depoimentos-voluntario .veja-mais .link-verde').show();
		$('.todos-depoimentos').slideUp();
	});

	$('#depoimentos-voluntario.depoimentos-voluntario .todos-depoimentos').show().find('#mais-depoimentos').masonry({
		columnWidth: 290,
		itemSelector: '.item',
		'gutter': 30
	});

	if ($('.mc4wp-alert').is(':visible')) {
		$('html').click(function(){
			$('.mc4wp-alert').fadeOut();
		});
	}

	$('a[href$=".pdf"]').attr('target', '_blank');
});

// var playButton = $('.rsPlayBtn');
// function onYouTubeIframeAPIReady() {
// 	player = new YT.Player('video', {
// 		events: {
// 			'onReady': onPlayerReady,
// 			'onStateChange': onPlayerStateChange
// 		}
// 	});
// }
// function onPlayerReady(event) {
// 	if (!navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
// 		playButton.addEventListener("click", function() {
// 			player.playVideo();
// 		});
// 	}
// }
// var done = false;
// function onPlayerStateChange(event) {
// 	if (event.data == YT.PlayerState.PAUSED && !done) {
// 		$('.video-destaque').fadeOut();
// 	}
// }
