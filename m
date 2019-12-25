Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A512A870
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Dec 2019 16:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b2/cUSc5fP0LJtznLbhmjA4C8VhBiTy1L4x4tusGKw4=; b=dD6WUDNvWdIw+WK6+6PxF0Tia
	JrZbW3CiVpngD388+6+2KWHnuw0S3ZHzL0m4b+2QjE0SQWw0yuwi86vswA/fvMo+0+GrSi0JH0ySX
	ViLgKakYdoqY12WiCjfXGK2XZCjadABOSWTLOn6YwVntbYN9hExTMFKpg/0QyohnUULxde84EkqHR
	9CpECZj8UWUqvdbUfYQV2wzfNGg/StO/iiH4phhdQIywXp8TjUKSHVymAMC1BNHfGzTIygNfh1lAg
	aeniy04p4PN/r/9tIzFTL0l2BVKmSRigFHWs24FKJEtDAnQYPq8IEH4TEEtag6Y9KEwhbpo32FC6t
	WlqcwsimA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik8s0-0003sD-OA; Wed, 25 Dec 2019 15:46:44 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik8rs-0003rm-Ga
 for openwrt-devel@lists.openwrt.org; Wed, 25 Dec 2019 15:46:38 +0000
Received: by mail-qt1-x841.google.com with SMTP id j5so20476928qtq.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Dec 2019 07:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xRFQ4e1Oj+CIlbZg2ypK1W/95vlBKHpuL0u8U/krnZ8=;
 b=j2MzA5CuvxgKPYaEH/ECnuFYAVY/mKXQ+7K549dspCX6Cw/cFzBiC6vHP/G6Kueq0J
 hW1cwzNQCGoYMV0fYtZ1ddEiOwblG0otRycxkHKU4zSx5Yt4WVIFoGRyED9sYo0/yZ1W
 CbzZwBYkbRL4XVjyJkp+v2MnUQ8U3gfZdDPLWnk1iA8vIqLAeBi/vXWNCvyTpt1OnGF1
 /EDYnkE0pM+zxQ1a6LJYfBgZLqU2u1wsqE+hPGw+mIrdfC9GsglR2O5VQEDiaXkpnaaE
 1djilpd+clqw2s5dGC648quXxNZB/8Kt1pyEdB6PZjn54lsS2UHKF9O3QjdNxaVV1kFa
 0ulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xRFQ4e1Oj+CIlbZg2ypK1W/95vlBKHpuL0u8U/krnZ8=;
 b=t8aBnyp7fhNfdl0dWM5lFKlIBA0dqJinnXyhr6iqlo8mA/uNmQLvgZosPNK467iKji
 uhRsoSbXsvmMXNPymVrXCLv7WAAEPIdcaRoTyGthIg+Twz0aDa+LjRbWZukkxba/hhId
 F1JZmkxMc8sH8E8nQVMFdLgfHFBKzfQEhvLb6FI4+v53vVT1lyf3p/jnRTTHEaAXJUcw
 t1fJrXIypgf9bvc+B3rUEDZ6nHstCLP2evpv9LsMAjpXr8mRz28iTNLFdg+dL0SJRhqK
 ycAIr1RM0Eu7929ZtxOk/5OlVOpbRxzTqMwQcz8/PD++Z4fScAGL1beypcqoqALA0Lc+
 2itQ==
X-Gm-Message-State: APjAAAV2lo5i3/dC85gvEXmaqKr4908yIcukmLFJ4IDHsGqkevu8ZG0l
 fYda/MstlOxFRtwwwtFdLhJ2mGfxsxffEOd6eiaobAew
X-Google-Smtp-Source: APXvYqyIfxLZGmBQBZsf7tmoI1Mr9k1E9psM/v6RW2tKI4vIZ0YFgbAR/aTHpGrjU06/eRzA9SzTZK5t4QtTuNEEqCA=
X-Received: by 2002:ac8:145:: with SMTP id f5mr30518433qtg.194.1577288791849; 
 Wed, 25 Dec 2019 07:46:31 -0800 (PST)
MIME-Version: 1.0
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
 <CAMKF1sqyKBm0Yz=rtgL9JnPPRzyxfcemnuLpfV-SEQYqgTiFOA@mail.gmail.com>
 <20191225094811.GH70645@meh.true.cz>
