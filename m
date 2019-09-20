Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5F0B9068
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 15:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DsoOTJaI84CMuj77y6c0FuCM1zqKydikq4ayDo8wNpA=; b=VTy2ikhCeLTBWfII2sCblmQkn
	t7+h+FY8t7nGXlHLdVd/oMiMvjBdCQdRGkDEwlwZNrA16gmoSLLw206sTndmOT48FEM+O7oo7sFo4
	J1iqjWYKmzrATb1ZgAI3zXke+a2dW7i3QX3OUip0Yh4+GFIl7bWAE/bjx/RYQaNiErOvSzNvw2MMH
	hJRFxToLtCPn+T7jtEJ+9VGr4FfXq28kj4ZctbIx55W0rnyXxw4n+JhmbKAQiJ8I3TM4chm2SNx26
	ZLBUbmjUW0aR19sVc2QenM4KpA/jh1HjhGZqoM2cyqVH2G1sn5irM4hKpr/gjzMxdaH+zA3mIJ/JP
	PMRB9LIhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIgd-0000J2-Pd; Fri, 20 Sep 2019 13:10:59 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIgW-0000IV-J8
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 13:10:54 +0000
Received: by mail-ed1-x52b.google.com with SMTP id h33so6313214edh.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 06:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=XiVdpj/UEEuQgMLs20tobAvACQta7reSgpuEeNUcjWc=;
 b=PTsKFiX7nMb5RCflfop05CCASRIs+LWgUeTsk3+WmHJhKhOVbkH7/2vVsWdVJUStUm
 U6M4xr2ljFuNo5Br0x74BePr3u9ud+El+4smx68czD1hGtCawfgz59gqCeU/yZFs22xW
 wY2Kc1LfiYVBt+BiX7xJq0XysZbQZXrlWqpWEX+0752AWIO4DXeifeI9l8KQ41EdjgIk
 5leFtzljLlNUd374xGHS6GHqT/4wSSiyQzhY1nSj9ztq95+tHP9Z8m4iKOBT4vOCTONh
 tr62ZJVGKVPB/MuIsi3KV44AvodPXTUAXa5hIPqhz1AyZBDX+M9T4CUa7zceQvfEE1Ob
 ffBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=XiVdpj/UEEuQgMLs20tobAvACQta7reSgpuEeNUcjWc=;
 b=F6X1xi71iB59TKVTk64MEWHxUWruucKaNS1uyumLcIZvMyndrBFo7RpaBmvuIzj242
 Jyy9C/7JPKbsOV4zQAXv2d6nlxmZ80mjhZIppXk26nLXPjYhsRabW1XG2BGI6Xf04sPz
 ZnZSlaFrK7phtHynKj3yMgrIE0fYkKLtQ8xrh3jRCHTdBg5nTDtL45RB0IX343kriB++
 yduBL8KEwlBzgFgKBR19pJSfJg6P0/yiFdIpgksOwFSU7uJdZfQzG2DJWwCtxI6foz0u
 2kQVPCMxns90cSqS1Li//9prYh4A4pfYVue7AJLaZDOfBHZjp8c/AnRIWZF5//IQu0kY
 3Eng==
X-Gm-Message-State: APjAAAWZPnFmeEMtoPW6JhY4PZ5hJfE52m4AQUnpULLFon1IjX+STmNf
 VvfNZXpxRMlu/UVgXshGbuA=
X-Google-Smtp-Source: APXvYqzJ1iQt+nRsTWi79AFnjTFg+c3g/mVG2BWFy10RCTVkit0gp1yPwfHxuNHQW1cl4zuBrrKN8w==
X-Received: by 2002:a50:cc43:: with SMTP id n3mr14314182edi.250.1568985051086; 
 Fri, 20 Sep 2019 06:10:51 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id f6sm320077edr.12.2019.09.20.06.10.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 06:10:50 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Message-Id: <6FEF1F8A-A574-4C53-864F-D1578573971F@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Fri, 20 Sep 2019 15:10:49 +0200
