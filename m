Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE03ABC4C3
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 11:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-Id:In-Reply-To:To:References:Date:Mime-Version:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IKz8TwmR89MAFCyrIYg+JHx1nta2jvEW+y9N3roIGxM=; b=SS9y6wBooRWRypIRwIIJvBl/6
	dAPcO3lKQQMmfMGlZhts1UG4mf+waoAH5EBgxtgd9bVyL9/fQmUISRyBP3ADRuUw2ISlubxDDCL4U
	hzzoWOLzYf8GQJRHhIPSDsFdiZo34jJ4R/ZSp2a2w+bB4UAMzXEaDoMJ5EC09cMZRQBVDfYnuv3Om
	9dS7QVQM9y1Gr2oJZB5ybetKfwGQ4yZdKRcZ9bFUlg8LIDfGEmqS5bgG8B+882Fk0ut7VxeVGzB90
	JYnWQijef9jChsNlT0awYxDGpNtj2paqVapUWdykY0lmUMXMZOf7slUVIW9Hpi1mPBynzpcOyOkI7
	OycX6zeeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCh3d-0000tv-1l; Tue, 24 Sep 2019 09:24:29 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCh3I-0000sq-Sr
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 09:24:10 +0000
Received: by mail-ed1-x52d.google.com with SMTP id r16so1112833edq.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 02:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
 bh=wR4+PEy6wLVgJQ35+LiBr7szoI7huaVXAbKYzV+3U3Q=;
 b=bz/FmgbrnDz6FM0oSDkY0labV+GdhljvjBEO3d0Zqlu5pwSAui8vBN44RQlb60RYKR
 J5t78iSZVOjBMiFTH3ZC42zt5zGt+WvWGhDxzqPRr6L715K93Ey7kbYh0k/xUp5LM8nV
 +aryHNxilRLOvcsYxz5iEeed7m5AzMyJE+Z7YZX2w2KPINYKrmofESg9PwAlZIeLI/1r
 5uFyrlAjsCluusu7rUS1V6vnKprgwdwoPTeoEWG/4AuG0+8jyDrUUjr5AvAeLHePZxXH
 c1F1fEaHvRtNV+eoOwifP159HjUMnZI6bT8PhjpOEhJze0FsaBgnBz9B2Ay0/k4a8koy
 UMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:date:references:to
 :in-reply-to:message-id;
 bh=wR4+PEy6wLVgJQ35+LiBr7szoI7huaVXAbKYzV+3U3Q=;
 b=pFszB6yp6+Io1Hx5g06XAni0hLLttmDviVCSBh82lplirrIg/1KFrhDRFQ4ib3qRO8
 9oA614NbdjsDoP51K8SHSbend1ih9Y+JL5DX6t3/amMxvensYfYLGiqFYcq30InyGmP6
 jdkpxyL9hnqB6h6cGkhZiZLN12VAUXD6rFsMixYTxRPo7/2d+hV+Wio7Ej5mi/Uc4tKu
 6hBdZV3lieFrcVLHyZPHfz71iEl7sjAx9od4UDvPo2QDZU46hAKsN9qFOFxmvtiD07Wj
 aO1pzLnB4hYYZGzZizlCrEAo1DTzV/7Fv2RH9Ji4LzO7WQZD3HZPis2ZloRiJxSPvzkB
 88MQ==
X-Gm-Message-State: APjAAAXW1fCAck/jC1V1nI0UnKWLQH68sMkvy/CrOV4Tcoy4YuYxM6qF
 81579SZup8aRodw0p38gndvHiXPQ
X-Google-Smtp-Source: APXvYqzaf3Gl4TyfdRPgqVsdXRHOR9jRsCJjsHBnhpjleH2VXs1Q7Fl0+LInfdMQCaa+AqFK8GiqYA==
X-Received: by 2002:a17:906:8246:: with SMTP id
 f6mr1505975ejx.179.1569317045914; 
 Tue, 24 Sep 2019 02:24:05 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id c24sm143912ejp.43.2019.09.24.02.24.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 02:24:05 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Tue, 24 Sep 2019 11:24:03 +0200
