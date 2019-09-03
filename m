Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FDAA712F
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 18:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7NzMkEfToWNpwzUPudms8WPLs0mHCzGZugY0Y1IacPU=; b=WY2Cp6Ysn084nzIAmxy46szYQ
	K85NxRaVxa2HUzNfc8efGTYffS/3Oawj9CfSG9AHNret3u61M8o12xGZGk9QVrmsLcRwDE4lDuGkm
	4l500tJMMyfhvC1TJHI6/RUlnpoB2hKOL+PuJGbuapvkyF6Tuf/N+UuUHD79KIEph2Y9PqoQD8PyR
	pBjSotG0JmmmKq7lacck3jmJLy7wfYoKM6PYd1iyj69P99AjZTmYl/KgHdlhdtOsEUatNVynv8lQH
	A2ugbOFKJ5n1L4+cXxfHVs4GjOeOCSJadSLhNRLZr4r0+TdhmlGUcll9IRWBz8hZWqb8Bxi72z2q8
	yfNr3RqzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C7v-00053R-2i; Tue, 03 Sep 2019 16:57:55 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C7d-00052H-4R
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 16:57:38 +0000
Received: by mail-qt1-x841.google.com with SMTP id k10so10533186qth.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 09:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JEiuAMjbT+wsWUIrM+3GtNhoa1EAjp46H9is3iU3hiY=;
 b=HdwDkzqk/2wRXeXTt/vIdTW0E5Vr/pj5N2afGLerCgXK2uBDgOnhOP3DbB+fTXzVfr
 6QrcjcZKaycZl8UPby2IyLAjgVKL19aG8am6qLnnBOehp+eIO1/hB4/u95hgvzj+kF3Q
 C5Djvlh/AtmMfIPAyd4uj3Z3/Ttrn/y/D2UoaaAz8cJfAsG0gG2NZUf1fxF+2SR7UPlU
 H9co9AVlDrQ8Bp6FtX9IHKynDyFMbk7ZjDDrN6W8Lbu6k5Mdbw5xDuYXoXeY/Fom4QPz
 Cojb1MFygyTKVKh7JT6cpUbhFdEzMnd15amQIExA26zRy44iS7vG0CN0cwbTShRJYdYm
 X3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JEiuAMjbT+wsWUIrM+3GtNhoa1EAjp46H9is3iU3hiY=;
 b=NNKoU37afQdtw+JxTcQU8ViLglSaoH+cp1i/nIUdldEGt9sQngW9Pqu9UIkbGMSu4V
 eYkp1uO1AYJT4l0q5t7TVMIwmEF605N4EBWg5T7ji0y7ntvLPg1v14qEW5F1+oYuAGpI
 p0jACl3UJEYLKcd9NtgWIF3beeUBRPIBF0HGVazq3SR80b8KTquPOxewH6zNcTZyGvuW
 W1S3TLaTE9V71O3fGs/y9ehXWsTqjGeyB0LS/41z4sgn4C+09//r3rdN4BGawjY1Q/Bu
 XV9ZJp24T6MUrwK38Tb1Wss/Be0ukOm26dwn4UUK8T6rFhCSo7XlI3RheNEGwwIZvuyw
 6HoQ==
X-Gm-Message-State: APjAAAUgD/vfNUVVmt0H1zAzbsWx2UF5PVUff7SNj+24WwWI1po57LC0
 mkg2OeZpX2xAINa4pEchrMYcriCYHeuONEpUtmg=
X-Google-Smtp-Source: APXvYqymw03GjR4P+rahNyY8CkVOcU5t4Ezj/Xz0fwchToQaCHa57AY7LBvINmmpOIcgbZr17/jj6NNmkV6G/0VrDeo=
X-Received: by 2002:ac8:75d2:: with SMTP id z18mr6659297qtq.46.1567529855539; 
 Tue, 03 Sep 2019 09:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190830154607.6463-1-zajec5@gmail.com>
 <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
 <1efc1c7c-d87e-753a-92d0-3fa5911805b9@softart-ge.com>
 <CACna6rz+O7gFLEMOykqtvUcp8git0rUGxKqc-+sqo7VTXSQwzw@mail.gmail.com>
In-Reply-To: <CACna6rz+O7gFLEMOykqtvUcp8git0rUGxKqc-+sqo7VTXSQwzw@mail.gmail.com>
From: Luis Araneda <luaraneda@gmail.com>
Date: Tue, 3 Sep 2019 12:57:23 -0400
Message-ID: <CAHbBuxpC-_nwuUAgVRdFd_9cydLwRT3sVJroLrEYrv2Qwh9_zw@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095737_208219_6EEF8B22 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
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
Cc: openwrt-devel@lists.openwrt.org,
 Reiner Karlsberg <karlsberg@softart-ge.com>
Content-Type: multipart/mixed; boundary="===============1202299577531022381=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1202299577531022381==
Content-Type: multipart/alternative; boundary="00000000000036ddb10591a8fcaa"

--00000000000036ddb10591a8fcaa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rafa=C5=82,

