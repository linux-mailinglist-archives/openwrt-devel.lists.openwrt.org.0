Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798C413FB21
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 22:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RkKbGpuMCoZ9wEz/U0BoHO8R/tbq82fh9/BVuc5xCS0=; b=tplPY7f4Ot6ImXTrisbHi2SNf
	IqdS/A4xjAs5UaSDzW3F8D0iC6Z/Rk4aB0BfHDqhCaQPdsY8DTGqBD3K3oEQ0LW8dB2L4i5rExOZM
	w8Fwm5vc6o8FWZcqgqIIwbdcUHvhPoHilaxH8YHxRZ2C7+aCTx6V9kZbsan2jGqGYFmQutpvZ0/jk
	g1e8arA1Vuk60c5rOooCAlX/4ox0aGUPjQgoLJFQZ531Zu1ZkwG02Zgpq+FXuX2sctdEblkhZBor6
	esJRejCLQ5p+o0KxojsuQaotzLIjsLrZgdfr8Fgxdx1EAOg5sqW1qv1ysVsauOLlz2YHRMbMl9m+f
	KPSN8AYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCR8-000885-UI; Thu, 16 Jan 2020 21:12:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCR1-0007xD-77
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 21:12:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id n12so16680884lfe.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 13:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2hmLP36B53dyhF4OAaRpTX/yVQ/GRwpc7b2Y69LV8gQ=;
 b=ZBtpBdDjpaazPAC1JeiwGGKqsGyO4h4cQR+R721s3Xm4AocssJwZRiINE5KFxZNYlL
 xrLjmgnZahil6EyhbqQaZVmGn/UOCD11AIGRdyjSqihWwMK3j9PQrciYNRHaSFzyua61
 qbuIpfjAyrkbF3KGsINvWVxE+q0/81Kv09lU4xjfQSyR2WgjsgRqtPZcJlEQGwslCiXS
 Zv6BVREYvfKwDefAQoiq24wvjtHLgZtBRVe1CJI5ctgNdeGgID2oQ79rKPwTbM2zUxz2
 0qKjt7DpAg4EFRCllUzUWf3SBxv3+tE5dFoHweLqCSimJh20hS5Epw1ADckonu4ekgYu
 OeIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2hmLP36B53dyhF4OAaRpTX/yVQ/GRwpc7b2Y69LV8gQ=;
 b=TegkfvCbzRAy8U0NBEoHgheQjrnGVilsVeecsGvnINuIdCH8J+ZWnWy4BQuXDszsXt
 c8gEWo9FhhWIVEb40EbQ8GQWJRoGMnFh8Ayx6tsA2yQ+3vpjwRFv/kujSw/Y0JdazT2Z
 fiUjr7cz5unu0WcAjy2d+qxqOprkPGl80a63mGosDV+vmgd49PjjBm3zBW2ff0Z0vqWg
 9qMh5BQ+tEEoIk8csQTUPuR80KY2wKK6gXivEZ/OSj2WkD58Xbeu+S2gU16TkNF+hRhi
 fXWuubr8bqfRAzDXEb2hhWewt7udnRCK3O3FB4ptsDIYHoM7sfYXG+YN67Yoyae356ZE
 OZIg==
X-Gm-Message-State: APjAAAWYXXVi67t1bXyBJ2tbMwvBkw8MDegEJ4Gu6DcgAsqN54zGQyp1
 7Pnc/MVK8VB6E+HMBs9J6YJJDwhTsdx5vbo0ZMFD+A==
X-Google-Smtp-Source: APXvYqwzI+s6qHIpm4tla5otqvl2GmXCeG/Vk6Nw5N7Pc/hlP6XA+GbiAAku5f0+ZNAM4DAtbUi9rqWVzzEB19a6xrA=
X-Received: by 2002:ac2:430d:: with SMTP id l13mr3711666lfh.112.1579209128500; 
 Thu, 16 Jan 2020 13:12:08 -0800 (PST)
MIME-Version: 1.0
References: <20200116153500.7966-1-dengqf6@mail2.sysu.edu.cn>
 <CAJLcKsGFgAKzLuAxrXKnm87NkyKoh=N-dR3KFVGzorWSXgOexg@mail.gmail.com>
