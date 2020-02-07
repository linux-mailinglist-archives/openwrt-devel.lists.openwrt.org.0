Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7102155EFA
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 20:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PExzw4PVueAYw7Z+/+yPhEsFN8o/ff1T6kOuliYXHcA=; b=U3E7uwJH9/k9cA+RlldWVZ35s
	WMRDVxENrut48Bq+XRTEqHDja0j/swrhn00tAGIR+hYTfr38pnnt/lV09McSUVZv+itBCTh5Mzlkh
	H9jxkSWAYDuPxj/HL5W4hve8QB3OoICizJ1NUPLlWYVUAyU9vhU2GBkbxa/fh0rlRMkdyvs7Gp72v
	puDBZaLcv8ADxb7Od2X7pbqRIk30FpObKTzFBxZY2jrY3vDHFwRA2MZvJUlyOxo192Nbiky2VVtgy
	NCcgAJYg3ZI1jkLtmtj50G1aDpGNgGXltScWRl9xu9jDarSA7lBCpkJpD77PE4/1mcfUqQMwxdMjC
	TDQOb+F8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j09mc-0001us-MM; Fri, 07 Feb 2020 19:59:22 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j09mV-0001u8-Qm
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 19:59:17 +0000
Received: by mail-pl1-x636.google.com with SMTP id e8so168137plt.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 07 Feb 2020 11:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xr1U7FH16MY9VWBq3CT0hrpHS1E5bty93U/atXH1RLE=;
 b=jPRwy8dQN7RUXPyHQiMiXsQXGgPuKLWLifLdKBaIqg10z8ulWfW2Gko9q+Lf2+Rsp+
 bYH6EuoBdTklmUUh9144vqeEQlco4pJJvW2xsGgnKNaHxb/+SK19fVuA5tqTxwJnl4qF
 aVZIzSXnB1aJlVHHaf+KwTxRS1ejVdYVvdzcJWYqc7t7v04+z0HdFzQqfv/LPflcTQEU
 7Y7avagYwNQyY0ebcoi9GMeK2yruqxH/EZahSWcWq0I2ewYUoiDBdSTmI2Xt9Vrl+xS3
 BmSUuuUQOYixWo+Ki8SepUPfw1fFiMIg2qJEg6sAFxsTA+8etth4O0J3hB9eC+dxiWdh
 JGyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xr1U7FH16MY9VWBq3CT0hrpHS1E5bty93U/atXH1RLE=;
 b=LdzY0c9qdUfir+hu28bj3+Y1iVfI+aoEua8M/nqAm8ZJeW7bCozxOw4YR1uQaZ9G0P
 Bs6RnT+Jz/ZW6k1WCNS0Y2sa+3deYNGrnNzFjIDg3FlxiEzliu535CQFuVppsweADNIP
 pmtilQmVOSparRHxnHt1FFHNP1Rf4vBhVvm9/jedHv9ALsFvcAzH0VLlo/KvMeVGSSPH
 bq/g/09lAtmvopc4szSNblLEIF93k/6Oh6i+fAjUs5S7iRE1zKZlvVlVsr2VN5GlcceJ
 8EMoVsnGpdt0ofmHX59/9mZ+57kTudyeBLfaqfJsqPYnEM/IWZDQx7+JsgxZzMi0cOO0
 z1sw==
X-Gm-Message-State: APjAAAUtJCN1u1boG1emG7ldM4Pc6uSpLyg8uaGbjBCRJm07z8NceKbi
 GoswY5YsTzbPPwpODRyP2MPWnyeNbhv6bCsWozKEhnHK
X-Google-Smtp-Source: APXvYqzrp8im3k3+cNgbkc96Q0Hx4L9ducvVJ2nXPYgOhyMTB3cwyLdn0910DgtfsRb5nOAR0zFJiauonR414AN4OKg=
X-Received: by 2002:a17:902:9890:: with SMTP id s16mr4264plp.77.1581105239066; 
 Fri, 07 Feb 2020 11:53:59 -0800 (PST)
