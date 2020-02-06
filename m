Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EF5154F0B
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 23:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q5zbQOx2ZvFMO9DXGgBZcYSFB5Xx9YrIl2X3LDxpaaI=; b=itN2wHZLvBCTkSKgaVVUn8RfO
	XTtXeC9e6gEibzno1Vcm5Q9QG9AMVtBewMS/5li2dEu//nJB+bHeC56fQ3VXQYHACqjrHpCoBCM86
	z3BymvgwLX7iyNns6L2wL9D0s2jVTnKPy0JjsTfS2vCToUBzhdFViVR4hwzZB/tN/YguXhvzwsXsu
	316eMXYPUyiWm1AVp1a9HEd/foJjMKwhtvZwc1Y+92BXeHWouQ53LIzZ8iTjyDppeDmG73PtAIjIx
	rBT5z8W3KvoGm/WelacR0+wuJUKTfnakMBNTPUEG1TKQG/vLHi5qHeHbHqJLud3WKMxygg003imh2
	6hzielLDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpsl-0005v9-10; Thu, 06 Feb 2020 22:44:23 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpsf-0005ul-Es
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 22:44:19 +0000
Received: by mail-pl1-x62a.google.com with SMTP id g6so155385plp.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 14:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=5ibMEL9u9VNIx55yZ4ECrlkvjb7p4SxRyZawXUgZdao=;
 b=LPmHnrKZjRZ7r0gdMEZqfRR42HB/mL/PYIZ7nIBMsFQGMMI30QWobctDIObBs5P8wv
 5bQNW35f9qSlf65SnamxC+UcHjhiEEMxgQg6GrSUHk42WeNE6lBZXrmLACehYUBnR3ZN
 wB8W+8mZJdoQ7s8jrVbOEdfm6C2+uwHsAWqk+5jm/kJVxWA4exLVX91vFsJYPz/kdxKV
 Sfz1aOiZybPsLFZW64cuOQOGJ092yHGqIeTaoDQ1M+K9efy1OxeJWXe53jbxr04tpZo3
 G3bxQtLOU7SdbJSgRRT+mvkIku/jZoyQkA1P3+gTZ85Bx7JjjP1EK0FlAaN/eDfzCEiM
 K4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=5ibMEL9u9VNIx55yZ4ECrlkvjb7p4SxRyZawXUgZdao=;
 b=bI50NpxD2tQMD2khaTDopsqFEmqgQJKstHAm5MkX5K2jM/om9O92duzIDTN+K725sI
 YfMrSqJLioGohUzK6medrSMAWR2CV3ABu5Q7Z08eqZqaprB7y+agZ7EYyl7WKA+w1eNO
 P9X+o463RLB41NHtMnlb2LBEnwKcVv4wvBW1oMo2sK1rnNevbNvcbK9HF8oVNkdOjL5Z
 f4KV+B/nkH3PMUm64rwLcnVTnEhgMCYlkRziNAxDP1YT1Uk3GwpKtA49tzhvu5KvKyEa
 QHVA4MvTHWDd0GxV+PXnNA4VBN9wI/kHtO5RSK+N0xuLVlevcLOvsFb3VpVXL1oeEGT6
 wUmA==
X-Gm-Message-State: APjAAAUMcvv7ETyYejm+0PuBsr2SIKE5dJnGm/HboNlbraHwm37YP0yN
 cZci0qG2QKV7tVEWlWhN0skMeiWvKpOm0sd0kLgGRg==
X-Google-Smtp-Source: APXvYqxe9HOHeTUeeUrVqAFFfNmB6VusKCSswYyuV+SCBCK3vamOT+o0Sy2uBxxVWE8A8ooRLvHwWSt0pcSD6Oyt8CA=
X-Received: by 2002:a17:902:76c7:: with SMTP id
 j7mr6537349plt.45.1581029055845; 
 Thu, 06 Feb 2020 14:44:15 -0800 (PST)
MIME-Version: 1.0
References: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
In-Reply-To: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Thu, 6 Feb 2020 19:44:04 -0300
Message-ID: <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_144417_525653_A11A7741 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============3715187623425901653=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3715187623425901653==
Content-Type: multipart/alternative; boundary="00000000000040d7ce059df0032d"

--00000000000040d7ce059df0032d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I isolated the problem to be kernel upgrade from 4.14 to 4.19. If I build
ath79 with 4.14, it simply works.
The mtd problem also happens while booting 4.19 without touching the flash
4.19 (using initram image).

