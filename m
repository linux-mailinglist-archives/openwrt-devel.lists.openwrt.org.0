Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650CA12A411
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 21:14:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s4oMxD/oM7sDsr9MxnDOVaC/6QY892fl6nZEIPs2V+k=; b=XzKzzvIcT5iseu3YfQ34aKJnT
	GrpmP6WhXgdLbb+f0896WbYl5NtraxT1BmkpU8GbZgQm0UlLCKZRcTY0ayvSA2CNkCi36+eW5W/tO
	YJn/tuETTeQXLtpEvQUNu2r/i0c28gJvOZd6fK1NN5e7T0tbuOj1U85fEDNzAyPqqnL2DM6oRYT/q
	9dfUavfxobr5yQTm5rXsy8tUfHU6+HAeiVU2r/d2Rw2in9ZTtPRpEcUxCb1Qew2Hl2v7gZlYPYDco
	S3WP+RLQAKjoE5MpBboNxQotZoGOn1KbmWRtbcrLE2FT0ICbo4xfvK5qwnv3HNTYa9TmZXLECfG1d
	EWEi5km4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijqZe-00009y-IZ; Tue, 24 Dec 2019 20:14:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijqZX-0008Pm-M8
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 20:14:29 +0000
Received: by mail-qt1-x844.google.com with SMTP id l12so18847438qtq.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 12:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UAHy5S3GYnWDrQTdZQggYnKJliRvTC8Do9mQF4IQ8zA=;
 b=GTzfTt6I7BckoGev38Vhk0jgeueO8dcL8szp1z+tuovrlwmC2xzaSZQWBUMGux0H5k
 +OlHtWUEdMH4uY/gYBcwAAS91hvYTmDYqkVT+Fn8YeOD1Gue/qmAPCzwFI5TsxASYAsd
 /71hS8NaUEU8IvVGW4E0fEDSjCeAS6HQa+0EAjhE6yHbUgOgR906Ey8qnDNJflKHSKd5
 YePc8FPSzIIJPJ9mRJKgIJIRAEB1k6hBR8l0mmZZiFr0Il0qMcrIdDmlp3ZrPV6AVTdW
 bVnE96lrto8L04TeBo+ExwcmqnTNT/ERYH8leLchonCYVfIMpnzLDm50tu/f+Tzk/lwF
 iLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UAHy5S3GYnWDrQTdZQggYnKJliRvTC8Do9mQF4IQ8zA=;
 b=hmGbw0UGBXZY4B2eA1a/KY9cN/zs9SvL9WYHsKQrRDdWYoh5ELvzSyQ+/bqVu78gcP
 C4SvyinjSSrBi2jSVMaaw9LdSUcySjW+IBffYnM6FwUOIdxeyhmX9kBpeRb+iqeIYByH
 5rcTiffgRIiuNL5CHLrZG6sm49tcAy8UN4CqV1R1tQDxkhXaJ2CG17nVZ+gbLOqixKv5
 O68mTaT1ZM2/DqETVwcA+HoM0RaxsyRblixur9ZQC5frwxeTPYKsb438QFNf+DZgelWh
 WaeqNI0tkIsAjObmmgQQC4lYW56IuxkKgMs/CLy0ISMiNoAhWVvDraVpJEmUpdlAPAkT
 DtHA==
X-Gm-Message-State: APjAAAV0U5IGQeOnB8ojt4K7LAS5YDBL4m4DH3geaCZjG9qqEQCiZI7O
 HG3cvgeWyqLzw3iL/RVt8F3cIM0aFz5f99SgFfE=
X-Google-Smtp-Source: APXvYqxkAI7fo+gm3s05/72AUWOCREpbT+f6HLZ4S+8rJTlmzN5qfIghHxTd02sP+1Lk01831k1o81IfkVkQihNEwcM=
X-Received: by 2002:ac8:7592:: with SMTP id s18mr18542961qtq.378.1577218462425; 
 Tue, 24 Dec 2019 12:14:22 -0800 (PST)
MIME-Version: 1.0
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224181013.GH11377@home.paul.comp>
In-Reply-To: <20191224181013.GH11377@home.paul.comp>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Dec 2019 12:14:11 -0800
Message-ID: <CAMKF1sro7v8Oj9am7f50h0huhL95LoGrkSU2brg9E-0WkXZJcg@mail.gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_121427_755130_20316095 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raj.khem[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Content-Type: multipart/mixed; boundary="===============0835975044497680160=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0835975044497680160==
Content-Type: multipart/alternative; boundary="0000000000002fa774059a78ca9b"

--0000000000002fa774059a78ca9b
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 24, 2019 at 10:10 AM Paul Fertser <fercerpav@gmail.com> wrote:

> Hi,
>
> On Tue, Dec 24, 2019 at 10:02:13AM -0800, Khem Raj wrote:
> > +     hdr->name[strlen((char*)hdr->name)] = '\0';
> > +     strncpy((char *) hdr->name, (const char *)name,
> strlen((char*)hdr->name));
>
> strlen((char*)hdr->name) doesn't seem to be meaningful in this
> context, are you sure you were not meaning to do something like this
> instead?
>
> +       strncpy((char *) hdr->name, (const char *)name, sizeof(hdr->name));
> +       hdr->name[sizeof(hdr->name) - 1] = '\0';


Yes that is better I will send a v2 after tests

>
>
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com
>

--0000000000002fa774059a78ca9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 24, 2019 at 10:10 AM Paul Fertser &lt;<a href=
=3D"mailto:fercerpav@gmail.com">fercerpav@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hi,<br>
<br>
On Tue, Dec 24, 2019 at 10:02:13AM -0800, Khem Raj wrote:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0hdr-&gt;name[strlen((char*)hdr-&gt;name)] =3D &#3=
9;\0&#39;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0strncpy((char *) hdr-&gt;name, (const char *)name=
, strlen((char*)hdr-&gt;name));<br>
<br>
strlen((char*)hdr-&gt;name) doesn&#39;t seem to be meaningful in this<br>
context, are you sure you were not meaning to do something like this instea=
d?<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0strncpy((char *) hdr-&gt;name, (const char *)na=
me, sizeof(hdr-&gt;name));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;name[sizeof(hdr-&gt;name) - 1] =3D &#39=
;\0&#39;;</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Yes tha=
t is better I will send a v2 after tests</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><br>
<br>
-- <br>
Be free, use free (<a href=3D"http://www.gnu.org/philosophy/free-sw.html" r=
el=3D"noreferrer" target=3D"_blank">http://www.gnu.org/philosophy/free-sw.h=
tml</a>) software!<br>
mailto:<a href=3D"mailto:fercerpav@gmail.com" target=3D"_blank">fercerpav@g=
mail.com</a><br>
</blockquote></div></div>

--0000000000002fa774059a78ca9b--


--===============0835975044497680160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0835975044497680160==--

