{}
  The author of this library is Halil Han Badem.
  Please do not change this information without permission.
  This file is free of charge to the developers of Medula.

  Build Delphi IDE: Delphi 10.3
  Developer by: Halil Han Badem

  Instagram: https://instagram.com/halilhanbadem.pas
  Facebook: https://facebook.com/halilhanbadem
  Twitter: https://twitter.com/halilhanbadem
  Github: https://github.com/halilhanbadem
  Website: https://halilhanbadem.com
  Udemy Delphi Education: https://udemy.com/sifirdan-delphi-ogrenin
}

{
Warning!!!

If you own, the paid deploy is strictly prohibited. 
These libraries are distributed free of charge. If you want to support me, please donate through the site! I'd be happy if you donated.

Uyarı!!!

Sahiplenmek, ücretli dağıtmak kesinlikle yasaktır. 
Bu kütüphaneler ücretsiz olarak dağıtılmaktadır. Bana destek olmak istiyorsanız lütfen site üzerinden bağış yapın! Bağış yaparsanız mutlu olurum.

Donate web site: https://halilhanbadem.com/donate.html
Bağış web site: https://halilhanbadem.com/donate.html  
}

<meta charset="utf-8">
<form action="islem.php" method="POST">
	<input type="hidden" name="tokenURL" value="<?php echo $_GET['tokenURL'] ?>">
	<input type="hidden" name="callbacktarget" value="<?php echo $_GET['callbacktarget'] ?>">
	<label>SMS Kodu: </label>
	<input type="text" name="smskod" required>
	<button type="submit">Gönder</button>
	<br>
	<br>
	<br>
	<a>Bu script denemedir. SMS kodu onay için <b>1903</b> girilmesi gerekmektedir.</a>

	<p>Beşiktaş'lıyım sonuçta :) </p>
</form>



