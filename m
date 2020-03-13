Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41671184BF2
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 17:03:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4stldts/Uevfhpa30tP5JpMPDFmOJp4wUAB0HR5DuVA=; b=oDbRobzQkDRmnWkARa9HKGxkM
	bSTjSGv/ZyfDp+K2IUD7kKCFo4qNbwU2S5YUiwVAilYadlra5bat6HvU+agUYlfXhJ7seHKOgRZ1Q
	SC7mp+0b9HT48U/aYgeN7YGuFGSEt0lqgB0bi2UyEVuXM6Op/scN9924IdcFOVWJ6y7awmBDyjOot
	buFyfOOoCE6qI+OwpsLK86M/xrR7EffDGeuZ7/mzf2D1dlqGyTi4BO0FpAh4TA36AIjE7el9n4mqB
	I/sMn/RjLXc/V4vLfiBG3KocBqYxLsGVgVmx+uIDbXuZIAO2ZZisg5mTPsWhFJow4Z+jvTftl2a+3
	259a4YgXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmm1-0000sf-B2; Fri, 13 Mar 2020 16:02:57 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmkS-0007vE-1n
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 16:01:25 +0000
Received: by mail-qt1-x842.google.com with SMTP id l20so7916802qtp.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 09:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G4L9Bn91p6sDoMgY4l8i+yGl3tJ8r1V4rmveiHKmC6I=;
 b=rIZa8IkBc4j0xCuraZKDNNrCMMDiNRr6VZOmPwgl7NGMjQ00G5J13U3SF6XjE21DZ0
 BI/8udHEeSEQ1j9DlcGBQTQaJN5M6ep/GW0Gn0n8+EQlcCXHS9i6eU2nrpMDtSZOQQeJ
 xVWRT2vu+yrG8AOnS4k0iJuICFqFDBpdDph27CWnKsUkjBk5k1PyFzDK3/o/YcsbLJ6r
 eTr1ZJtpbV1hGewo7Wqa80tXKcXi26TSVL2sZe3z7dWJLLNVQSUClPC8+vhobn9tWykU
 gj3ih4gRBLNpKOfYBcU789pfpFlXocbm5maXgC21qlQtEepDbxPis0h7wvyJiEwDQrfC
 J+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G4L9Bn91p6sDoMgY4l8i+yGl3tJ8r1V4rmveiHKmC6I=;
 b=aqHwUx5gbk2wgm8OcixRNORgd/WzgOHHnSjfUtQr233nxWIBHAd4dBYD/IrdD9mmFc
 6TsmxJdWrUh1MjXtkloOzCY/Igf+onUD4CAA/kBijhQECrBT/JeHMdQjBgN7EJi48EXD
 TjWr6rHTeGXBlYR4ObYTQv1tXhH/ZN3HqkaRsb2zn9aTd0GDCmiMVDWq9PV1SF95zFb4
 cNNI/C1OPVmKbASCMZt/PjSMUqqIWa6xC+KepQ0pOK6nlbhOPPcqTkwPt68lJLVvAe8D
 r6uHE3mbRCcEb/cG8YK/YE9br4UcyKzvufKMRZJzjNb+COoSSksxmzX02r6HsQeKqaKr
 R6/Q==
X-Gm-Message-State: ANhLgQ1sLr6tQVwiHaFdFzbqnfsbMF9ecXXyhJyRI4/jPlMLdm8cSV27
 nfe5o/kYJ2krx5t0rWCXKR5haczjbMCYMVcyHr8=
X-Google-Smtp-Source: ADFU+vvXhnF5+OBDuk3iH6xBB2t+/E79VZcM3PpZ4GRB8nC8ObXy/wC3LGel1iDDC9z1m0Z7dLzzhjfJWinC9NyU1CQ=
X-Received: by 2002:aed:218f:: with SMTP id l15mr12968136qtc.247.1584115275805; 
 Fri, 13 Mar 2020 09:01:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200313122024.707576-1-jo@mein.io>
In-Reply-To: <20200313122024.707576-1-jo@mein.io>
From: Wes Turner <wes.turner@gmail.com>
Date: Fri, 13 Mar 2020 12:01:03 -0400
Message-ID: <CACfEFw96zEJ3Zp+oVjJ_4M=AW5_3cZdAuEV+2A5+SNmUXdRmWg@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_090120_135634_DC9D4A2B 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH uhttpd] client: allow keep-alive for
 POST requests
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
Content-Type: multipart/mixed; boundary="===============1688544767935259023=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1688544767935259023==
Content-Type: multipart/alternative; boundary="0000000000004c36e205a0be9472"