MIME-Version: 1.0
References: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
 <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
 <CAJsYDVLvPR8BRe=WGh0Op3a4dE+4CBkyC7_HeEyBcHiwOo=wBA@mail.gmail.com>
In-Reply-To: <CAJsYDVLvPR8BRe=WGh0Op3a4dE+4CBkyC7_HeEyBcHiwOo=wBA@mail.gmail.com>
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Fri, 7 Feb 2020 16:53:48 -0300
Message-ID: <CAJq09z4GP8RJkusx9HtVNdgguiU_Mupbus=Ts12boro25uFVRQ@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_115915_895956_1EDA219D 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Random data on rootfs_data for tp-wr2543nd-v1
 only with ath79
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
Content-Type: multipart/mixed; boundary="===============9169183668337698453=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9169183668337698453==
Content-Type: multipart/alternative; boundary="000000000000208b69059e01c0a6"

--000000000000208b69059e01c0a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Chuanhong,

That is exactly what introduced the issue. I double check with and without
the patch and without it I got the random data from mtd:

Without the patch
target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch:

root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -
d339cbfaf5ce709878d98bf83b853b63  -
7936+0 records in
7936+0 records out
root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -
b97c976391ae881a8139f325a18ecdb2  -
7936+0 records in
7936+0 records out
root@OpenWrt:/# uname -a
Linux OpenWrt 4.14.167 #0 Mon Feb 3 15:18:08 2020 mips GNU/Linux

With the patch
target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch:

root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -
2404e891bd9e420fc4ec45e61cdd0ca9  -
7936+0 records in
7936+0 records out
root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -
2404e891bd9e420fc4ec45e61cdd0ca9  -
7936+0 records in
7936+0 records out
root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -
2404e891bd9e420fc4ec45e61cdd0ca9  -
7936+0 records in
7936+0 records out
root@OpenWrt:/# uname -a
Linux OpenWrt 4.14.167 #0 Mon Feb 3 15:18:08 2020 mips GNU/Linux

Buildtime are equal... maybe it is because of some reproducibility effort
that does not consider patches.
All my tests are using initram image and kernel 4.14.

The flash is a Spansion S25FL064PIF. It is the same of TL-WR842NDv1, which
has the flash section of DTS identical.

Kernel always detects it as:
[    0.656283] m25p80 spi0.0: s25sl064p (8192 Kbytes)

