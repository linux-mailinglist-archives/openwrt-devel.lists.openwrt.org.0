Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89833F026A
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 17:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nLJr2t/FMxQedos1XKCk3flweVYXxi7Q7OhnjkoI/bY=; b=EFgYfMlHgBbVL17AQKLVp0IXs
	mSA+MyDnN0DD272PEgO7QanecWen60UPeKsJMZjnSa/lTkdlozbSv3KVxIe9V6uQFE2TcuwZeUuuJ
	vGt6U86ATYRBkN+lYXlBmhh5nMDFgi4O9qb5xVb+GfEz7G1jBNnXzk/QCdS47OT5KycyODBenYwc1
	iv/pZOYt7cBAD45Q1JnH8TWVfNBptEbwmOLa1bQsJ16oGjIGfhbkEUJ8lxIKH3rGY1dho5YnWpIQR
	x4/2ZcfiBLJ+hA33RuuFuNr2Qkg2X/7FJmAZq4aO/aKv+GUo2AL7x69JOGyToXXWGmgrsfg02VLJj
	zLXaA33gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1Tf-0007tu-Qh; Tue, 05 Nov 2019 16:14:43 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1TX-0007sr-Oq
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 16:14:38 +0000
Received: from bt-nac-a178.nac.uni-bayreuth.de ([132.180.218.178]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MjSPq-1i4GAN0DQg-00ktCk; Tue, 05 Nov 2019 17:14:33 +0100
Date: Tue, 05 Nov 2019 17:14:27 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <25f488ab-9cc5-8393-8273-542b431a8368@david-bauer.net>
References: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
 <25f488ab-9cc5-8393-8273-542b431a8368@david-bauer.net>
MIME-Version: 1.0
To: David Bauer <mail@david-bauer.net>
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <7389DC3B-0AFF-41EC-AD75-04370E606E7E@adrianschmutzler.de>
X-Provags-ID: V03:K1:IpyMFmBRxFmnk98u1ZjFl24sp3GhxILiVNV1o9TE6exUxsoPbP+
 WUFW7kfVuobwTPUbEl7pB1FPeXPRjxbfSqrvTolp1MRhEbZe+BhiwJaJgmE3o7L6LDPJjbh
 LBUUHa6QX/GJ8evMjaKNOSOMuFgBy5fBlf0PwgMNR3txCoJpdAoWDd72a9iHwDoku6uy2uE
 j4tcVjU+D0qR+DJzrrI0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MiCh2vYpONw=:xGmUCfdebrsvg6mgLETgrb
 IkXzPOH8dQOQumcQPQDSLZslg37RaMDoCLrTjmziZ/uI0u+e+vmpvvPU7DRaJNGpYtefJ54sL
 yrf81Bc/aA96YmdQUQpgKlWijyO9+KzaDoY19gi+DtU/ZLhj3TPltLgKlkh2d4JVDs1QZSVZ9
 L2h6VVboF6aNHSZtlzqjmKuoFMVDoN5aQ/CIswr8lDUcRidhzwRP9G+cekCvBhKsdgDqkxbdW
 wWrbLN2yHJ+ZhqPlKcL9SQUfgj3gDOvOYjpEdZmwwlJiCst4uF9jxLr2ECHYI1C0gkcZLDsoN
 ihpM8xDHhe18QusnKPMtSC6A7ft1BfH8Enyc9UHPpltCWRx1YUEBKSnx/oXrEEISD32tDgoh3
 ucey/y17RcoZXxjsk4LkK5erdm1Y5ZUHctBwEnCSqoAO5KiKSfwb6eMjsA3kXYfWP/iUMXddK
 gmhabPj17JCnfGZKGZqmXhQn9+Mx5jHh0PBFNsFt0SstWHpt7uMxC5LZdnD6fjK+ylEz3CYf7
 Z5LvilARRLO0ch5mF0tFjuPeBeeMEBcMKY+gGFdiCCQi/XgSdI766o6+6rZc/ESu1acbv3ZQU
 NwDDcDgF+0Z4r8T/spERFVd+j3y6/zwrXt3ueZf/5c2dQwUG3dqs0H6rn4hRpoMxI/V6qWw75
 H4k9k1xmD5l8OsXyAnPDGpmC+j70FIMxqOiKr2xAgu7s2oQ66KqI4pLZegNYkOlPQCj+5d8th
 NXgBrktiG7HmxzxU86LB4pQkORfkt20ec5nZo6dMUZjab23urY73BkswbhOM+CO5gcTSy6bI2
 f0SDonMXyVUn+LBO652v+fbgiVjFIunQRt9Wabyc8e7hDl2TAITqCvqpXdM+X9j1yxI8KD5Ku
 e4DHx4mCxthZZ3LwWmkfg7vEtoFqhUPEGA9FAET9Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_081436_105308_19628D0B 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
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
Content-Type: multipart/mixed; boundary="===============0355668595913728765=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0355668595913728765==
Content-Type: multipart/alternative; boundary="----OZRQDMG0MQI0W4L3FGDCY7LEIZM8OD"
Content-Transfer-Encoding: 7bit

------OZRQDMG0MQI0W4L3FGDCY7LEIZM8OD
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi David,

thanks for your response=2E=20

To me it looks like qca953x already uses 25 MHz clock, or am I looking at =
the wrong value:

https://github=2Ecom/openwrt/openwrt/blob/master/target/linux/ath79/dts/qc=
a953x=2Edtsi#L27

Best

Adrian


On 5 November 2019 16:46:59 CET, David Bauer <mail@david-bauer=2Enet> wrot=
e:
>Hello Adrian,
>
>during the CPE210v2 bringup it was discovered that the CPE210 has the
>wrong bootstrap option set
>for it's 25 MHz reference clock=2E Because of this, the device was
>originally not even booting with ar71xx=2E
>
>On ath79, the reference clock is not detected based on the bootstrap
>option, but set by the DTS=2E
>The twist however is the ath9k driver, whose OF patch still reads this
>register=2E [0]
>
>On ar71xx, the platform data was always set to true for the QCA9533 [1]
>
>So you can try to force the settings for 25MHz reference clock for all
>QCA953x regardless of the bootstrap
>settings to keep the behavior in line with ar71xx=2E
>
>I have no device to verify this, however it's a good candidate for the
>root cause=2E ;)
>
>[0]
>https://github=2Ecom/openwrt/openwrt/blob/master/package/kernel/mac80211/=
patches/ath/552-ahb_of=2Epatch#L237
>[1]
>https://github=2Ecom/openwrt/openwrt/blob/master/target/linux/ar71xx/patc=
hes-4=2E14/620-MIPS-ath79-add-support-for-QCA953x-SoC=2Epatch#L260
>
>Best wishes
>David
>
>On 11/5/19 3:05 PM, Adrian Schmutzler wrote:
>> Hi,
>>=20
>> for quite some time already we are struggling with broken WiFi on
>some TP-Link CPE devices having QCA9533 rev=2E 2 (QCA9533-BL3A SOC) in
>common=2E
>>=20
>> I'd be happy on some help here, since I've exhausted my debugging
>capabilities=2E
>>=20
>>=20
>> 1=2E Symptoms: WiFi looks up on the device, some TX traffic is shown in
>ifconfig, RX is zero=2E The AP cannot be found by clients=2E "iw dev wlan=
0
>scan" returns nothing=2E
>>=20
>> 2=2E Affected devices: TP-Link CPE210 v2/v3, CPE220 v3 (all QCA9533
>rev=2E 2?); no other QCA9533 devices known to be affected (specific to
>CPE or to QCA9533 rev=2E 2?)
>>=20
>> 3=2E For a certain model, there are devices which are working correctly
>and others which don't=2E There is no known indicator to find out whether
>a device works or not=2E The state of a device does not change as far as
>we know (always working or never working)=2E
>>=20
>> 4=2E So far, only 2=2E4 GHZ-only devices were affected
>>=20
>> 5=2E There is no diagnostic output that indicates a WiFi problem=2E
>dmesg/logread look normal, there is no difference when compared between
>working and not-working devices (despite RX=3D0/scan as stated above)
>>=20
>> 6=2E The problem seems to be present from the beginning (device support
>patches), it just has been overlooked since it's not occurring on every
>device=2E
>>=20
>> 7=2E The ar71xx firmware for all devices works flawlessly, so it is an
>ath79-specific problem=2E
>>=20
>>=20
>> Other findings that might be connected or not:
>>=20
>> a=2E On ath79 phy0 uses irq=3D11/irq=3D12 and on ar71xx irq=3D47=2E eth=
0 uses
>irq=3D4 on both targets=2E
>>=20
>> b=2E The following gpio is only found on ar71xx: gpio-495 ( |ath9k-phy0
>) in lo
>>=20
>>=20
>> I currently own a CPE210v2 with the bug and can test suggestions (if
>I'm capable of implementing them)=2E
>> There is a device support PR for the CPE220 v3 suffering from the
>same problem: https://github=2Ecom/openwrt/openwrt/pull/2514
>>=20
>> Despite, further reading may be found in forum discussion and bug
>report:
>> https://bugs=2Eopenwrt=2Eorg/index=2Ephp?do=3Ddetails&task_id=3D2333
>> https://bugs=2Eopenwrt=2Eorg/index=2Ephp?do=3Ddetails&task_id=3D2478
>>
>https://forum=2Eopenwrt=2Eorg/t/ath79-tp-link-cpe210-v2-0-wifi-not-workin=
g/40666
>>=20
>> Initial support for CPE210 v2/v3 was done by me and bluelineXY, both
>already involved in the discussion=2E ;-)
>>=20
>> Thanks for any hints!
>>=20
>> Adrian
>>=20
>>=20
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists=2Eopenwrt=2Eorg
>> https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel
>>=20

