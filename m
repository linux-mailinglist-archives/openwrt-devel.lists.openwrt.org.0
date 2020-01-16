Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177D13F356
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 19:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB0a0Xegp52n8HbDi9Pq+Ey6rWVSYKvZSLu1oT2FJSI=; b=GfkDVwgtC51iaD
	Ih6xcP0/BUfjELJZsHO9SCUdBONhnO2bUjRKkyOziQsqAksz8gxA7ngOdqPzzKFt8OS8r7KKWo2IR
	FanRvI3wSQIl1EwCNNTKWnW1B23ynOZvKv8NXghnQaaprb3HGbzllv09vyjVLFh0H/Y0LQlDp4SHB
	gbyxjaawcvcJYUdDzRGqDDw1Aox148gDS0Jo/E4TTolBTHNhqUi0ArvwxQ+vbUirCFPy5jzE8O2A1
	m0Y2iX+TJHv5t19PJ9izQH2jcewTuFjntISW3+gk5uIT62vfwo9K8hdwDtOheDYbGb/Hzs0gRgHDW
	Ea2yeLpOV0Y3V9+yEIBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA6F-0005DJ-Rd; Thu, 16 Jan 2020 18:42:35 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9Sf-0006qn-4h
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 18:01:48 +0000
Received: by mail-qk1-x743.google.com with SMTP id z14so19982751qkg.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 10:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B+KygZ8qNEJkNw8FGKpb4p7/IGmWXjS+sOT5LWudpAI=;
 b=TiuaCNWfHTXYc7xUCoRRk1UHjgRIMYsnO+SfXrLXqpFd0M100ScDLaLnyrGflRylz+
 69iG0ObEfOQmeYg8epZ43+ckb9/B9tE7LpuLDEYx34tnsogG/okpub/p0/KLq6W42V0Z
 14RQepv9l2mX9KtF9rwMl2P+2oqh89uYWkdrvdWN5D+nNyh6I1AZEi9HtgdhKn8PCWGG
 UX76vMVGQ33/NASelM6ns4o6L9y1iFgI2wa9YER2v/oy0+3qE0029TdNs8/6uH0//1ZE
 CEAokr9XeV2K0/kViautTeYAQj0oriWNrPmamlQmioFB1D2GBLplpwBpXmKrBSw8yHy7
 OP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B+KygZ8qNEJkNw8FGKpb4p7/IGmWXjS+sOT5LWudpAI=;
 b=WE2unWzJSH4tBQb76G07kLeyJptKNLfgVlTXhUVj0J8nrRrauJWtV5OP0RG40REy0P
 ZM+UvVJ7W1l+mqtyplZRf+XguszCCwdoWlpQfbmop070PAmulRtiSW8p+r9I2YRtePjg
 E2x4vPLA8ng+CyyBNG5RUsbL3u+jrXJFMtPxBRoYRTiT9h8FKaTCfot13Qm/DRGFVKrM
 aOvp2aa6g9gztykjPBi33KljjVlAE8MiL3NalMTicQe93DR5gBNS4oOVKjjR5K5Me35m
 qdLkLRMx8bGyBoyrx/TaOQs6MdEcqh9odwI/LZhNj+j88vZu4ehp2QJMLrJ3Ttmde+md
 WJwg==
X-Gm-Message-State: APjAAAU+eBlfMp3We7MgED3PyvNjHUAbw5RJAWY6Q7nqZs9udlWoAeY3
 FFbbhCcwt5bcKLLs62whhzL8eyt1iZCwsc7n6Ro=
X-Google-Smtp-Source: APXvYqyYPOlLBnHX0C6rmrXLMvt1ftX8LwO0FOpKhItIeZDOzoFVgDtjYNZeqctWliIbGrPil4V2eRSCbnC6oACyU04=
X-Received: by 2002:a37:4f8d:: with SMTP id
 d135mr29913825qkb.455.1579197698632; 
 Thu, 16 Jan 2020 10:01:38 -0800 (PST)
MIME-Version: 1.0
References: <20200116153500.7966-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20200116153500.7966-1-dengqf6@mail2.sysu.edu.cn>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 16 Jan 2020 19:01:27 +0100
Message-ID: <CAJLcKsGFgAKzLuAxrXKnm87NkyKoh=N-dR3KFVGzorWSXgOexg@mail.gmail.com>
To: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_100141_251411_170310F8 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Jan 16, 2020 at 4:36 PM DENG Qingfang <dengqf6@mail2.sysu.edu.cn> wrote:
>
> Update ccache to 3.7.7
>
> Release notes:
> https://ccache.dev/releasenotes.html#_ccache_3_7_7
>
> Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
Patch applied, thx

Hans
> ---
>  tools/ccache/Makefile                       | 4 ++--
>  tools/ccache/patches/100-honour-copts.patch | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile
> index 50a1a412a8..4e99207872 100644
> --- a/tools/ccache/Makefile
> +++ b/tools/ccache/Makefile
> @@ -8,11 +8,11 @@ include $(TOPDIR)/rules.mk
>  include $(INCLUDE_DIR)/target.mk
>
>  PKG_NAME:=ccache
> -PKG_VERSION:=3.7.6
> +PKG_VERSION:=3.7.7
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=https://github.com/ccache/ccache/releases/download/v$(PKG_VERSION)
> -PKG_HASH:=73e2633ac9bca387b5a39c72a8f85634670c4091dab639228c433898163c86c0
> +PKG_HASH:=b7c1d6d6fe42f18e424de92746af863e0bc85794da3d69e44300840c478c98cd
>
>  include $(INCLUDE_DIR)/host-build.mk
>
> diff --git a/tools/ccache/patches/100-honour-copts.patch b/tools/ccache/patches/100-honour-copts.patch
> index 97bacae2d2..a3cef56213 100644
> --- a/tools/ccache/patches/100-honour-copts.patch
> +++ b/tools/ccache/patches/100-honour-copts.patch
> @@ -1,6 +1,6 @@
>  --- a/src/ccache.c
>  +++ b/src/ccache.c
> -@@ -2224,6 +2224,7 @@ calculate_object_hash(struct args *args,
> +@@ -2220,6 +2220,7 @@ calculate_object_hash(struct args *args,
>                         "CPLUS_INCLUDE_PATH",
>                         "OBJC_INCLUDE_PATH",
>                         "OBJCPLUS_INCLUDE_PATH", // clang
> --
> 2.24.1
>
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
