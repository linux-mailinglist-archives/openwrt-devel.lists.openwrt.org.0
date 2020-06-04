Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EC81EEB17
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 21:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jWb/d1+r9cW+L8WKNGunSXhH31OmCxGB8cwQdfQ2y7A=; b=ZeVfL+xVjobH4dE7foHMHGkhd
	lGyHCcbBhIszplo4oZv4OEWSgMBSWm5jTkiVq94MAwjK/RbTJh97/s3N8lVRFUAu9khjh3ujFNhBe
	c32FoaK9Z0qQih0XX0FrM8DtbDjm3wD3VDRZoxIxUFizAZonVxTSwXnC20l/r4MGlbWySlQN7rc5N
	WpGfwXQwBrgX3DYEuhLvzN+wbjaNJD3weYvkay16AinyPVLECDKMm2irmzbq0WRm0upsSKshnu5yA
	ITlE7QxJjwfii2krbicGPV/Rpt6DhkZ1jSAcn68tBIrspg++IkEW9Td6xzLOqVo3gp/OPUydF1aRr
	LAfMerb8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgvUv-0000an-8i; Thu, 04 Jun 2020 19:25:53 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgvUo-0000a2-Tj
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 19:25:48 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 82so4320297lfh.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 12:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yYtdh5ptFVxMPnneW43lho+gVaxdj0LCcshHlz17Bvs=;
 b=nD9MkMpuy0wtc/SYdmAymK3W8UflzYMEETHCZGcCblpMDvSQG9aKZmmud797d1E7ft
 v1c8WVT/gUvDwfF8jT04D3/oHgsEy+UYYYCscgyuXGfmr1KrJZmJ/gZSoVynEGjVFRdq
 75mrHx/IMoeM6fwzNrm5twThvqlfr6b301zqjhybGy04SnLs4ywBkOD+j0GrYheAVD09
 gywF5HLA0VC1imkQuwA20Wb9PUCfC1NwyC57TZNDV1caG40iYvZs+pEu70R0twpzHtk3
 B9CNUaROkxkaeG4FNb89TI6yXRFBW1ZF3ziD7kmWWPYzWu52r9zO8UumD7mmEaAuqLFt
 bF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yYtdh5ptFVxMPnneW43lho+gVaxdj0LCcshHlz17Bvs=;
 b=IbVXSuI/YtoqwFOQhk7oaRVTwEfZDxXSF66hdHc35yaxSt8P4I04+abzHUCjhiHirx
 vvz0C/URmLfxp0LZysp6ZZihmfyXJcTZfLqG81Ns+vT1Oa/8ldZvDMhwuDJtXHUNTXfV
 F7Kn/pBPcNGhaSzacEsX+ZGeKPq7oecN7R9QQtJde5hVFJMzmhLaX3wDXIU4qKzhk9eX
 uFH+sTK9Qa3IuxlmVGJHWmdTftGksksbTCR/FqMcBVjcsG7a84bUgWo5BzydLu5ucVzC
 A8qtUqa2r8lGSJ3IYNGXdK6hQxPoz2IUUAl0faICjx/vw9FQ2vowXMFygrF4RSY2anDD
 9hTQ==
X-Gm-Message-State: AOAM5306NAqbqgYpt57zvI4MmVwOPly+2m7gGh36rI4sGpEG7fAcgePT
 o2bMctORJR8yie1+Irut9aD0i6jt3veE2jJ2FhP2aePdGmI=
X-Google-Smtp-Source: ABdhPJy80HXTrGsgla+JtjVRQelA8VaxMtnyJlLrcVKRT6K7lPYXP91913App7cdQpBBRIu5/deZXTfqvQd+PM6VWJM=
X-Received: by 2002:a19:5206:: with SMTP id m6mr3242851lfb.144.1591298743734; 
 Thu, 04 Jun 2020 12:25:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
 <CAJQUmm6vjAkiGA+u_CRUG40=r_TBpJJJwUfP5uKdoOpjuN56Kg@mail.gmail.com>
 <CAAP7ucKpK5V2Dc7XsG=NwfuUpDx962fgnJWZpUaSNgYz57f0YA@mail.gmail.com>
 <CAAP7uc+1=pHOG6N-HUoww0_v-EbY9iaoERFZRCqEw70JeJF5pA@mail.gmail.com>
 <CAJQUmm7aQLY66FLRN8qSDzohSL5d+QwWjCQLRPM88Yb5VB7qAA@mail.gmail.com>
 <6c96aba2a492468abdf5490b0051e7bf@4rf.com>