------OZRQDMG0MQI0W4L3FGDCY7LEIZM8OD
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hi David,<br><br>thanks for your response=2E <br><=
br>To me it looks like qca953x already uses 25 MHz clock, or am I looking a=
t the wrong value:<br><br><a href=3D"https://github=2Ecom/openwrt/openwrt/b=
lob/master/target/linux/ath79/dts/qca953x=2Edtsi#L27">https://github=2Ecom/=
openwrt/openwrt/blob/master/target/linux/ath79/dts/qca953x=2Edtsi#L27</a><b=
r><br>Best<br><br>Adrian<br><br><br><div class=3D"gmail_quote">On 5 Novembe=
r 2019 16:46:59 CET, David Bauer &lt;mail@david-bauer=2Enet&gt; wrote:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-l=
eft: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hello Adrian,<br><br>during the CPE210v2 bringup it =
was discovered that the CPE210 has the wrong bootstrap option set<br>for it=
's 25 MHz reference clock=2E Because of this, the device was originally not=
 even booting with ar71xx=2E<br><br>On ath79, the reference clock is not de=
tected based on the bootstrap option, but set by the DTS=2E<br>The twist ho=
wever is the ath9k driver, whose OF patch still reads this register=2E [0]<=
br><br>On ar71xx, the platform data was always set to true for the QCA9533 =
[1]<br><br>So you can try to force the settings for 25MHz reference clock f=
or all QCA953x regardless of the bootstrap<br>settings to keep the behavior=
 in line with ar71xx=2E<br><br>I have no device to verify this, however it'=
