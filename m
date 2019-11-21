Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3BD10474E
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 01:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bbSVNSMZhJJLsgDAOU1oai+6EiTzaHO7Va6fuLzCMbo=; b=pjZUq7kaXwanFU7BTo/4bHkWk
	nyyLi5JPnuhn6nIBMNsNNeHLTb1vRooG6U44DbZXR8MqBnNOyNxzyUSWHMW+1gxTzaXoeRFcpoV9T
	SPjCPY1XjQ4dJOyKJ+5RpRknMgvHZVL3uo2v2pkkrhJXOtGu4NQQhVhODiIMqj81yZsv3jwjQc9UF
	oK5TCBzlOSm9Pl0R2Fj7+vQE/g4DtLdV5mcsOL+Sg/93xDnFjDAZ1vU4y2RqKg6KleHB9cK9SXFaH
	tGHkKe96h6gEAJynMHmR0+1ok7+YpHi/rZ4J7EWpTUI6GaVJWcI6gPd/LSTqGArMJrs6pxPbT1MuC
	EIxbqcR4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXa5M-00089W-Um; Thu, 21 Nov 2019 00:12:36 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXa5E-00088q-Uz
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 00:12:30 +0000
Received: by mail-il1-x142.google.com with SMTP id i6so1400148ilr.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 16:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QxMY8m6HWeQ47QNvhP9PnBMS5o80PEFAn1onHymZ44E=;
 b=t3ZorsfB0v81tXjt6m3hY8iGCt+jPdA3pFwX8MG/zATyEpHJdXQtZDqJm5ubYuVWl3
 uJOCjwdVfqf9nfqKM37rTpQiERfhKNuqqSOI7Z46uCfgQBGIloht5WfZIu/Sz2syoGB8
 Lyh6fym17F0wti8LasCYqQnvNVnrLDO5fmggmjy2hwIn5v0PXMgNLJUhIKFa5gSaGmMJ
 dQZO1rAheTHN8fOg8G9v4vRK1q9F3HlhqNMBrFygTJAk3OEzrUNe+YQ6sVEQrqKaF3al
 /y3yv0ZC6AESPslfAvEB0HNqGZKqUjS6iFQPzt/KRH8q+0i213N1WOJRiI4E7wcz06EO
 /dLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QxMY8m6HWeQ47QNvhP9PnBMS5o80PEFAn1onHymZ44E=;
 b=dPyZxwhR8DmSAW5YM2ZM71FApj18xEO7+aJYvTonmWFyK1FwtGUOfa8QpQXwpQlFjc
 j/+l66/yiyvOqolQdRtrjM3vytxt4YKIm9gCOK2YInvK2QNGDC0Cs6fs2VLL7BZMxpik
 oUbog1IobS6Ufj00Y8jdbewobu4Nabp0FuBfi3u9v6VBgr1hkowKikX2bB/TppEDRpup
 BWtwgKoWJtGi6UesmQTobYgcfD8qukpsA1BZFVVbFWHXKZw484VWUM/YUpuZORfAe29i
 kxldRXgiEHhQrvx/FsYtA8hvXZ4ABtWqcVmZJbO9J93HBFggmL6lWPszyz6qFY+CgQjZ
 jcDg==
X-Gm-Message-State: APjAAAXECEnqrBnZSXsFOnQG78umMoo+Lg/qonJ3wiCHGWg97GWuMTdj
 ukQaOxXv1OOpvoBL30W7OvzlrtEB0LWdSwETOFFl91L5
X-Google-Smtp-Source: APXvYqzwAfPaoMRUh7D4icSS6CdjVMszWcQdOD3NqvSXTqlU60MXzNvUfiHg7KKThgPwEbeVUG8yhkqJE0vQqQefvAE=
X-Received: by 2002:a92:395a:: with SMTP id g87mr7080920ila.206.1574295146990; 
 Wed, 20 Nov 2019 16:12:26 -0800 (PST)
MIME-Version: 1.0
References: <20191120214353.27652-1-ynezz@true.cz>
 <20191120214353.27652-6-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-6-ynezz@true.cz>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 20 Nov 2019 18:12:14 -0600
Message-ID: <CAJQUmm6==KXt9qfaMQ720ZKud=drFQuSKv+eBDqt-9COjG4ysQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_161229_059970_6C1A15C7 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 libubox 05/10] add assert.h component
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
Content-Type: multipart/mixed; boundary="===============5864603773876003256=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5864603773876003256==
Content-Type: multipart/alternative; boundary="000000000000022f5c0597d0270c"

--000000000000022f5c0597d0270c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You may need #include_next, to avoid recursion.

On Wed, Nov 20, 2019, 15:45 Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> In order to allow seamless assert() usage in release builds without the
> need for fiddling with CMake C flags as CMake adds -DNDEBUG switch in
> release builds which disable assert().
>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>  assert.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
>  create mode 100644 assert.h
>
> diff --git a/assert.h b/assert.h
> new file mode 100644
> index 000000000000..84f54718366a
> --- /dev/null
> +++ b/assert.h
> @@ -0,0 +1,9 @@
> +#pragma once
> +
> +#ifdef NDEBUG
> +#undef NDEBUG
> +#include <assert.h>
> +#define NDEBUG
> +#else
> +#include <assert.h>
> +#endif
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000022f5c0597d0270c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You may need #include_next, to avoid recursion.</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, No=
v 20, 2019, 15:45 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">yn=
ezz@true.cz</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">In order=
 to allow seamless assert() usage in release builds without the<br>
need for fiddling with CMake C flags as CMake adds -DNDEBUG switch in<br>
release builds which disable assert().<br>
<br>
Signed-off-by: Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz" targe=
t=3D"_blank" rel=3D"noreferrer">ynezz@true.cz</a>&gt;<br>
---<br>
=C2=A0assert.h | 9 +++++++++<br>
=C2=A01 file changed, 9 insertions(+)<br>
=C2=A0create mode 100644 assert.h<br>
<br>
diff --git a/assert.h b/assert.h<br>
new file mode 100644<br>
index 000000000000..84f54718366a<br>
--- /dev/null<br>
+++ b/assert.h<br>
@@ -0,0 +1,9 @@<br>
+#pragma once<br>
+<br>
+#ifdef NDEBUG<br>
+#undef NDEBUG<br>
+#include &lt;assert.h&gt;<br>
+#define NDEBUG<br>
+#else<br>
+#include &lt;assert.h&gt;<br>
+#endif<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>

--000000000000022f5c0597d0270c--


--===============5864603773876003256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5864603773876003256==--

