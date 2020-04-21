Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A983D1B2BA7
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 17:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NGGzEq7MsP5fY4wMAjEA5ugkayXyUkcVgkQBevHTiVU=; b=AccQ1uy6u3o/U10o6JOb6voqH
	gejS/XHKvuUCO44n/W7TYwnTvZ8LyZf/n9bP0xSPayFUlWGhipyef79GkSCTtYQgx/AyEkE9dZf8w
	N22z79QDD7S+t3ZzlJqjQIsX3t/kF3E/Qh19hrcU3sE2S8toguf04UI6bHeER+3XM2YttZKl8tmft
	tiRdRJ7lYZDhoo+2iUjqLd0XgK3Jb5BF9fP8ijaCaMb6yOEcbudAEalJq91ijItzktlH4yuaEMCAQ
	ORtQPBzUwZ6atNJRuHaqzEnYgDgYOdLiwY/oEpRYZUEA5oVSlcx+/nFBpS8PTev9PFQdExHK8uzGT
	dJXeeW6Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvCx-0007RF-OO; Tue, 21 Apr 2020 15:53:11 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvCp-0007Pz-Ss
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 15:53:05 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id E3F49FC00D; Tue, 21 Apr 2020 17:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587484376;
 bh=Nl7l6efwrjpD9aUzLbuFDPOuvl5aaOigJ1GC/Ge7FWQ=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=cdlXMsUW6WKxl6JNWXFVWnZJYx+35DEzkMFYUAN5aFdt1G20Dk+j1p2vitDChySCT
 dLqjB2Ao5WcdnO1CmVQAO9m1BYypaa/G/TDUTUUoKCp1gEXL54jAO3mSj+XbyFKPbh
 sylmn3gl1xlcpvIEminVuy1QAD9XezEVw2IwWbJY=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 4B0B4FC00B;
 Tue, 21 Apr 2020 17:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587484372;
 bh=Nl7l6efwrjpD9aUzLbuFDPOuvl5aaOigJ1GC/Ge7FWQ=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=dZ1LOuqcBPZfM+ftvXG42HUVLJgETqOZP5IZvP3a5QNORmWihkk5nipaLOmPIWTmt
 UV/gvUaBlc5XlcwRLwbiBSDKa1CsrHjP4oRsGT3uXwpKSw8xmDZFEAYAnPbPUKDUzt
 KK4X+zlhb77x6VXFTNr/gNe3Vqh+r085p+YyIjck=
Date: Tue, 21 Apr 2020 17:52:51 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Szabolcs Hubai <szab.hu@gmail.com>
Message-Id: <1587484371.1760.2@mail.volatilesystems.org>
In-Reply-To: <1587474773.1760.0@mail.volatilesystems.org>
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
 <ZMS29Q.4V5BN6QIEH3P@volatilesystems.org>
 <CAOZt9c-J158um4rvwLhPXio8fa3t16AQJj=8mfEVhC64CSqZ4Q@mail.gmail.com>
 <1587474773.1760.0@mail.volatilesystems.org>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_085304_214100_3F14BB61 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,


Op dinsdag 21 april 2020 om 15:12 schreef Stijn Segers =

<foss@volatilesystems.org>:
> Hi Szabolcs,
> =

> Op maandag 20 april 2020 om 11:01 schreef Szabolcs Hubai =

> <szab.hu@gmail.com>:
>> Hello,
>> =

>> Stijn Segers <foss@volatilesystems.org> ezt =EDrta (id=F5pont: 2020. =

>> =7F=E1pr.
>> 20., H, 9:25):
>>> =

>>>  Hi Szabolcs,
>>> =

>>>  Op zondag 19 april 2020 om 20u49 schreef Szabolcs Hubai
>>>  <szab.hu@gmail.com>:
>>>  > This device has trouble extracting big kernel from flash,
>>>  > and supports LZMA compressed kernels only.
>>>  >
>>>  > Using OpenWrt kernel loader saves us 64 KB compared to the =

>>> =7F=7Fdictionary
>>>  > size limiting workaround.
>>>  >
>>>  > Factory image sizes (commit: 5f126c541a74) with =

>>> =7F=7F"CONFIG_ALL_KMODS=3Dy":
>>>  > - original ("-d23", default): 4784188 bytes, LZMA ERROR 1
>>>  > - with "-d19": 4915260, LZMA ERROR 1
>>>  > - with "-d18": 4915260, diff to original: +128 KB
>>>  > - with "-d17": 4980796, diff to original: +192 KB
>>>  > - with this patch: 4849724, diff to original: +64 KB
>>>  >
>>>  > To save some CPU cycle, use minimal compression ("-a0") for the =

>>> =7F=7FLZMA
>>>  > compressed uImage.
>>>  >
>>>  > The most robust solution would use a different loader,
>>>  > which reads the compressed kernel directly from the flash.
>>>  > See the thread at [0] for more details!
>>> =

>>>  Thanks for giving the DIR-860L some love. I'd like to test (in =

>>> fact =7F=7FI
>>>  already
>>>  did with your previous patches) and hook up serial, because first =

>>> =7F=7Fboot
>>>  will
>>>  work but any reboot (whether I change settings or not) will just =

>>> =7F=7Fgive
>>>  me a
>>>  blinking orange LED. Like clockwork.
>>> =

>>>  Would you happen to have any pointers (or pictures) on how to open =

>>> =7F=7Fthe
>>>  case?
>>>  I have unscrewed the bottom but there seem to be latches on the =

