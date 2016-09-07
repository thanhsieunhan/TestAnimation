# TestAnimation

Sử dụng

	layer.animation = "squeezeDown" // tên hiệu ứng 
	layer.animate() // cho nó hoạt động

Chuỗi Animations

	layer.y = -50
	animateToNext {
	  layer.animation = "fall"
	  layer.animateTo()
	}

Functions

	animate()
	animateNext { ... }
	animateTo()
	animateToNext { ... }

Animation:

	shake
	pop
	morph
	squeeze
	wobble
	swing
	flipX
	flipY
	fall
	squeezeLeft
	squeezeRight
	squeezeDown
	squeezeUp
	slideLeft
	slideRight
	slideDown
	slideUp
	fadeIn
	fadeOut
	fadeInLeft
	fadeInRight
	fadeInDown
	fadeInUp
	zoomIn
	zoomOut
	flash


Curve

	spring
	linear
	easeIn
	easeOut
	easeInOut

Properties

	force: biên của animation
	duration: tổng thời gian thực hiện animation
	delay: thời gian chờ trước khi thực hiện animation
	damping: độ lắc, càng nhỏ càng lắc nhanh
	velocity: tổng số khoảng cách animation chạy trong 1 giây đơn vị (pt/s) 
	repeatCount:  lần lặp animation
	scale: tỉ lệ
	x: vị trí x
	y: vị trí y
	rotate: xoay 1 góc ...

	* Not all properties work together. Play with the demo app.

Autostart

	Cho phép animate mà không cần code.
	Không cần sử dụng nó nếu bạn có kế hoạch cho animation của bạn.

Autohide

	Tiết kiệm 1 dòng  "layer.alpha = 0" trong viewDidLoad().

Known issue

	Animations won't autostart when view is reached via performSegueWithIdentifier.