References: <E13870CE-5B7E-4D77-A9AB-C566D6FCA7FF@gmail.com>
 <20190915204615.GB1338@makrotopia.org>
 <28C6B2C7-E05E-4894-AA5C-6751E4FE75A9@gmail.com>
 <7782BA0C-B382-4FD7-AF93-F1A593A03DE0@gmail.com>
 <6FEF1F8A-A574-4C53-864F-D1578573971F@gmail.com>
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <6FEF1F8A-A574-4C53-864F-D1578573971F@gmail.com>
Message-Id: <0A89A636-BBE6-4336-8CBE-BA8B347A5569@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_022408_937280_77760387 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ramips] Linkit Smart 7688 and libmraa
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
Content-Type: multipart/mixed; boundary="===============5689117055176356922=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5689117055176356922==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7A050E05-6C30-4522-B7CE-A1D1BA520E06"


--Apple-Mail=_7A050E05-6C30-4522-B7CE-A1D1BA520E06
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi
I opend a issue in the mraa git repo and got some new information about =
why and where libmraa breaks.
It seams related to a change in the system. At some point openWRT must =
have dropped  or changed some parts of `/dev/mem`.
This now makes libmraa break and maybe not only for my target.
Im not the C dev that can handel such a thing.=20
May somebody with C knowledge have a minute to look in to it and tell me =
what possibilities i have and how many targets possibly are affected by =
this?
https://github.com/intel-iot-devkit/mraa/issues/983 =
<https://github.com/intel-iot-devkit/mraa/issues/983>
Thanks, Ivan=20