In-Reply-To: <CAJLcKsGFgAKzLuAxrXKnm87NkyKoh=N-dR3KFVGzorWSXgOexg@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 16 Jan 2020 15:13:13 -0600
Message-ID: <CAJQUmm7LFmRYb85Mec_wCESd2XWZPHEhJQrMZN1zoyiUHZrK_Q@mail.gmail.com>
To: Hans Dedecker <dedeckeh@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_131211_405799_D9764E2F 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ccache: update to 3.7.7
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
Cc: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5718812168606785498=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5718812168606785498==
Content-Type: multipart/alternative; boundary="000000000000217261059c4847fc"

--000000000000217261059c4847fc
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 16, 2020 at 12:42 PM Hans Dedecker <dedeckeh@gmail.com> wrote:

> On Thu, Jan 16, 2020 at 4:36 PM DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> wrote:
> >
> > Update ccache to 3.7.7
> >
> > Release notes:
> > https://ccache.dev/releasenotes.html#_ccache_3_7_7
> >
> > Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> Patch applied, thx
>
> Hans
> > ---
> >  tools/ccache/Makefile                       | 4 ++--
> >  tools/ccache/patches/100-honour-copts.patch | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile
> > index 50a1a412a8..4e99207872 100644
> > --- a/tools/ccache/Makefile
> > +++ b/tools/ccache/Makefile
> > @@ -8,11 +8,11 @@ include $(TOPDIR)/rules.mk
> >  include $(INCLUDE_DIR)/target.mk
> >
> >  PKG_NAME:=ccache
> > -PKG_VERSION:=3.7.6
> > +PKG_VERSION:=3.7.7
> >
> >  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
> >  PKG_SOURCE_URL:=
> https://github.com/ccache/ccache/releases/download/v$(PKG_VERSION)
> >
> -PKG_HASH:=73e2633ac9bca387b5a39c72a8f85634670c4091dab639228c433898163c86c0
> >
> +PKG_HASH:=b7c1d6d6fe42f18e424de92746af863e0bc85794da3d69e44300840c478c98cd
> >
> >  include $(INCLUDE_DIR)/host-build.mk
> >
> > diff --git a/tools/ccache/patches/100-honour-copts.patch
> b/tools/ccache/patches/100-honour-copts.patch
> > index 97bacae2d2..a3cef56213 100644
> > --- a/tools/ccache/patches/100-honour-copts.patch
> > +++ b/tools/ccache/patches/100-honour-copts.patch
> > @@ -1,6 +1,6 @@
> >  --- a/src/ccache.c
> >  +++ b/src/ccache.c
> > -@@ -2224,6 +2224,7 @@ calculate_object_hash(struct args *args,
> > +@@ -2220,6 +2220,7 @@ calculate_object_hash(struct args *args,
> >                         "CPLUS_INCLUDE_PATH",
> >                         "OBJC_INCLUDE_PATH",
> >                         "OBJCPLUS_INCLUDE_PATH", // clang
> > --
> > 2.24.1
>
>

In my testing, I've found that ccache measurably does not change the build
times for OpenWRT.

Is your experience different?

Relevant flyspray conversations:

https://bugs.openwrt.org/index.php?do=details&task_id=2596
https://bugs.openwrt.org/index.php?do=details&task_id=2597
<https://bugs.openwrt.org/index.php?do=details&task_id=2596>

--000000000000217261059c4847fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 16, 2020 at 12:42 PM Hans Ded=
ecker &lt;<a href=3D"mailto:dedeckeh@gmail.com">dedeckeh@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, J=
an 16, 2020 at 4:36 PM DENG Qingfang &lt;<a href=3D"mailto:dengqf6@mail2.sy=
su.edu.cn" target=3D"_blank">dengqf6@mail2.sysu.edu.cn</a>&gt; wrote:<br>
&gt;<br>
&gt; Update ccache to 3.7.7<br>
&gt;<br>
&gt; Release notes:<br>
&gt; <a href=3D"https://ccache.dev/releasenotes.html#_ccache_3_7_7" rel=3D"=
noreferrer" target=3D"_blank">https://ccache.dev/releasenotes.html#_ccache_=
3_7_7</a><br>
&gt;<br>
&gt; Signed-off-by: DENG Qingfang &lt;<a href=3D"mailto:dengqf6@mail2.sysu.=
edu.cn" target=3D"_blank">dengqf6@mail2.sysu.edu.cn</a>&gt;<br>
Patch applied, thx<br>
<br>
Hans<br>
&gt; ---<br>
&gt;=C2=A0 tools/ccache/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
&gt;=C2=A0 tools/ccache/patches/100-honour-copts.patch | 2 +-<br>
&gt;=C2=A0 2 files changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile<br>
&gt; index 50a1a412a8..4e99207872 100644<br>
&gt; --- a/tools/ccache/Makefile<br>
&gt; +++ b/tools/ccache/Makefile<br>
&gt; @@ -8,11 +8,11 @@ include $(TOPDIR)/<a href=3D"http://rules.mk" rel=3D=
"noreferrer" target=3D"_blank">rules.mk</a><br>
&gt;=C2=A0 include $(INCLUDE_DIR)/<a href=3D"http://target.mk" rel=3D"noref=
errer" target=3D"_blank">target.mk</a><br>
&gt;<br>
&gt;=C2=A0 PKG_NAME:=3Dccache<br>
&gt; -PKG_VERSION:=3D3.7.6<br>
&gt; +PKG_VERSION:=3D3.7.7<br>
&gt;<br>
&gt;=C2=A0 PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.xz<br>
&gt;=C2=A0 PKG_SOURCE_URL:=3D<a href=3D"https://github.com/ccache/ccache/re=
leases/download/v$(PKG_VERSION)" rel=3D"noreferrer" target=3D"_blank">https=
://github.com/ccache/ccache/releases/download/v$(PKG_VERSION)</a><br>
&gt; -PKG_HASH:=3D73e2633ac9bca387b5a39c72a8f85634670c4091dab639228c4338981=
63c86c0<br>
&gt; +PKG_HASH:=3Db7c1d6d6fe42f18e424de92746af863e0bc85794da3d69e44300840c4=
78c98cd<br>
&gt;<br>
&gt;=C2=A0 include $(INCLUDE_DIR)/<a href=3D"http://host-build.mk" rel=3D"n=
oreferrer" target=3D"_blank">host-build.mk</a><br>
&gt;<br>
&gt; diff --git a/tools/ccache/patches/100-honour-copts.patch b/tools/ccach=
e/patches/100-honour-copts.patch<br>
&gt; index 97bacae2d2..a3cef56213 100644<br>
&gt; --- a/tools/ccache/patches/100-honour-copts.patch<br>
&gt; +++ b/tools/ccache/patches/100-honour-copts.patch<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 --- a/src/ccache.c<br>
&gt;=C2=A0 +++ b/src/ccache.c<br>
&gt; -@@ -2224,6 +2224,7 @@ calculate_object_hash(struct args *args,<br>
&gt; +@@ -2220,6 +2220,7 @@ calculate_object_hash(struct args *args,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&quot;CPLUS_INCLUDE_PATH&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&quot;OBJC_INCLUDE_PATH&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&quot;OBJCPLUS_INCLUDE_PATH&quot;, // clang<br>
&gt; --<br>
&gt; 2.24.1<br><br></blockquote><div><br></div><div><br></div>In my testing=
, I&#39;ve found that ccache measurably does not change the build times for=
 OpenWRT.<div><br></div><div>Is your experience different?<br><br>Relevant =
flyspray=C2=A0conversations:=C2=A0<br><div><br></div><a href=3D"https://bug=
s.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2596">https://bugs.openw=
rt.org/index.php?do=3Ddetails&amp;task_id=3D2596</a></div><div><a href=3D"h=
ttps://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2597">https://=
bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2597</a></div><div><a=
 href=3D"https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2596=
"></a><br></div></div></div>

--000000000000217261059c4847fc--


--===============5718812168606785498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5718812168606785498==--