In-Reply-To: <20191225094811.GH70645@meh.true.cz>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 25 Dec 2019 07:46:20 -0800
Message-ID: <CAMKF1srWXkQb7ciK+4TfDeuTh5vuJ3sQ7Ww59S6yXiawWkTfAg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_074636_576636_E51F91A0 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raj.khem[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Content-Type: multipart/mixed; boundary="===============7418009348676839780=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7418009348676839780==
Content-Type: multipart/alternative; boundary="0000000000002580bb059a892af2"

--0000000000002580bb059a892af2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 25, 2019 at 1:48 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Khem Raj <raj.khem@gmail.com> [2019-12-24 14:15:26]:
>
> > On Tue, Dec 24, 2019 at 1:51 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote=
:
> >
> > > Khem Raj <raj.khem@gmail.com> [2019-12-24 10:02:13]:
> > >
> > > Hi,
> > >
> > > use "PATCH libubox" subject prefix, because there is no blobmsg.c fil=
e
> in
> > > the
> > > main tree.
> > >
> > > > Fixes error: '__builtin_strcpy' offset 6 from the object at 'attr' =
is
> > > out of
> > > > the bounds of referenced subobject 'name' with type 'uint8_t[0]' {a=
ka
> > > > 'unsigned char[0]'} at offset 6 [-Werror=3Darray-bounds]
>
> What about following fix[1]? The target hdr->name buffer has already the
> terminating 0 included as blobmsg_hdrlen has strlen+1 and blob_new()
> memsets
> the buffer to 0.
>
> 1.
> https://gitlab.com/ynezz/openwrt-libubox/commit/3775b3aa28de8c20d96b6f027=
86a327423b0748a
>
> From 3775b3aa28de8c20d96b6f02786a327423b0748a Mon Sep 17 00:00:00 2001
> From: =3D?UTF-8?q?Petr=3D20=3DC5=3DA0tetiar?=3D <ynezz@true.cz>
> Date: Wed, 25 Dec 2019 10:27:59 +0100
> Subject: [PATCH] blobmsg: fix array out of bounds GCC 10 warning
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit
>
> Fixes following warning reported by GCC 10.0.0 20191203:
>
>  blobmsg.c:234:2: error: 'strcpy' offset 6 from the object at 'attr' is
> out of
> the bounds of referenced subobject 'name' with type 'uint8_t[0]' {aka
> 'unsigned char[0]'} at offset 6 [-Werror=3Darray-bounds]
>    234 |  strcpy((char *) hdr->name, (const char *)name);
>        |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
>  In file included from blobmsg.c:16:
>  blobmsg.h:42:10: note: subobject 'name' declared here
>     42 |  uint8_t name[];
>        |          ^~~~
>
> Reported-by: Khem Raj <raj.khem@gmail.com>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>  blobmsg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/blobmsg.c b/blobmsg.c
> index 48dba8156d58..ef68d8ae59f7 100644
> --- a/blobmsg.c
> +++ b/blobmsg.c
> @@ -240,7 +240,7 @@ blobmsg_new(struct blob_buf *buf, int type, const cha=
r
> *name, int payload_len, v
>         attr->id_len |=3D be32_to_cpu(BLOB_ATTR_EXTENDED);
>         hdr =3D blob_data(attr);
>         hdr->namelen =3D cpu_to_be16(namelen);
> -       strcpy((char *) hdr->name, (const char *)name);
> +       memcpy(hdr->name, name, namelen);


Yes if we are sure about terminating null then memcpy works too


>         pad_end =3D *data =3D blobmsg_data(attr);
>         pad_start =3D (char *) &hdr->name[namelen];
>         if (pad_start < pad_end)
>

--0000000000002580bb059a892af2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Dec 25, 2019 at 1:48 AM Petr =C5=A0tetiar &lt;<a hr=
ef=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt; [2019-12-24 14:15:26]:<br>
<br>
&gt; On Tue, Dec 24, 2019 at 1:51 PM Petr =C5=A0tetiar &lt;<a href=3D"mailt=
o:ynezz@true.cz" target=3D"_blank">ynezz@true.cz</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk">raj.khem@gmail.com</a>&gt; [2019-12-24 10:02:13]:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; use &quot;PATCH libubox&quot; subject prefix, because there is no=
 blobmsg.c file in<br>
&gt; &gt; the<br>
&gt; &gt; main tree.<br>
&gt; &gt;<br>
&gt; &gt; &gt; Fixes error: &#39;__builtin_strcpy&#39; offset 6 from the ob=
ject at &#39;attr&#39; is<br>
&gt; &gt; out of<br>
&gt; &gt; &gt; the bounds of referenced subobject &#39;name&#39; with type =
&#39;uint8_t[0]&#39; {aka<br>
&gt; &gt; &gt; &#39;unsigned char[0]&#39;} at offset 6 [-Werror=3Darray-bou=
nds]<br>
<br>
What about following fix[1]? The target hdr-&gt;name buffer has already the=
<br>
terminating 0 included as blobmsg_hdrlen has strlen+1 and blob_new() memset=
s<br>
the buffer to 0.<br>
<br>
1. <a href=3D"https://gitlab.com/ynezz/openwrt-libubox/commit/3775b3aa28de8=
c20d96b6f02786a327423b0748a" rel=3D"noreferrer" target=3D"_blank">https://g=
itlab.com/ynezz/openwrt-libubox/commit/3775b3aa28de8c20d96b6f02786a327423b0=
748a</a><br>
<br>
From 3775b3aa28de8c20d96b6f02786a327423b0748a Mon Sep 17 00:00:00 2001<br>
From: =3D?UTF-8?q?Petr=3D20=3DC5=3DA0tetiar?=3D &lt;<a href=3D"mailto:ynezz=
@true.cz" target=3D"_blank">ynezz@true.cz</a>&gt;<br>
Date: Wed, 25 Dec 2019 10:27:59 +0100<br>
Subject: [PATCH] blobmsg: fix array out of bounds GCC 10 warning<br>
MIME-Version: 1.0<br>
Content-Type: text/plain; charset=3DUTF-8<br>
Content-Transfer-Encoding: 8bit<br>
<br>
Fixes following warning reported by GCC 10.0.0 20191203:<br>
<br>
=C2=A0blobmsg.c:234:2: error: &#39;strcpy&#39; offset 6 from the object at =
&#39;attr&#39; is out of<br>
the bounds of referenced subobject &#39;name&#39; with type &#39;uint8_t[0]=
&#39; {aka<br>
&#39;unsigned char[0]&#39;} at offset 6 [-Werror=3Darray-bounds]<br>
=C2=A0 =C2=A0234 |=C2=A0 strcpy((char *) hdr-&gt;name, (const char *)name);=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~<br>
<br>
=C2=A0In file included from blobmsg.c:16:<br>
=C2=A0blobmsg.h:42:10: note: subobject &#39;name&#39; declared here<br>
=C2=A0 =C2=A0 42 |=C2=A0 uint8_t name[];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~<br>
<br>
Reported-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;<br>
Signed-off-by: Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz" targe=
t=3D"_blank">ynezz@true.cz</a>&gt;<br>
---<br>
=C2=A0blobmsg.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/blobmsg.c b/blobmsg.c<br>
index 48dba8156d58..ef68d8ae59f7 100644<br>
--- a/blobmsg.c<br>
+++ b/blobmsg.c<br>
@@ -240,7 +240,7 @@ blobmsg_new(struct blob_buf *buf, int type, const char<=
br>
*name, int payload_len, v<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 attr-&gt;id_len |=3D be32_to_cpu(BLOB_ATTR_EXTE=
NDED);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hdr =3D blob_data(attr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hdr-&gt;namelen =3D cpu_to_be16(namelen);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0strcpy((char *) hdr-&gt;name, (const char *)nam=
e);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(hdr-&gt;name, name, namelen);</blockquot=
e><div dir=3D"auto"><br></div><div dir=3D"auto">Yes if we are sure about te=
rminating null then memcpy works too</div><div dir=3D"auto"><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pad_end =3D *data =3D blobmsg_data(attr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pad_start =3D (char *) &amp;hdr-&gt;name[namele=
n];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (pad_start &lt; pad_end)<br>
</blockquote></div></div>

--0000000000002580bb059a892af2--


--===============7418009348676839780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7418009348676839780==--