> Am 20.09.2019 um 15:10 schrieb Ivan H=C3=B6rler =
<ivanhoerler@gmail.com>:
>=20
> I tried to compile the package libmraa as single and have some =
problems with the dependencies:
>=20
> Followed this: https://openwrt.org/docs/guide-developer/single.package =
<https://openwrt.org/docs/guide-developer/single.package>
> First i searched for all dependencies:
>=20
> root@OpenWrt:/# opkg info libmraa
> Package: libmraa
> Version: 2.0.0-2
> Depends: libc, libstdcpp6, libjson-c4
> Status: install user installed
> Section: libs
> Architecture: mipsel_24kc
> Size: 64409
> Filename: libmraa_2.0.0-2_mipsel_24kc.ipk
>=20
> root@OpenWrt:/# opkg info libc
> Package: libc
> Version: 1.1.23-2
> Depends: libgcc1
> Status: install hold installed
> Essential: yes
> Architecture: mipsel_24kc
> Installed-Time: 1568571183
>=20
> then i tried to make menuconfig so i can tick the dependencies but i =
did not find the dependencie of libc named libgcc1.=20
> A try to compile after installing tools and toolchain fails as well:
>=20
> novski@ubuntu:~/Documents/openwrt$ make package/libgcc1/compile V=3Ds
> make[1]: Entering directory '/home/novski/Documents/openwrt'
> make[1]: *** No rule to make target 'package/libgcc1/compile'.  Stop.
> make[1]: Leaving directory '/home/novski/Documents/openwrt'
> /home/novski/Documents/openwrt/include/toplevel.mk:216: recipe for =
target 'package/libgcc1/compile' failed
> make: *** [package/libgcc1/compile] Error 2
>=20
> Why do i not find the dependency libgcc1 in 'make menuconfig' search =
(/)?
>=20
> Thanks, Ivan=20
>=20
>=20
>> Am 19.09.2019 um 20:18 schrieb Ivan H=C3=B6rler =
<ivanhoerler@gmail.com <mailto:ivanhoerler@gmail.com>>:
>>=20
>> Hi
>> I have problems makeing libmraa working on Linkit Smart 7688.
>> The installation worked without problems and i tested with a python =
script. See details below:
>>=20
>> what i did:=20
>> - Compiled a openWRT 18.6
>> - opkg update=20
>> - opkg install libmraa
>> - opkg install python3-light
>> - opkg install libmraa-python3
>>=20
>> - copied this skript to /root:=20
>>=20
>> import mraa
>> import time
>>=20
>> try:
>>     print (mraa.getVersion())
>> except:
>>     print("no mraa available")
>>=20
>> # Refer to the pin-out digram for the GPIO number to silk print =
mapping
>> # in this example the number 44 maps to Wi-Fi LED.
>> pin =3D mraa.Gpio(2)
>> pin.dir(mraa.DIR_OUT)
>> while True:
>>     pin.write(1)
>>     time.sleep(1)
>>     pin.write(0)
>>     time.sleep(1)
>>=20
>> - and executed:
>> root@OpenWrt:~# python3 mraa-test-simple.py=20
>> v2.0.0
>> Traceback (most recent call last):
>>   File "mraa-test-simple.py", line 11, in <module>
>>     pin =3D mraa.Gpio(2)
>>   File "/usr/lib/python3.7/site-packages/mraa.py", line 391, in =
__init__
>>     _mraa.Gpio_swiginit(self, _mraa.new_Gpio(pin, owner, raw))
>> ValueError: Invalid GPIO pin specified
>>=20
>>=20
>> - checked with a LED on pin2 like this if GPIO2 works:
>> root@OpenWrt:~# cd /sys/class/gpio/
>> root@OpenWrt:/sys/class/gpio# ls
>> export      gpiochip0   gpiochip32  gpiochip64  unexport
>> root@OpenWrt:/sys/class/gpio# echo 2 > export
>> root@OpenWrt:/sys/class/gpio# ls
>> export      gpio2       gpiochip0   gpiochip32  gpiochip64  unexport
>> root@OpenWrt:/sys/class/gpio# cd gpio2
>> =
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# echo "out" > direction
>> =
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# cat value
>> 0
>> =
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# echo 1 > value
>>=20
>> - redone previous step with no changes in error output.
>>=20
>> what am i missing?
>>=20
>> Thanks for comments, Ivan H=C3=B6rler
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org =
<mailto:openwrt-devel@lists.openwrt.org>
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--Apple-Mail=_7A050E05-6C30-4522-B7CE-A1D1BA520E06
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi<div class=3D"">I opend a issue in the mraa git repo and =
got some new information about why and where libmraa breaks.</div><div =
class=3D"">It seams related to a change in the system. At some point =
openWRT must have dropped &nbsp;or changed some parts of =
`/dev/mem`.</div><div class=3D"">This now makes libmraa break and maybe =
not only for my target.</div><div class=3D"">Im not the C dev that can =
handel such a thing.&nbsp;</div><div class=3D"">May somebody with C =
knowledge have a minute to look in to it and tell me what possibilities =
i have and how many targets possibly are affected by this?</div><div =
class=3D""><a href=3D"https://github.com/intel-iot-devkit/mraa/issues/983"=
 =
class=3D"">https://github.com/intel-iot-devkit/mraa/issues/983</a></div><d=
iv class=3D"">Thanks, Ivan&nbsp;</div><div class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">Am =
20.09.2019 um 15:10 schrieb Ivan H=C3=B6rler &lt;<a =
href=3D"mailto:ivanhoerler@gmail.com" =
class=3D"">ivanhoerler@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">I tried to compile the =
package libmraa as single and have some problems with the =
dependencies:<div class=3D""><br class=3D""></div><div class=3D"">Followed=
 this: <a href=3D"https://openwrt.org/docs/guide-developer/single.package"=
 =
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
Ivan&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D""><br =
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
class=3D"">openwrt-devel@lists.openwrt.org</a><br class=3D""><a =
href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" =
class=3D"">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br=
 class=3D""></div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">openwrt-devel mailing list<br class=3D""><a =
href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a><br =
class=3D"">https://lists.openwrt.org/mailman/listinfo/openwrt-devel<br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_7A050E05-6C30-4522-B7CE-A1D1BA520E06--


--===============5689117055176356922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5689117055176356922==--