In-Reply-To: <6c96aba2a492468abdf5490b0051e7bf@4rf.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 4 Jun 2020 14:25:32 -0500
Message-ID: <CAJQUmm67v68xhsmQyQFWYTUQAJAgyLwG3G_ZrUoR5m90fkCHjQ@mail.gmail.com>
To: Reuben Dowle <reuben.dowle@4rf.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_122547_025893_56075C48 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] netifd: per-interface MTU settings vs per-route
 MTU settings?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Aleksander Morgado <aleksander@aleksander.es>
Content-Type: multipart/mixed; boundary="===============7426403917811840168=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7426403917811840168==
Content-Type: multipart/alternative; boundary="0000000000005a3c1a05a7471c4e"

--0000000000005a3c1a05a7471c4e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 1, 2020 at 9:39 PM Reuben Dowle <reuben.dowle@4rf.com> wrote:

> When changing an interface MTU direct through ip command, netifd will get
> be out of sync. The netifd internally tracked MTU (discoverable through
> ubus call network.device status '{"name":"xxx"}' call will always show 15=
00
> (or whatever the value was when netifd discovered/created the interface).
>
>
>
> I am not aware of any actual issues caused by this, but it is worth
> considering.
>
>
>
> Finding some method to update through ubus is preferable in my opinion.
>
>
>
> For the project I have been working on, we added a ubus network.device
> set_attr method to netifd to solve this problem =E2=80=93 see attached pa=
tch. Then
> you can use this in the protocol handler:
>
>
>
>         [ -n "$mtu" ] && {
>                 echo "Setting MTU to $mtu"
>                 /sbin/ubus call network.device set_attr
> "{\"device\":\"$ifname\", \"mtu\":\"$mtu\"}"
>         }
>

For what it's worth, I would very much like to see a patch like this merged
into netifd. Modifying the MTU after the fact makes me uncomfortable.

--0000000000005a3c1a05a7471c4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 1, 2020 at 9:39 PM Reuben=
 Dowle &lt;<a href=3D"mailto:reuben.dowle@4rf.com">reuben.dowle@4rf.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-NZ">
<div class=3D"gmail-m_5725637833753931530WordSection1">
<p class=3D"MsoNormal"><span>When changing an interface MTU direct through =
ip command, netifd will get be out of sync. The netifd internally tracked M=
TU (discoverable through ubus call network.device status &#39;{&quot;name&q=
uot;:&quot;xxx&quot;}&#39;
 call will always show 1500 (or whatever the value was when netifd discover=
ed/created the interface).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I am not aware of any actual issues caused by =
this, but it is worth considering.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Finding some method to update through ubus is =
preferable in my opinion.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>For the project I have been working on, we add=
ed a ubus network.device set_attr method to netifd to solve this problem =
=E2=80=93 see attached patch. Then you can use this in the protocol handler=
:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -n &quot;$mtu&quot; ] =
&amp;&amp; {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Setting =
MTU to $mtu&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/ubus call net=
work.device set_attr &quot;{\&quot;device\&quot;:\&quot;$ifname\&quot;, \&q=
uot;mtu\&quot;:\&quot;$mtu\&quot;}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</p></div></div></blockquote><div><br></div><d=
iv>For what it&#39;s worth, I would very much like to see a patch like this=
 merged into netifd. Modifying the MTU after the fact makes me uncomfortabl=
e.</div></div></div>

--0000000000005a3c1a05a7471c4e--


--===============7426403917811840168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7426403917811840168==--