>>> =7F=7Finside
>>>  (judging
>>>  from the FCC pictures) and I am unable to pry it open.
>>> =

>>>  Thanks and sorry for the topic hijack :-).
>>> =

>>>  Stijn
>>> =

>> =

>> I got my clue from the "D-LINK DIR-860L - disassemble" titled =

>> YouTube =7Fvideo. [0]
>> In short:
>> - 3 screws on the bottom, under the pads: if you are looking at the
>> bottom of the router, the screws are under the left, the right and =

>> the
>> bottom pads
>> - one, "DIR-860L" titled sticker on the top, with a "cut in" starting
>> point in the front, where the leds reside
> =

> =

> Thanks! That sticker turned out to be so sturdy - it doesn't look or =

> feel like a sticker *at all*. That's what got me.
> =

> So, I have serial now. A few things I can tell from my side:
> - vanilla master image (yesterday's image): does not boot, which is =

> expected of course. Error I'm seeing: "LZMA ERROR 1 - must RESET =

> board to recover"
> - local master branch image (with your last patch) with default =

> .config: boots fine, even after multiple reboots.
> - local master branch image (with your last patch) with my own =

> config: boots fine the first time. After that, it just barks and says =

> 'Bad Header checksum'.
> =

> It looks like there's something with my .config that breaks it... The =

> (kernel?) image is pretty big (9109444 bytes?) from what I can tell, =

> maybe that's still an issue here.
> =

As a follow-up: wiping my ccache worked wonders it seems. All good now.

Cheers

Stijn


> This is what default config prints:
> =

> 3: System Boot system code via Flash.
> ## Booting image at bfc50000 ...
> addr:80500000
> We have SEAMA, Image Size =3D 2359232
> Verifying Checksum ...
> Uncompressing SEAMA linux.lzma ... OK
> =

> And my custom config (which boots fine the first time after flashing =

> somehow, then goes straight to recovery mode somehow):
> =

> 3: System Boot system code via Flash.
> ## Booting image at bfc50000 ...
> addr:80500000
> We have SEAMA, Image Size =3D 9109444
> Verifying Checksum ...
> Bad Header Checksum.
> =

> Entering HTTP server.
> =

> =

> Anyway, I'll send in my tested-by for your patch so hopefully it can =

> get merged! Thanks for the work and your help!
> =

> =

> Cheers
> =

> Stijn
> =

>> - 3 screws on the top, under the sticker
>> =

>> Disassemble:
>> - get off the pads (they won't stick back after a few days ;), use
>> very thin double sided sticker to help them)
>> - get the bottom screws
>> - peel off the rounded sticker from the top with thin but flexible
>> knife or razor blade, etc ...
>> - get the upper screws
>> - slide the front and rear half vertically a little
>> - separate them
>> =

>> The serial settings can be found on the wiki [1]:
>> - Pinout: TX, GND, 3v3, empty, RX
>> - Bits per second: 57600
>> - Data bits: 8
>> - Parity: None
>> - Stop bits: 1
>> - Flow control: None
>> =

>> I have a CP2102 USB to TTL module, and used with "minicom -D =

>> =7F/dev/ttyUSB0".
>> =

>> =

>> Intereestingly, when I connected with serial to the router it was
>> sometime unstable:
>> * refuse to start
>> * freeze at boot soon after: "Error applying setting, reverse things
>> back" messge
>> =

>> Other than this, I have no problem with k5.4.
>> =

>> =

>> =

>> [0]: https://youtu.be/tf7nMqdUKD4
>> [1]: https://openwrt.org/toh/d-link/dir-860l#access_with_serial_cable
>> =

>> =

>> --
>> Regards,
>> Szabolcs
>> =

>> =

>>> =

>>>  >
>>>  > [0]
>>>  > =

>>> =7F=7Fhttp://lists.infradead.org/pipermail/openwrt-devel/2020-April/022=
926.html
>>>  >
>>>  > Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
>>>  > ---
>>>  >  target/linux/ramips/image/mt7621.mk | 4 +++-
>>>  >  1 file changed, 3 insertions(+), 1 deletion(-)
>>>  >
>>>  > diff --git a/target/linux/ramips/image/mt7621.mk
>>>  > b/target/linux/ramips/image/mt7621.mk
>>>  > index aa6836d50a..e954f730da 100644
>>>  > --- a/target/linux/ramips/image/mt7621.mk
>>>  > +++ b/target/linux/ramips/image/mt7621.mk
>>>  > @@ -218,7 +218,9 @@ define Device/dlink_dir-860l-b1
>>>  >    $(Device/seama)
>>>  >    BLOCKSIZE :=3D 64k
>>>  >    SEAMA_SIGNATURE :=3D wrgac13_dlink.2013gui_dir860lb
>>>  > -  KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma |
>>>  > uImage lzma
>>>  > +  LOADER_TYPE :=3D bin
>>>  > +  KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel | \
>>>  > +  relocate-kernel | lzma -a0 | uImage lzma
>>>  >    IMAGE_SIZE :=3D 16064k
>>>  >    DEVICE_VENDOR :=3D D-Link
>>>  >    DEVICE_MODEL :=3D DIR-860L
>>>  > --
>>>  > 2.17.1
>>>  >
>>>  >
>>>  > _______________________________________________
>>>  > openwrt-devel mailing list
>>>  > openwrt-devel@lists.openwrt.org
>>>  > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>> =

>>> =

>> =

>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
