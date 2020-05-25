Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E081E1351
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 19:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q+5ViFCzmaS16s1Z5IXAqe90qLqACRtzWBtQnLuCOnw=; b=L8yxO6kUUmNjUEPeOvPGsAXrR
	DrnvQ7777BZF4NJsuVUiXHqvITW0BQCNsb3wv9km+XDDyWSppxum1Qn0ItGQiabViCpboq6sMo/2g
	PqJyCo0wwhNjojgAw6QL1LJpDfXSLFFlI7cLcDOCIW6NnPxLmbRFTD2opGXjxz8SFcGMcOG4v90MK
	MubyJNvf0f/KuLaGDswyJ8g35h1h3dAeLWzVF3dmlKakj7gBBm7B/Ws9qMs9tG/Kpq1HD0BDYbdki
	R0+rs6aabwFsDPJFvxQFmuevYz8SYlRFJmUFmD+bY9TrMyuCGlq9mAxOeCsy+GpfZGfNkphh5zvLF
	ciDGx6kAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdGnD-00080K-5A; Mon, 25 May 2020 17:21:39 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdGn6-0007zr-U7
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 17:21:34 +0000
Received: by mail-lj1-x22d.google.com with SMTP id w10so21574883ljo.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 10:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HO9JUDmQUyEFcTA4dHOMO2Y789XqNeqXMSjAuPbUdks=;
 b=TgY0jwwkyrHLUJOnZHPglfpHR8uCjbIewImt+GzyKgt7AV2zMBqtJ5GDDW47Y3McNo
 aePALD3HT/1cuBfpDHYWQYC5omDOk+JNixwpbGx1G4/kxdIjIsIO8HxmJ4tK4k0DcDGH
 BrEzhdhwRbxPw5lCv3YayDCZ4ifH8UFLJ4uSPekNVJxPAI9MRCvxFQ94DhoDh8TZzpQP
 hgsuSBQuN2xXuQacupPOYjX98lOBMjxoxhUjmYYyXwPGzFkIVnGuk8oxNNpTJQXJ+yeJ
 DtPpRljLU8QJagbmCTxYJzFwMiI/kfeX13C2w33Nj/w8tZ6HWzLo5bAdHHU8vgzGnRR/
 LkGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HO9JUDmQUyEFcTA4dHOMO2Y789XqNeqXMSjAuPbUdks=;
 b=BN/KD0IezrDMedbIwkxZV5vVq01iseupU9f0Jeeu+EJh6sJ1nWAyMBUI9r0V+AW+sl
 U4It0Jd90ilT+wrHbWxCVpljmmOFNQ5f4mlua+cUtTcI2Bx4R3c9epZQMTIBnn7JiZ2R
 /nQQHprKZYr8jVJKLUXWUqgeza3Oc3kKkHtMsv3nD80OiinX3NGVkfF8+XbfYfGS9KyB
 3KP5pwkkA1YT2z6pbGlWWXaYMh0rayKIIQpl/wybrNjbXiKnRFyOMNrCdgt2Nw4xHoyb
 iR288Y7GjxPSVS2x7YLPx8C5WU79U0Z9TDaV7Skqx+SHbR5loIu2WovwmwS6PRkcXVR8
 24Kg==
X-Gm-Message-State: AOAM5314Kgv4rUct1K7RDuoKtm1VkcO+9kHr8o7/dvlJlKFsgxcMuQo9
 6i+BLy3N0MBigresVfcVyaNe7KlU23Dl2e3kSMLVIgmA
X-Google-Smtp-Source: ABdhPJx68xhsIdW755qpGPZ+sAzFPA9zo7S10eZuFbohpRoBEVWuNnaoQLjS86DYJLDRUlhqisgaiSmjv7Riw0Wl/oY=
X-Received: by 2002:a2e:904c:: with SMTP id n12mr12687044ljg.378.1590427289276; 
 Mon, 25 May 2020 10:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
 <CAJQUmm6vjAkiGA+u_CRUG40=r_TBpJJJwUfP5uKdoOpjuN56Kg@mail.gmail.com>
 <CAAP7ucKpK5V2Dc7XsG=NwfuUpDx962fgnJWZpUaSNgYz57f0YA@mail.gmail.com>
 <CAAP7uc+1=pHOG6N-HUoww0_v-EbY9iaoERFZRCqEw70JeJF5pA@mail.gmail.com>
In-Reply-To: <CAAP7uc+1=pHOG6N-HUoww0_v-EbY9iaoERFZRCqEw70JeJF5pA@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Mon, 25 May 2020 12:21:18 -0500
Message-ID: <CAJQUmm7aQLY66FLRN8qSDzohSL5d+QwWjCQLRPM88Yb5VB7qAA@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_102133_032357_E3D38512 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8416257530754146991=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8416257530754146991==
Content-Type: multipart/alternative; boundary="0000000000009e66af05a67c3576"

--0000000000009e66af05a67c3576
Content-Type: text/plain; charset="UTF-8"

On Mon, May 25, 2020 at 8:00 AM Aleksander Morgado <aleksander@aleksander.es>
wrote:

> Other protocol handlers, like uqmi, are also able to setup the MTU,
> and instead of doing it via proto_send_update, they just do it like
> this:
>
>         [ -n "$mtu" ] && {
>                 echo "Setting MTU to $mtu"
>                 /sbin/ip link set dev $ifname mtu $mtu
>         }
>
> I guess we can do the same in the ModemManager protocol handler.
>
>
That does seem like it would work, but I'm wary of race conditions with the
message sent to netifd via ubus, and further feel like it would be better
to have netifd learn how to set the mtu directly, if it doesn't already
know how.

Are any of the netifd project's contributors able to comment on this?

--0000000000009e66af05a67c3576
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 25, 2020 at 8:00 AM Aleks=
ander Morgado &lt;<a href=3D"mailto:aleksander@aleksander.es">aleksander@al=
eksander.es</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
Other protocol handlers, like uqmi, are also able to setup the MTU,<br>
and instead of doing it via proto_send_update, they just do it like<br>
this:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -n &quot;$mtu&quot; ] &amp;&amp; {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Setting =
MTU to $mtu&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/ip link set d=
ev $ifname mtu $mtu<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
I guess we can do the same in the ModemManager protocol handler.<br>
<br></blockquote><div><br></div><div>That does seem like it would work, but=
 I&#39;m wary of race conditions with the message sent to netifd via ubus, =
and further feel like it would be better to have netifd learn how to set th=
e mtu directly, if it doesn&#39;t already know how.<br></div><div><br></div=
><div>Are any of the netifd project&#39;s contributors able to comment on t=
his?</div><div><br></div></div></div>

--0000000000009e66af05a67c3576--


--===============8416257530754146991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8416257530754146991==--