I tried some random changes (without knowing what I'm really doing) like:

compatible =3D "spansion,spi-nor";
compatible =3D "spansion,s25sl064p", "spansion,m25p80", "jedec,spi-nor"
m25p,fast-read;

But I guess all those name variations will, in the end, mean just the same.
"m25p,fast-read" does not fix the issue as well.

Regards,

---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com


Em qui., 6 de fev. de 2020 =C3=A0s 23:57, Chuanhong Guo <gch981213@gmail.co=
m>
escreveu:

> Hi!
>
> On Fri, Feb 7, 2020 at 6:44 AM Luiz Angelo Daros de Luca
> <luizluca@gmail.com> wrote:
> >
> > Hello,
> >
> > I isolated the problem to be kernel upgrade from 4.14 to 4.19. If I
> build ath79 with 4.14, it simply works.
> > The mtd problem also happens while booting 4.19 without touching the
> flash 4.19 (using initram image).
> >
>
> Flash reading is handled differently between 4.14 and 4.19. 4.14 reads
> directly from 0x1f000000 where spi is mapped. But the interface used
> for that got removed in 4.19 so bit-bang mode is used instead.
> Could you try if removing
> target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch
> also breaks ath79/4.14?
>
> Regards,
> Chuanhong Guo
>

--000000000000208b69059e01c0a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks=C2=A0Chuanhong,<div><br></div><div>That is exactly =
what introduced the issue. I double check with=C2=A0and without the patch a=
nd without it I got the random data from mtd:</div><div><br></div><div>With=
out the patch target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-=
read.patch:</div><div><br></div><div>root@OpenWrt:/# dd if=3D/dev/mtd4 | md=
5sum - <br>d339cbfaf5ce709878d98bf83b853b63 =C2=A0-<br>7936+0 records in<br=
>7936+0 records out<br>root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum - <br>b97=
c976391ae881a8139f325a18ecdb2 =C2=A0-<br>7936+0 records in<br>7936+0 record=
s out<br>root@OpenWrt:/# uname -a<br>Linux OpenWrt 4.14.167 #0 Mon Feb 3 15=
:18:08 2020 mips GNU/Linux<br></div><div><br></div><div>With the patch targ=
et/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch:</div><=
div><br></div><div>root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -<br>2404e891=
bd9e420fc4ec45e61cdd0ca9 =C2=A0-<br>7936+0 records in<br>7936+0 records out=
<br>root@OpenWrt:/# dd if=3D/dev/mtd4 | md5sum -<br>2404e891bd9e420fc4ec45e=
61cdd0ca9 =C2=A0-<br>7936+0 records in<br>7936+0 records out<br>root@OpenWr=
t:/# dd if=3D/dev/mtd4 | md5sum -<br>2404e891bd9e420fc4ec45e61cdd0ca9 =C2=
=A0-<br>7936+0 records in<br>7936+0 records out<br>root@OpenWrt:/# uname -a=
<br>Linux OpenWrt 4.14.167 #0 Mon Feb 3 15:18:08 2020 mips GNU/Linux<br></d=
iv><div><br></div><div>Buildtime=C2=A0are equal... maybe it is because of s=
ome reproducibility effort that does not consider patches.</div><div>All my=
 tests are using initram image and kernel 4.14.<br></div><div><br></div><di=
v>The flash is a Spansion S25FL064PIF. It is the same of=C2=A0TL-WR842NDv1,=
 which has the flash section of DTS identical.</div><div><br></div><div>Ker=
nel always detects it as:</div><div>[ =C2=A0 =C2=A00.656283] m25p80 spi0.0:=
 s25sl064p (8192 Kbytes)<br></div><div><br></div><div>I tried some random c=
hanges (without knowing what I&#39;m really doing) like:</div><div><br></di=
v><div>compatible =3D &quot;spansion,spi-nor&quot;;<br></div><div>compatibl=
e =3D &quot;spansion,s25sl064p&quot;, &quot;spansion,m25p80&quot;, &quot;je=
dec,spi-nor&quot;<br></div><div>m25p,fast-read;<br></div><div><br></div><di=
v>But I guess all those name variations will, in the end, mean just the sam=
e.</div><div>&quot;m25p,fast-read&quot; does not fix the issue as well.<br>=
</div><div><br></div><div>Regards,</div><div><br></div><div><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Luiz Angelo Daros de Luca<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:luizluca@gmail.=
com" target=3D"_blank">luizluca@gmail.com</a></div></div></div></div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">Em qui., 6 de fev. de 2020 =C3=A0s 23:57, Chuanhong Guo &lt;<a href=3D"=
mailto:gch981213@gmail.com">gch981213@gmail.com</a>&gt; escreveu:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi!<br>
<br>
On Fri, Feb 7, 2020 at 6:44 AM Luiz Angelo Daros de Luca<br>
&lt;<a href=3D"mailto:luizluca@gmail.com" target=3D"_blank">luizluca@gmail.=
com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I isolated the problem to be kernel upgrade from 4.14 to 4.19. If I bu=
ild ath79 with 4.14, it simply works.<br>
&gt; The mtd problem also happens while booting 4.19 without touching the f=
lash 4.19 (using initram image).<br>
&gt;<br>
<br>
Flash reading is handled differently between 4.14 and 4.19. 4.14 reads<br>
directly from 0x1f000000 where spi is mapped. But the interface used<br>
for that got removed in 4.19 so bit-bang mode is used instead.<br>
Could you try if removing<br>
target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch<br>
also breaks ath79/4.14?<br>
<br>
Regards,<br>
Chuanhong Guo<br>
</blockquote></div>

--000000000000208b69059e01c0a6--


--===============9169183668337698453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9169183668337698453==--