In-Reply-To: <7782BA0C-B382-4FD7-AF93-F1A593A03DE0@gmail.com>
To: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
References: <E13870CE-5B7E-4D77-A9AB-C566D6FCA7FF@gmail.com>
 <20190915204615.GB1338@makrotopia.org>
 <28C6B2C7-E05E-4894-AA5C-6751E4FE75A9@gmail.com>
 <7782BA0C-B382-4FD7-AF93-F1A593A03DE0@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_061052_662002_F0EEE81B 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ramips] Linkit Smart 7688
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0053389265059292410=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0053389265059292410==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A19E78CF-C87D-4199-82E2-2C65729A119F"


--Apple-Mail=_A19E78CF-C87D-4199-82E2-2C65729A119F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I tried to compile the package libmraa as single and have some problems =
with the dependencies:

Followed this: https://openwrt.org/docs/guide-developer/single.package
First i searched for all dependencies:

root@OpenWrt:/# opkg info libmraa
Package: libmraa
Version: 2.0.0-2
Depends: libc, libstdcpp6, libjson-c4
Status: install user installed
Section: libs
Architecture: mipsel_24kc
Size: 64409
Filename: libmraa_2.0.0-2_mipsel_24kc.ipk

root@OpenWrt:/# opkg info libc
Package: libc
Version: 1.1.23-2
Depends: libgcc1
Status: install hold installed
Essential: yes
Architecture: mipsel_24kc
Installed-Time: 1568571183

then i tried to make menuconfig so i can tick the dependencies but i did =
not find the dependencie of libc named libgcc1.=20
A try to compile after installing tools and toolchain fails as well:

novski@ubuntu:~/Documents/openwrt$ make package/libgcc1/compile V=3Ds
make[1]: Entering directory '/home/novski/Documents/openwrt'
make[1]: *** No rule to make target 'package/libgcc1/compile'.  Stop.
make[1]: Leaving directory '/home/novski/Documents/openwrt'
/home/novski/Documents/openwrt/include/toplevel.mk:216: recipe for =
target 'package/libgcc1/compile' failed
make: *** [package/libgcc1/compile] Error 2

Why do i not find the dependency libgcc1 in 'make menuconfig' search =
(/)?

Thanks, Ivan=20


