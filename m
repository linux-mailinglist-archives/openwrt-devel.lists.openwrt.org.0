Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C0D1DE269
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 10:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sTR0yJiin59eRZjCDX+S4wckbRYYIZ1rETuiKYpGWEw=; b=QHu5SrRbPPqf+brQ1aYmfepOE
	IkdEjS/j7oNhF0ifJZ3LKIAd1doGRN8TZiA6QBzW+VDsRNUJ/brzZt+ymM2uPXvCUNt8hr992tC8C
	eNE3bqrWYDqUL/RJY2O5nLSS3M2kkUmhJBXW3h7yH3lu1uYsGQuxQ13ylWE8U76i6QLETcHCIX4ej
	awAkeovaJvVPsLlHn6b0k/mijdIxoJRBLe2kd/0LqFUsriefd+++1bh/mIhNe/TB7txndIHUyy9ag
	hPyvFZBmcg2Dorof2Qug4rE+/JfMey5/ZfYCobL+ZIiHtISiMTiO4tJruuRgMTaXJhh1ibNaIRbgk
	DdOHl3iEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3O2-00080g-FM; Fri, 22 May 2020 08:50:38 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3Nt-000805-U1
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 08:50:31 +0000
Received: by mail-qk1-x730.google.com with SMTP id 190so10065448qki.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 01:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iZcZHn1VbfBZ8R7A0wRLslGIDtgP2VcJIHaO2JVxO+Q=;
 b=gA7O19NJrF201NKk0zkM60NpsMpdIPi+9WDjL9uSuWbyBKZvMnoGYKC5NhXLu8GkIJ
 DgV9DdqFyMPPgq2G0lvRAbThzysVE/tK4jaeAHclTkD9dcU7duIOLzAlvYQ2apC6tmus
 AC43KrLIFTfQY1DXgTY9qPjFxB78VpDnhU12wEeUnnfmTT8A0/YGPkh6NIqxPqsOkTA4
 mYwchLskqTIl8axkZBMaQeXG3YhzNTh3+lq2lcu1v1YnjSUfj/Wjo9bkd54P0j8PbQQF
 8mkZ0yUlBr188wMrFWHmq15AVgFnDTzMb8uDAeVPbsOHIKR9fXyIOPu7ZFicboCvFzUY
 Ztmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iZcZHn1VbfBZ8R7A0wRLslGIDtgP2VcJIHaO2JVxO+Q=;
 b=aJsUezelacJwH+hqbAiCMwKnG4J/BGl4nZ6YlSwZuflf8WxBD/+7UmZnc/dgBTirRt
 oBKVUBJEo6DnUyCZkCmJZstUIcEv64pmMGLxaV0Cgbc9TyMpfzNDHXqI8rzPfxa6800w
 rILjDLrbBxds+8UzjrfRKrnFkBdnwjDezqwoK3SJ1NNekThhyjaSLerrp4Ra69mKwWTE
 ht+BY1qrhJFxsmOoH2/tXoApPLjqRfv34gX67JLCyNWkQRipo2dVWl+GtOENGWewhrnp
 Ih71Qk6Un4FCRteqPgMy8E7rtscVUpoqdO1l9aIQTOukIvvFuDfwlcy6Gsnkco7ACpM/
 krRg==
X-Gm-Message-State: AOAM53284oJPXeDXOg7uHynhR4m/nH5l7EFwByUyYkd3A7IAUiCaevbf
 zxv7P2smL7ZA2yk0RipqczVkZu0Fge7KqClE5kI=
X-Google-Smtp-Source: ABdhPJzniolZCCQp9ZR838mq3lRtF/7v55wOeqty4I0DaKMIN2mo3xljusg/Y6PCKa2qwvxS/rzEmsDcY1/fB2k7KkE=
X-Received: by 2002:a37:e85:: with SMTP id 127mr13951851qko.178.1590137428489; 
 Fri, 22 May 2020 01:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <af916f8c-1c57-c098-7dc1-68cc7e10db8e@couprie.net>
In-Reply-To: <af916f8c-1c57-c098-7dc1-68cc7e10db8e@couprie.net>
From: Jeffery To <jeffery.to@gmail.com>
Date: Fri, 22 May 2020 16:50:16 +0800
Message-ID: <CAJXyS=itKfw=dtS-ewaq4OyVMHsTrMheRTuPxzAqGyy4Gpy6bw@mail.gmail.com>
To: Perry Couprie <perry@couprie.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_015029_983063_E5787EA1 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:730 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Compile error compiling golang for Raspberri
 Pi3 image.
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
Content-Type: multipart/mixed; boundary="===============1983668436236052161=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1983668436236052161==
Content-Type: multipart/alternative; boundary="00000000000091bbf905a638b8e2"

--00000000000091bbf905a638b8e2
Content-Type: text/plain; charset="UTF-8"

(resending as I forgot to CC the list, sigh)

Hi Perry,

On Fri, May 22, 2020 at 6:18 AM Perry Couprie <perry@couprie.net> wrote:

> I am trying to compile openwrt for Raspberri PI3.
>
> On of the selected packages to compile in the firmware is GOLANG.
>
> When compiling golang i get the following compile error.
>
> What can i do to get it to compile ?
>

Can you describe your build system (OS, version, etc.)? Also, I am assuming
you are building using OpenWrt master? Can you do a clean checkout of
master and try the build again?

Jeff

--00000000000091bbf905a638b8e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(resending as I forgot to CC the list, sigh)</div><di=
v><br></div><div>Hi Perry,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, May 22, 2020 at 6:18 AM Perry Couprie=
 &lt;<a href=3D"mailto:perry@couprie.net">perry@couprie.net</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
I am trying to compile openwrt for Raspberri PI3.<br>
<br>
On of the selected packages to compile in the firmware is GOLANG.<br>
<br>
When compiling golang i get the following compile error.<br>
<br>
What can i do to get it to compile ?<br></blockquote><div><br></div><div>Ca=
n you describe your build system (OS, version, etc.)? Also, I am=20
assuming you are building using OpenWrt master? Can you do a clean=20
checkout of master and try the build again?=C2=A0</div><div><br></div><div>=
Jeff</div><div><br></div></div></div>

--00000000000091bbf905a638b8e2--


--===============1983668436236052161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1983668436236052161==--

