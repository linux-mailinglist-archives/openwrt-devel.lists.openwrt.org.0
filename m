Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A01C12615F
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 12:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X3/NGDCNXnZf4XNFTM4X1arAZjnhfMcXGMQorfHJnl8=; b=VZfSA/EZ9RQj9RDGyK+v6CDYq
	u5ePLzcllrHhBuHXWGX9+6YT+l+CZcSg13nBdkZk4BUWckr29T4qg3Ydut/Phl5E3GQUZT3J9k2NA
	+QrwGUYsgh0TRk7rFbrN6JUyyyTWoJnT0srQpptGBKNyGgyS7nN6w0IXpXH4gT2Wer0U2tiEXH954
	Cw7LCHtVnnrO1GntfcRDoMG01Got/7Be1j30kRtLP41Ct2p6XAMQnOa95vrR4j4m7yRPjCl0agsxE
	jMVSNh7B9BIS9mtx3/f984DAeyqnCbNHGLvYTBomz+N8FL6/Ii67DDNkATVsemwhBXcR2+vHx2eY9
	ynAPgeWrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuRg-0002kW-TQ; Thu, 19 Dec 2019 11:58:20 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihuRW-0002jy-UT
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 11:58:12 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id s16so2039259vsc.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Dec 2019 03:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ETRQmy7C5oUcIHwC8c7gwagwcBgH1iFg7S8TGvPc5u4=;
 b=rP/VljtlFwxkh1UEwWaU27GFpRErfdrw/QF3N4xiXmj3sPSalzdNpWhpXPwK0hd3Rf
 03fChDGMOe0odfMfGo00TDxTxbLgT2JfV9qf3nXmWv83IOV1sVwpUiPXAf1+KIQNlwqZ
 x3kHFgAsDzMBGtdsZ2zfuRoPmLzg7jO0RbINyUj+J6kkFF2oeOAG/mb/4udw0pviJW//
 qjvcdAAFTEgewr30lw227KFMA5WlHLLbuvXd0+ruoBJY+99c3pJ6McpbDGgLcMaoP8XK
 1LeB1BxH6M0FTkKkAXrmIGarioQATIB0bXWWBTRtbtmi+LhK1umVSRKrWnWx5dnyBqXs
 BbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ETRQmy7C5oUcIHwC8c7gwagwcBgH1iFg7S8TGvPc5u4=;
 b=rcHuyHPn0TWUPp2LtFJwXACbz57P5z6e9KayoD+RXilMpThp+LUNffzMYyySLEEWYN
 F6ZGCFd5xjcVRLlaieMzNBVCNB0QtwG/nfmvz2ByvH9RxLfke+ils/F3wyp/6nSqDkjY
 Jsb7QNxgVQ6SjlCOrFyG+oE9X+BvuKzo8dhj0eZXZnuWnVNIvkyjaFI4LCHQ4nyk0sl/
 0gutPvMy4cbXYCNalBYiYAVhrpWzdayNXWm1gKOpu2n+xffV5PplH6ss1GoKdV0SjDPf
 6NYzRqm5AHFMCn/91decNRcarH5BsKGo+9eAr2UfJZ4gwTbf7MdrP/rIABhs+xG8lROA
 Fzew==
X-Gm-Message-State: APjAAAUOKAreSy8DKworPnPFRHy5SRdYCxNfkT7x0aujHQq7ubeIJ7/a
 HD55mkOdUmx2fD2tTiR1Ub7beAKLL1KMa7xy/ktW8nVv
X-Google-Smtp-Source: APXvYqzMJ6WLvo7c1gfXJ2yeFLrnoxWi0J+q0BTLrXxi8OjhzOnzfrxlLAKwLXlqGnVW8Nl8Oa9qse5o7d6JepjPXMk=
X-Received: by 2002:a0c:aacb:: with SMTP id g11mr6574990qvb.108.1576756253249; 
 Thu, 19 Dec 2019 03:50:53 -0800 (PST)
MIME-Version: 1.0
References: <20191118220459.14022-1-jeffery.to@gmail.com>
In-Reply-To: <20191118220459.14022-1-jeffery.to@gmail.com>
From: Jeffery To <jeffery.to@gmail.com>
Date: Thu, 19 Dec 2019 19:50:41 +0800
Message-ID: <CAJXyS=gwZ_CMm1X1-BB1Jspz_j1Auy1w-W6tiJiNSVvohp6gEA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_035810_990292_F2D31815 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/gcc: Backport patch to fix
 unconditional MULTIARCH_DIRNAME
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
Content-Type: multipart/mixed; boundary="===============8881424744762265615=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8881424744762265615==
Content-Type: multipart/alternative; boundary="0000000000005f5657059a0d2ca9"

--0000000000005f5657059a0d2ca9
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 19, 2019 at 6:05 AM Jeffery To <jeffery.to@gmail.com> wrote:

> This backports the patch for GCC PR target/89587 (gcc's rs6000
> configuration unconditionally sets MULTIARCH_DIRNAME, even when
> multiarch is disabled).
>

Can someone take a look at this change? This issue is preventing the Python
3 package from compiling for apm821xx (
https://github.com/openwrt/packages/issues/10552).

Thanks,
Jeff

--0000000000005f5657059a0d2ca9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Nov 19, 2019 at 6:05 AM Jeffery To &l=
t;<a href=3D"mailto:jeffery.to@gmail.com">jeffery.to@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This backport=
s the patch for GCC PR target/89587 (gcc&#39;s rs6000<br>
configuration unconditionally sets MULTIARCH_DIRNAME, even when<br>
multiarch is disabled).<br></blockquote><div><br></div><div>Can someone tak=
e a look at this change? This issue is preventing the Python 3 package from=
 compiling for apm821xx (<a href=3D"https://github.com/openwrt/packages/iss=
ues/10552">https://github.com/openwrt/packages/issues/10552</a>).</div><div=
><br></div><div>Thanks,</div><div>Jeff</div><div><br></div></div></div>

--0000000000005f5657059a0d2ca9--


--===============8881424744762265615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8881424744762265615==--