> Am 19.09.2019 um 20:18 schrieb Ivan H=C3=B6rler =
<ivanhoerler@gmail.com>:
>=20
> Hi
> I have problems makeing libmraa working on Linkit Smart 7688.
> The installation worked without problems and i tested with a python =
script. See details below:
>=20
> what i did:=20
> - Compiled a openWRT 18.6
> - opkg update=20
> - opkg install libmraa
> - opkg install python3-light
> - opkg install libmraa-python3
>=20
> - copied this skript to /root:=20
>=20
> import mraa
> import time
>=20
> try:
>     print (mraa.getVersion())
> except:
>     print("no mraa available")
>=20
> # Refer to the pin-out digram for the GPIO number to silk print =
mapping
> # in this example the number 44 maps to Wi-Fi LED.
> pin =3D mraa.Gpio(2)
> pin.dir(mraa.DIR_OUT)
> while True:
>     pin.write(1)
>     time.sleep(1)
>     pin.write(0)
>     time.sleep(1)
>=20
> - and executed:
> root@OpenWrt:~# python3 mraa-test-simple.py=20
> v2.0.0
> Traceback (most recent call last):
>   File "mraa-test-simple.py", line 11, in <module>
>     pin =3D mraa.Gpio(2)
>   File "/usr/lib/python3.7/site-packages/mraa.py", line 391, in =
__init__
>     _mraa.Gpio_swiginit(self, _mraa.new_Gpio(pin, owner, raw))
> ValueError: Invalid GPIO pin specified
>=20
>=20
> - checked with a LED on pin2 like this if GPIO2 works:
> root@OpenWrt:~# cd /sys/class/gpio/
> root@OpenWrt:/sys/class/gpio# ls
> export      gpiochip0   gpiochip32  gpiochip64  unexport
> root@OpenWrt:/sys/class/gpio# echo 2 > export
> root@OpenWrt:/sys/class/gpio# ls
> export      gpio2       gpiochip0   gpiochip32  gpiochip64  unexport
> root@OpenWrt:/sys/class/gpio# cd gpio2
> =
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# echo "out" > direction
> =
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# cat value
> 0
> =
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# echo 1 > value
>=20
> - redone previous step with no changes in error output.
>=20
> what am i missing?
>=20
> Thanks for comments, Ivan H=C3=B6rler
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--Apple-Mail=_A19E78CF-C87D-4199-82E2-2C65729A119F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
tried to compile the package libmraa as single and have some problems =
with the dependencies:<div class=3D""><br class=3D""></div><div =
class=3D"">Followed this: <a =
href=3D"https://openwrt.org/docs/guide-developer/single.package" =
class=3D"">https://openwrt.org/docs/guide-developer/single.package</a></di=
v><div class=3D"">First i searched for all dependencies:</div><div =
class=3D""><br class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; =
border: none; padding: 0px;" class=3D""><div class=3D"">root@OpenWrt:/# =
opkg info libmraa</div><div class=3D"">Package: libmraa</div><div =
class=3D"">Version: 2.0.0-2</div><div class=3D"">Depends:<b class=3D""> =
libc,</b> libstdcpp6, libjson-c4</div><div class=3D"">Status: install =
user installed</div><div class=3D"">Section: libs</div><div =
class=3D"">Architecture: mipsel_24kc</div><div class=3D"">Size: =
64409</div><div class=3D"">Filename: =
libmraa_2.0.0-2_mipsel_24kc.ipk</div><div class=3D""><br =
class=3D""></div><div class=3D"">root@OpenWrt:/# opkg info<b class=3D""> =
libc</b></div><div class=3D"">Package: libc</div><div class=3D"">Version: =
1.1.23-2</div><div class=3D"">Depends:<b class=3D""> =
libgcc1</b></div><div class=3D"">Status: install hold =
installed</div><div class=3D"">Essential: yes</div><div =
class=3D"">Architecture: mipsel_24kc</div><div class=3D"">Installed-Time: =
1568571183</div></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">then i tried to make menuconfig so i can tick the =
dependencies but i did not find the dependencie of libc named =
libgcc1.&nbsp;</div><div class=3D"">A try to compile after installing =
tools and toolchain fails as well:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div =
class=3D"">novski@ubuntu:~/Documents/openwrt$ make =
package/libgcc1/compile V=3Ds</div><div class=3D"">make[1]: Entering =
directory '/home/novski/Documents/openwrt'</div><div class=3D"">make[1]: =
*** No rule to make target 'package/libgcc1/compile'. =
&nbsp;Stop.</div><div class=3D"">make[1]: Leaving directory =
'/home/novski/Documents/openwrt'</div><div =
class=3D"">/home/novski/Documents/openwrt/include/toplevel.mk:216: =
recipe for target 'package/libgcc1/compile' failed</div><div =
class=3D"">make: *** [package/libgcc1/compile] Error 2</div><div =
class=3D""><br class=3D""></div><div class=3D"">Why do i not find the =
dependency libgcc1 in 'make menuconfig' search (/)?</div><div =
class=3D""><br class=3D""></div><div class=3D"">Thanks, =
Ivan&nbsp;</div><div class=3D""><br class=3D""></div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">Am =
19.09.2019 um 20:18 schrieb Ivan H=C3=B6rler &lt;<a =
href=3D"mailto:ivanhoerler@gmail.com" =
class=3D"">ivanhoerler@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D""><div =
class=3D"">Hi</div><div class=3D"">I have problems makeing libmraa =
working on Linkit Smart 7688.</div><div class=3D"">The installation =
worked without problems and i tested with a python script. See details =
below:</div><div class=3D""><br class=3D""></div><div class=3D"">what i =
did:&nbsp;</div><div class=3D"">- Compiled a openWRT 18.6</div><div =
class=3D"">- opkg update&nbsp;</div><div class=3D"">- opkg install =
libmraa</div><div class=3D"">- opkg install python3-light</div><div =
class=3D"">- opkg install libmraa-python3</div><br class=3D""><div =
class=3D"">- copied this skript to /root:&nbsp;</div><div class=3D""><br =
class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; border: none; =
padding: 0px;" class=3D""><div class=3D""><div class=3D"">import =
mraa</div></div><div class=3D""><div class=3D"">import =
time</div></div><div class=3D""><div class=3D""><br =
class=3D""></div></div><div class=3D""><div =
class=3D"">try:</div></div><div class=3D""><div class=3D"">&nbsp; &nbsp; =
print (mraa.getVersion())</div></div><div class=3D""><div =
class=3D"">except:</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; print("no mraa available")</div></div><div class=3D""><div =
class=3D""><br class=3D""></div></div><div class=3D""><div class=3D""># =
Refer to the pin-out digram for the GPIO number to silk print =
mapping</div></div><div class=3D""><div class=3D""># in this example the =
number 44 maps to Wi-Fi LED.</div></div><div class=3D""><div =
class=3D"">pin =3D mraa.Gpio(2)</div></div><div class=3D""><div =
class=3D"">pin.dir(mraa.DIR_OUT)</div></div><div class=3D""><div =
class=3D"">while True:</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; pin.write(1)</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; time.sleep(1)</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; pin.write(0)</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; time.sleep(1)</div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">- and executed:</div><blockquote =
style=3D"margin: 0 0 0 40px; border: none; padding: 0px;" class=3D""><div =
class=3D""><div class=3D"">root@OpenWrt:~# python3 =
mraa-test-simple.py&nbsp;</div></div><div class=3D""><div =
class=3D"">v2.0.0</div></div><div class=3D""><div class=3D"">Traceback =
(most recent call last):</div></div><div class=3D""><div class=3D"">&nbsp;=
 File "mraa-test-simple.py", line 11, in &lt;module&gt;</div></div><div =