On Sun, Sep 1, 2019 at 5:09 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> w=
rote:
> On Sun, 1 Sep 2019 at 06:13, Reiner Karlsberg <karlsberg@softart-ge.com>
wrote:
> > This needs to be handled very carefully, not to break
> > actual usage of -F.
> > I had to use -F couple of times, usually when downgrading
> > installed firmware, but with change of name over time.
> > Typical example: Change of image name for the zbt-we826.
> > Never any problem with usage of -F, though.
> >
> > But I had several problems with non-completion of
> > valid sysupgrade, which even left the system in inconsistent state,
> > as the "-f keep.tar.gz" was applied, but not the new image itself.
> > Or (silently ?) no sysupgrade done, because of mounted block device
> > or active swap file on block device, or active wifi (?).
> > Which was a PITA on remote installations.
> >
> > Question: How are sysupgrade-errors reported/to be handled, as usually
also a failed sysupgrade
> > triggered a reboot ?
> > documentation very unclear here, as it looks like, behaviour in case of
errro changed during versions of openwrt.
> >
> > Best would be "atomic sysupgrade", with standard error-code (+1) on
exit instead of expected reboot after success.
> >
> > I appreciate the new work on sysupgrade, but I am a bit afraid of
regressions.
>
> No behavior will change until you explicitly modify your target's
> /lib/upgrade/platform.sh to start calling notify_firmware_broken() for
> whatever reason (e.g. unrecognized firmware image format).
>
> I'm planning to implement more verbose sysupgrade results later. I was
> thinking about ubus method replying with a JSON containing error code
> and message. I should prepare some patch for that in a next week or
> two.

Since you're improving sysupgrade to reject some images, I'm throwing an
idea I had some time ago (no code, sorry).

I would be great if there is support for certain sysupgrade images to
require a settings reset (without preserving them).
The idea is to support some use cases were preserving the settings might
leave the device in a sofbrick / misconfigured state. So a reset to
defaults is mandatory, like the recent situation when migrating a
configuration from swconfig to DSA.
Sure, it could be done by migrations scripts, but they might not be 100%
reliable (cover all possible variations).

On the implementation side, it could be done using image metadata to store
an integer with the minimum version required, which could be used by
sysupgrade to compare the locally stored value and check if a reset is
mandatory or not.
(this is just one possible implementation)

Of course, an implementation would not be useful for the current issue of
swconfig->DSA, but it might be useful in the future (who knows what might
break).

Regards,
Luis Araneda.

--00000000000036ddb10591a8fcaa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Rafa=C5=82,<br>
<br>
On Sun, Sep 1, 2019 at 5:09 AM Rafa=C5=82 Mi=C5=82ecki &lt;<a href=3D"mailt=
o:zajec5@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">zajec5@=
gmail.com</a>&gt; wrote:<br>
&gt; On Sun, 1 Sep 2019 at 06:13, Reiner Karlsberg &lt;<a href=3D"mailto:ka=
rlsberg@softart-ge.com" rel=3D"noreferrer noreferrer" target=3D"_blank">kar=
lsberg@softart-ge.com</a>&gt; wrote:<br>
&gt; &gt; This needs to be handled very carefully, not to break<br>
&gt; &gt; actual usage of -F.<br>
&gt; &gt; I had to use -F couple of times, usually when downgrading<br>
&gt; &gt; installed firmware, but with change of name over time.<br>
&gt; &gt; Typical example: Change of image name for the zbt-we826.<br>
&gt; &gt; Never any problem with usage of -F, though.<br>
&gt; &gt;<br>
&gt; &gt; But I had several problems with non-completion of<br>
&gt; &gt; valid sysupgrade, which even left the system in inconsistent stat=
e,<br>
&gt; &gt; as the &quot;-f keep.tar.gz&quot; was applied, but not the new im=
age itself.<br>
&gt; &gt; Or (silently ?) no sysupgrade done, because of mounted block devi=
ce<br>
&gt; &gt; or active swap file on block device, or active wifi (?).<br>
&gt; &gt; Which was a PITA on remote installations.<br>
&gt; &gt;<br>
&gt; &gt; Question: How are sysupgrade-errors reported/to be handled, as us=
ually also a failed sysupgrade<br>
&gt; &gt; triggered a reboot ?<br>
&gt; &gt; documentation very unclear here, as it looks like, behaviour in c=
ase of errro changed during versions of openwrt.<br>
&gt; &gt;<br>
&gt; &gt; Best would be &quot;atomic sysupgrade&quot;, with standard error-=
code (+1) on exit instead of expected reboot after success.<br>
&gt; &gt;<br>
&gt; &gt; I appreciate the new work on sysupgrade, but I am a bit afraid of=
 regressions.<br>
&gt;<br>
&gt; No behavior will change until you explicitly modify your target&#39;s<=
br>
&gt; /lib/upgrade/platform.sh to start calling notify_firmware_broken() for=
<br>
&gt; whatever reason (e.g. unrecognized firmware image format).<br>
&gt;<br>
&gt; I&#39;m planning to implement more verbose sysupgrade results later. I=
 was<br>
&gt; thinking about ubus method replying with a JSON containing error code<=
br>
&gt; and message. I should prepare some patch for that in a next week or<br=
>
&gt; two.<br>
<br>
Since you&#39;re improving sysupgrade to reject some images, I&#39;m throwi=
ng an idea I had some time ago (no code, sorry).<br>
<br>
I would be great if there is support for certain sysupgrade images to requi=
re a settings reset (without preserving them).<br>
The idea is to support some use cases were preserving the settings might le=
ave the device in a sofbrick / misconfigured state. So a reset to defaults =
is mandatory, like the recent situation when migrating a configuration from=
 swconfig to DSA.<br>
Sure, it could be done by migrations scripts, but they might not be 100% re=
liable (cover all possible variations).<br>
<br>
On the implementation side, it could be done using image metadata to store =
an integer with the minimum version required, which could be used by sysupg=
rade to compare the locally stored value and check if a reset is mandatory =
or not.<br>
(this is just one possible implementation)<br>
<br>
Of course, an implementation would not be useful for the current issue of s=
wconfig-&gt;DSA, but it might be useful in the future (who knows what might=
 break).<br>
<br>
Regards,<br>
Luis Araneda.<br></div>

--00000000000036ddb10591a8fcaa--


--===============1202299577531022381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1202299577531022381==--