s a good candidate for the root cause=2E ;)<br><br>[0] <a href=3D"https://g=
ithub=2Ecom/openwrt/openwrt/blob/master/package/kernel/mac80211/patches/ath=
/552-ahb_of=2Epatch#L237">https://github=2Ecom/openwrt/openwrt/blob/master/=
package/kernel/mac80211/patches/ath/552-ahb_of=2Epatch#L237</a><br>[1] <a h=
ref=3D"https://github=2Ecom/openwrt/openwrt/blob/master/target/linux/ar71xx=
/patches-4=2E14/620-MIPS-ath79-add-support-for-QCA953x-SoC=2Epatch#L260">ht=
tps://github=2Ecom/openwrt/openwrt/blob/master/target/linux/ar71xx/patches-=
4=2E14/620-MIPS-ath79-add-support-for-QCA953x-SoC=2Epatch#L260</a><br><br>B=
est wishes<br>David<br><br>On 11/5/19 3:05 PM, Adrian Schmutzler wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; bor=
der-left: 1px solid #729fcf; padding-left: 1ex;">Hi,<br><br>for quite some =
time already we are struggling with broken WiFi on some TP-Link CPE devices=
 having QCA9533 rev=2E 2 (QCA9533-BL3A SOC) in common=2E<br><br>I'd be happ=