--0000000000004c36e205a0be9472
Content-Type: text/plain; charset="UTF-8"

Are there *new* security implications of allowing keep-alive?

Slowloris DoS comes to mind:
https://en.wikipedia.org/wiki/Slowloris_(computer_security)

And the article mentions a number of tools.

Older devices are likely somewhat trivially DoS-able without this patch;
but maybe include a config option to disable keep-alive?

What happens to RAM and CPU usage when there are multiple tabs open with
keep-alive on?

On Fri, Mar 13, 2020, 8:20 AM Jo-Philipp Wich <jo@mein.io> wrote:

> Allow POST requests via persistent connections to improve performance
> especially when using HTTPS on older devices.
>
> After this change, average page load times in LuCI improve significantly
> once the TLS connections are initiated.
>
> When testing an ar71xx 19.07.2 build on an ethernet connected TL-WR1043nd
> using luci-ssl-openssl and the ustream-openssl backend, the average page
> load time for the main status page decreased to 1.3s compared to 4.7s
> before, the interface and wireless configuration pages loaded in 1.2s
> seconds each compared to the 4.2s and 4.9s respectively before.
>
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
> ---
>  client.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/client.c b/client.c
> index 92f7609..2a2393f 100644
> --- a/client.c
> +++ b/client.c
> @@ -194,8 +194,7 @@ static int client_parse_request(struct client *cl,
> char *data)
>
>         req->method = h_method;
>         req->version = h_version;
> -       if (req->version < UH_HTTP_VER_1_1 || req->method ==
> UH_HTTP_MSG_POST ||
> -           !conf.http_keepalive)
> +       if (req->version < UH_HTTP_VER_1_1 || !conf.http_keepalive)
>                 req->connection_close = true;
>
>         return CLIENT_STATE_HEADER;
> --
> 2.25.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000004c36e205a0be9472
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Are there *new* security implications of allowing keep-al=
ive?<div dir=3D"auto"><br></div><div dir=3D"auto">Slowloris DoS comes to mi=
nd:</div><div dir=3D"auto"><a href=3D"https://en.wikipedia.org/wiki/Slowlor=
is_(computer_security)">https://en.wikipedia.org/wiki/Slowloris_(computer_s=
ecurity)</a><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">And the=
 article mentions a number of tools.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Older devices are likely somewhat trivially DoS-able without t=
his patch; but maybe include a config option to disable keep-alive?</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">What happens to RAM and CPU usa=
ge when there are multiple tabs open with keep-alive on?</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 1=
3, 2020, 8:20 AM Jo-Philipp Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.=
io</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Allow POST reques=
ts via persistent connections to improve performance<br>
especially when using HTTPS on older devices.<br>
<br>
After this change, average page load times in LuCI improve significantly<br=
>
once the TLS connections are initiated.<br>
<br>
When testing an ar71xx 19.07.2 build on an ethernet connected TL-WR1043nd<b=
r>
using luci-ssl-openssl and the ustream-openssl backend, the average page<br=
>
load time for the main status page decreased to 1.3s compared to 4.7s<br>
before, the interface and wireless configuration pages loaded in 1.2s<br>
seconds each compared to the 4.2s and 4.9s respectively before.<br>
<br>
Signed-off-by: Jo-Philipp Wich &lt;<a href=3D"mailto:jo@mein.io" target=3D"=
_blank" rel=3D"noreferrer">jo@mein.io</a>&gt;<br>
---<br>
=C2=A0client.c | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
<br>
diff --git a/client.c b/client.c<br>
index 92f7609..2a2393f 100644<br>
--- a/client.c<br>
+++ b/client.c<br>
@@ -194,8 +194,7 @@ static int client_parse_request(struct client *cl, char=
 *data)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 req-&gt;method =3D h_method;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 req-&gt;version =3D h_version;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (req-&gt;version &lt; UH_HTTP_VER_1_1 || req=
-&gt;method =3D=3D UH_HTTP_MSG_POST ||<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!conf.http_keepalive)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (req-&gt;version &lt; UH_HTTP_VER_1_1 || !co=
nf.http_keepalive)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 req-&gt;connection_=
close =3D true;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return CLIENT_STATE_HEADER;<br>
-- <br>
2.25.1<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>

--0000000000004c36e205a0be9472--


--===============1688544767935259023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1688544767935259023==--