Is there a mechanism to do a kernel bisect in OpenWrt?
Or does anybody have any clue of what could have caused this?

Regards,
---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com


Em sex., 31 de jan. de 2020 =C3=A0s 03:53, Luiz Angelo Daros de Luca <
luizluca@gmail.com> escreveu:

> Hello,
>
> I'm trying to debug
> https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2742.
> So far, what I discovered:
>
> 1) it happens only in master, 19.07 is fine on both ath79 and ar71xx
> 2) it happens only in ath79. ar71xx is fine in master
> 3) rootfs_data (mtd4) contents keeps changing on each read. Each time I
> run: "dd if=3D/dev/mtd4 | md5sum - " I get a different hash.
> 4) I get the random data reading flash from firmware (mtd1), rootfs (mtd3=
)
> or rootfs_data(mtd4), but always around the region where rootfs_data is
> (after squashfs). I could not identify the exactly upper and lower
> boundaries where it happens (addresses are random).
> 5) I also happens without mounting jffs2 (failsafe)
> 6) Most mtd4 is 0xff (as expected). Only sparse bytes or sequence of byte=
s
> contains other values.
> 7) I looked for a string inside mtd4 (if I came some a buffer), but
> changes where too small and without any sequence of printable chars.
>
> There are plenty of longs in the bug report.
>
> Has someone faced something similar?
>
> Regards,
> ---
>      Luiz Angelo Daros de Luca
>             luizluca@gmail.com
>

--00000000000040d7ce059df0032d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I isolated the problem to be ker=
nel upgrade from 4.14 to 4.19. If I build ath79 with 4.14, it simply works.=
</div><div>The mtd problem also happens while booting 4.19 without touching=
 the flash 4.19 (using initram image).</div><div><br></div><div>Is there a =
mechanism to do a kernel bisect in OpenWrt?</div><div>Or does anybody=C2=A0=
have any clue of what could have caused this?</div><div><br></div><div>Rega=
rds,</div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartma=
il=3D"gmail_signature"><div dir=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Lui=
z Angelo Daros de Luca<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=
=3D"mailto:luizluca@gmail.com" target=3D"_blank">luizluca@gmail.com</a></di=
v></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Em sex., 31 de jan. de 2020 =C3=A0s 03:53, Lu=
iz Angelo Daros de Luca &lt;<a href=3D"mailto:luizluca@gmail.com">luizluca@=
gmail.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to de=
bug=C2=A0<a href=3D"https://bugs.openwrt.org/index.php?do=3Ddetails&amp;tas=
k_id=3D2742" target=3D"_blank">https://bugs.openwrt.org/index.php?do=3Ddeta=
ils&amp;task_id=3D2742</a>.</div><div>So far, what I discovered:</div><div>=
<br></div><div>1) it happens only in master, 19.07 is fine on both ath79 an=
d ar71xx<br></div><div>2) it happens only in ath79. ar71xx is fine in maste=
r</div><div>3) rootfs_data (mtd4) contents keeps changing on each read. Eac=
h time I run: &quot;dd if=3D/dev/mtd4 | md5sum - &quot; I get a different h=
ash.</div><div>4) I get the random data reading flash from firmware (mtd1),=
 rootfs (mtd3) or rootfs_data(mtd4), but always around the region where roo=
tfs_data is (after squashfs). I could not identify the exactly=C2=A0upper a=
nd lower boundaries where it happens (addresses are random).</div><div>5) I=
 also happens without mounting jffs2 (failsafe)</div><div>6) Most mtd4 is 0=
xff (as expected). Only sparse bytes or sequence of bytes contains=C2=A0oth=
er values.</div><div>7) I looked for a string inside mtd4 (if I came some a=
=C2=A0buffer), but changes where too small and without any sequence of prin=
table chars.</div><div><br></div><div>There are plenty of longs in the bug =
report.</div><div><br></div><div>Has someone faced something similar?</div>=
<div><br></div><div>Regards,<br clear=3D"all"><div><div dir=3D"ltr"><div di=
r=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Luiz Angelo Daros de Luca<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:luizluca@gmail.com=
" target=3D"_blank">luizluca@gmail.com</a></div></div></div></div></div></d=
iv>
</blockquote></div>

--00000000000040d7ce059df0032d--


--===============3715187623425901653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3715187623425901653==--