y on some help here, since I've exhausted my debugging capabilities=2E<br><=
br><br>1=2E Symptoms: WiFi looks up on the device, some TX traffic is shown=
 in ifconfig, RX is zero=2E The AP cannot be found by clients=2E "iw dev wl=
an0 scan" returns nothing=2E<br><br>2=2E Affected devices: TP-Link CPE210 v=
2/v3, CPE220 v3 (all QCA9533 rev=2E 2?); no other QCA9533 devices known to =
be affected (specific to CPE or to QCA9533 rev=2E 2?)<br><br>3=2E For a cer=
tain model, there are devices which are working correctly and others which =
don't=2E There is no known indicator to find out whether a device works or =
not=2E The state of a device does not change as far as we know (always work=
ing or never working)=2E<br><br>4=2E So far, only 2=2E4 GHZ-only devices we=
re affected<br><br>5=2E There is no diagnostic output that indicates a WiFi=
 problem=2E dmesg/logread look normal, there is no difference when compared=
 between working and not-working devices (despite RX=3D0/scan as stated abo=
ve)<br><br>6=2E The problem seems to be present from the beginning (device =
support patches), it just has been overlooked since it's not occurring on e=
very device=2E<br><br>7=2E The ar71xx firmware for all devices works flawle=
ssly, so it is an ath79-specific problem=2E<br><br><br>Other findings that =
might be connected or not:<br><br>a=2E On ath79 phy0 uses irq=3D11/irq=3D12=
 and on ar71xx irq=3D47=2E eth0 uses irq=3D4 on both targets=2E<br><br>b=2E=
 The following gpio is only found on ar71xx: gpio-495 ( |ath9k-phy0 ) in lo=
<br><br><br>I currently own a CPE210v2 with the bug and can test suggestion=
s (if I'm capable of implementing them)=2E<br>There is a device support PR =
for the CPE220 v3 suffering from the same problem: <a href=3D"https://githu=
b=2Ecom/openwrt/openwrt/pull/2514">https://github=2Ecom/openwrt/openwrt/pul=
l/2514</a><br><br>Despite, further reading may be found in forum discussion=
 and bug report:<br><a href=3D"https://bugs=2Eopenwrt=2Eorg/index=2Ephp?do=
=3Ddetails&amp;task_id=3D2333">https://bugs=2Eopenwrt=2Eorg/index=2Ephp?do=
=3Ddetails&amp;task_id=3D2333</a><br><a href=3D"https://bugs=2Eopenwrt=2Eor=
g/index=2Ephp?do=3Ddetails&amp;task_id=3D2478">https://bugs=2Eopenwrt=2Eorg=
/index=2Ephp?do=3Ddetails&amp;task_id=3D2478</a><br><a href=3D"https://foru=
m=2Eopenwrt=2Eorg/t/ath79-tp-link-cpe210-v2-0-wifi-not-working/40666">https=
://forum=2Eopenwrt=2Eorg/t/ath79-tp-link-cpe210-v2-0-wifi-not-working/40666=
</a><br><br>Initial support for CPE210 v2/v3 was done by me and bluelineXY,=
 both already involved in the discussion=2E ;-)<br><br>Thanks for any hints=
!<br><br>Adrian<hr>openwrt-devel mailing list<br>openwrt-devel@lists=2Eopen=
wrt=2Eorg<br><a href=3D"https://lists=2Eopenwrt=2Eorg/mailman/listinfo/open=
wrt-devel">https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel</a>=
<br><br></blockquote></pre></blockquote></div></body></html>
------OZRQDMG0MQI0W4L3FGDCY7LEIZM8OD--


--===============0355668595913728765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0355668595913728765==--

