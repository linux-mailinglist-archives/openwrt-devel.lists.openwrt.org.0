Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D791EA838
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 19:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9wdoHkzMgwNquroQQ3dm/31eNleHq7XkNRgmPWfsdDE=; b=Lm6OeM7G1p4S6qyFY+8bAeIMI
	rjEF7PIMtyzzbfBuAjusLPuCmOChDAha5t36gcSYO1+5HywXqhgpGgy6c5hzvhVzVRT9mRu07+7vA
	flCOLULljVFrlHSo5zxamutJSs/jXZp5oz/GWgER3iohH7DEzqFTgWgDHVGcrWf9XsNV8QaSaQ3Xu
	e8cSgMQfjuH87xtWIESjFnkPlF3hYzybEWKYn770pK5RlqedueL2qN7mJw3dICWImUTaWmsCHjg/K
	m4YrorT0UQinszYCUCgmpn+4GOVDC9znC+O1XtSnY8Ix9rkskujoENAeAGyK9woMRb5f5/VIcrmT1
	dJHlGa+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfnyj-00080F-FB; Mon, 01 Jun 2020 17:12:01 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfnyd-0007zZ-60
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 17:11:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id c21so4378403lfb.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jun 2020 10:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LNJquRYCkknvDmiAyEy8BwaMAmOKPuF/r8wZaAFVSLk=;
 b=We1+GIdGtyTez/6PogwDSUq/YphDTn9T/AZEXUp9XXEE7RHt7Mmxma0v7JcRhIgJVH
 1zHcGzZsOe6YlU8Xrl2eVjjAw99ZQtONF/odJBz0qUgnGm8UjT9nKQp+Vw18hRVDWXpb
 ji97W14Ec8mgzJE5BC3mB1FDtI3EYO5xHF5zHI/8oTATZ68lNj0gT+qeacnO7Hs+Kpee
 hopquhl9leUyRY0nF5YWpowUVCXExbkM7pdpWaz0a6+MfWz1kaxIrW5GPDyT/OJLKpRw
 22wyqTtYmGxrgNPCt5T8DxIc6Nf3VlCTVNrZTtrnTjzNZiKrB+yqQDM61ylClMLQrQZL
 w/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LNJquRYCkknvDmiAyEy8BwaMAmOKPuF/r8wZaAFVSLk=;
 b=sAuJOs6Nc9dAjyfNeGmzPehaLy7xVNoTyKm/Hk1qOlnI7nWCMfEi5WahmDPt+AFPkz
 HsKKVpYjmV2V5l1FOQRyi6tc8BpmNtPCaCEzwsdNjpU1dUWQ9GTQTEu63dS+4ex3/Abq
 AW/uyc+zgyYS2rAzJgH/6pTGbp5gGLE/zvOkSrdj7Pn0Pr1LVEPVqAfVLdopMJ1PYaL6
 AwNd3NKYr3EfZysI3mJr2o/PTaJzRmsDXjtC7FfD7MiDkiYQ063VxPL8PxmiuVioLaDb
 xSy1vlscuV0wJjFGAezxTkjjx5wKjVsfYUaRQ/Tb9X0gHDafscBxz+/5RN4UR2dW8R8z
 EFNw==
X-Gm-Message-State: AOAM531bFH8KEEnwZDakbOZuAGVR2bg30Zk5hD/PHH/fcoI37z1isv7J
 1RqjTJn5yWCceziSi3ENvTV0py9lN8Jpvp/gW14wpl46
X-Google-Smtp-Source: ABdhPJyLWLoNwbTgIy61NckWH8m8Q7RnZxVJ7DxpDmmUVjyLq3Lkw5IP48/uSMy57Xu9INyWI83nBsdtghn35TbgfeI=
X-Received: by 2002:a19:5056:: with SMTP id z22mr11427913lfj.195.1591031511253; 
 Mon, 01 Jun 2020 10:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200601153226.15229-1-roman@advem.lv>
In-Reply-To: <20200601153226.15229-1-roman@advem.lv>
From: Michael Jones <mike@meshplusplus.com>
Date: Mon, 1 Jun 2020 12:11:40 -0500
Message-ID: <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
To: Roman Yeryomin <roman@advem.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_101155_295858_A61AEDB7 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Content-Type: multipart/mixed; boundary="===============6216480794668786944=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6216480794668786944==
Content-Type: multipart/alternative; boundary="0000000000000e1de405a708e4ae"

--0000000000000e1de405a708e4ae
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 1, 2020 at 10:33 AM Roman Yeryomin <roman@advem.lv> wrote:

> Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).
> This allows to do clean and dirclean. Cache hit rate for test build
> after dirclean is ~65%.
> If CCACHE is enabled stats are printed out at the end of building process.
>
> Signed-off-by: Roman Yeryomin <roman@advem.lv>
>

This certainly looks like an improvement.

However, there is an important usage case that this change doesn't address.

Frequently when I am working on OpenWRT related things, I have many
different workspaces all tied to the same git repository hosted externally.
The reason for this is to allow multiple builds to live and run
independently.

Having the CCACHE_DIR be located *inside* the repository doesn't share the
cache between multiple workspaces.

So can the CCACHE_DIR be made configurable at build time based on the
.config file? Perhaps it can default to this, and only be set to the value
in .config if provided? For my purposes, I would always set the CCACHE_DIR
to a path that all of my workspaces use.

--0000000000000e1de405a708e4ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 1, 2020 at 10:33 AM Roman=
 Yeryomin &lt;<a href=3D"mailto:roman@advem.lv">roman@advem.lv</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Set CCACHE_DI=
R to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).<br>
This allows to do clean and dirclean. Cache hit rate for test build<br>
after dirclean is ~65%.<br>
If CCACHE is enabled stats are printed out at the end of building process.<=
br>
<br>
Signed-off-by: Roman Yeryomin &lt;<a href=3D"mailto:roman@advem.lv" target=
=3D"_blank">roman@advem.lv</a>&gt;<br></blockquote><div><br></div><div>This=
 certainly looks like an improvement.</div><div><br></div><div>However, the=
re is an important usage case that this change doesn&#39;t address.</div><d=
iv><br></div><div>Frequently when I am working on OpenWRT related things, I=
 have many different workspaces all tied to the same git repository hosted =
externally. The reason for this is to allow multiple builds to live and run=
 independently.</div><div><br></div><div>Having the CCACHE_DIR be located *=
inside* the repository doesn&#39;t share the cache between multiple workspa=
ces.</div><div><br></div><div>So can the CCACHE_DIR be made configurable at=
 build time based on the .config file? Perhaps it can default to this, and =
only be set to the value in .config if provided? For my purposes, I would a=
lways set the CCACHE_DIR to a path that all of my workspaces use.<br></div>=
<div><br></div><div>=C2=A0</div></div></div>

--0000000000000e1de405a708e4ae--


--===============6216480794668786944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6216480794668786944==--