class=3D""><div class=3D"">&nbsp; &nbsp; pin =3D =
mraa.Gpio(2)</div></div><div class=3D""><div class=3D"">&nbsp; File =
"/usr/lib/python3.7/site-packages/mraa.py", line 391, in =
__init__</div></div><div class=3D""><div class=3D"">&nbsp; &nbsp; =
_mraa.Gpio_swiginit(self, _mraa.new_Gpio(pin, owner, =
raw))</div></div><div class=3D""><div class=3D"">ValueError: Invalid =
GPIO pin specified</div></div><div class=3D""><br =
class=3D""></div></blockquote><br class=3D""><div class=3D"">- checked =
with a LED on pin2 like this if GPIO2 works:</div><blockquote =
style=3D"margin: 0 0 0 40px; border: none; padding: 0px;" class=3D""><div =
class=3D""><div class=3D"">root@OpenWrt:~# cd /sys/class/gpio/</div><div =
class=3D"">root@OpenWrt:/sys/class/gpio# ls</div><div class=3D"">export =
&nbsp; &nbsp; &nbsp;gpiochip0 &nbsp; gpiochip32 &nbsp;gpiochip64 =
&nbsp;unexport</div><div class=3D"">root@OpenWrt:/sys/class/gpio# echo 2 =
&gt; export</div><div class=3D"">root@OpenWrt:/sys/class/gpio# =
ls</div><div class=3D"">export &nbsp; &nbsp; &nbsp;gpio2 &nbsp; &nbsp; =
&nbsp; gpiochip0 &nbsp; gpiochip32 &nbsp;gpiochip64 =
&nbsp;unexport</div><div class=3D"">root@OpenWrt:/sys/class/gpio# cd =
gpio2</div><div =
class=3D"">root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gp=
io/gpiochip0/gpio/gpio2# echo "out" &gt; direction</div><div =
class=3D"">root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gp=
io/gpiochip0/gpio/gpio2# cat value</div><div class=3D"">0</div><div =
class=3D"">root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gp=
io/gpiochip0/gpio/gpio2# echo 1 &gt; value</div></div><div class=3D""><br =
class=3D""></div></blockquote>- redone previous step with no changes in =
error output.<div class=3D""><br class=3D""></div><div class=3D"">what =
am i missing?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for comments, Ivan =
H=C3=B6rler</div></div>_______________________________________________<br =
class=3D"">openwrt-devel mailing list<br class=3D""><a =
href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a><br =
class=3D"">https://lists.openwrt.org/mailman/listinfo/openwrt-devel<br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_A19E78CF-C87D-4199-82E2-2C65729A119F--


--===============0053389265059292410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0053389265059292410==--

