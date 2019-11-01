Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAC4ECA28
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 22:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aEdIg5RSBuF2+Bsn6SV12IJrr6QYPFZCb8u1NbtCL8=; b=AF0XPFAGEeTmF+
	SC5mEOotb6d078Hdu3d61BlgNR5fyE+VIvYPdBPraYiD3JpQcK+bZQM8XZuWgZRKNQRkxRESvvaUP
	jtwbPC4jxzCqMMS58pXk5nXqu+BtkKBEqjl3RiomccrjW1qYeqIqZI+krW5hEQs3aP5UhO0+zSaJs
	JagaqsgWTL4jJJ+cMoWNUzYFNy5CDn4xAyQfljmIAUWwuE19ATRKbigqhx2S27yUM/0qhJX5e6V2Q
	Vjr48xCpMddrF2151o92/d8RgGU6L8Qd8DylV+kZ2cLc71o2tyS+noXS0B6ho1ABopA8w7Q+fHNN/
	nOiQd+3A3P+BRS5wa9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQe9v-00022o-2s; Fri, 01 Nov 2019 21:08:39 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQe9l-00022K-7a
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 21:08:30 +0000
Received: by mail-ot1-x341.google.com with SMTP id u13so9527381ote.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 14:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AFMRq7lBXVqujniSgKjrVFXGWzxFRQKvwC6SbmjmF6w=;
 b=rNiBmRuV9JgP6MGrrVmGmTOwiW9VNcLSRvW8uwlsTtSnwKHieNUAatw89s/eyteFKn
 3yu3Nndw22asDmyN4l6mKgHxhdAEdO1MSroD1HyEkccQ/Gj6c16DA7UVnGQ0jiHt2fo7
 P8SyOL2fztJQQPizd55B/meU9WajCVwKDJFPLzC0pOdEAlNGlE5KFlySgbf83ZRJG4Tc
 KGq1On3KnHDYy9Q8bg7beOytg2qag+VLDdi7EzSO2kcqbMgRxtE7afGp7WRpKczLvzHD
 yiLtICfsFen2/GzhmVs8GcWvTQxh1l1Uz+XKKnJKRXjqObvLvFwmWdUM74lTtAUM9dld
 a6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AFMRq7lBXVqujniSgKjrVFXGWzxFRQKvwC6SbmjmF6w=;
 b=WzqViJB4yn3zLNtPN8yF5P7BCqYKExcWHPS+yZo29laphwroFJVRpzd1siRrCiFzmT
 obV+ZDUcKsnmVYyuiIMi7DBbdFWsRrc95DZd7OldA2lqKyKJLRQJqeLpKTsdotOnAjbj
 1B5S+dARll9CBafroNjx+sWNNI5DLTpRPWZpo9UYZ0zL6WgtkVhZvkHxxRtBXn9pDa9z
 ms+AK21mLbOyoSI2xs3IpeBxScH6EqwsAluF0IvOILorNVTf8uWF3FyVc1LUmOogYz9K
 zTpc4zTuPtXbnztTcjMnYYG8+7VK7rWxBe1r/QJa0fs8bRxaej9kRaUfZR03DF45k/SG
 kJfA==
X-Gm-Message-State: APjAAAV5etgeCrBVLUqVYZzlDjJzbJdVwGg/5I7Ae1j4zKDDMC6hrWob
 ctU0zAu/UMe56tw/4DgxQI703BGWkrRatW1vvhjPBpMHAy8=
X-Google-Smtp-Source: APXvYqwvdleaN8rKWRBjGx6W9bW8nHExzowXuHN/H/r+FBOfHXTPSSzDKQ8FMVeSyxNEwd5CD5atGea3gXvU+VJiYus=
X-Received: by 2002:a9d:19a9:: with SMTP id k38mr10171320otk.93.1572642508048; 
 Fri, 01 Nov 2019 14:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191101205416.17599-1-hauke@hauke-m.de>
In-Reply-To: <20191101205416.17599-1-hauke@hauke-m.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 1 Nov 2019 14:08:16 -0700
Message-ID: <CAKxU2N_+bdeZVnowFr5J+T4xU-5b+NNAT6pTsCGCdVTpsgy3QQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_140829_296158_06F1823C 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] dnsmasq: Activate LTO
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Nov 1, 2019 at 1:55 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> This decreases the binary size when PIE ASLR is activated by 8% on MIPS BE.
A small note on LTO:

These packages do not generate libraries, but sometimes, LTO messes up
dynamic linking (static even more so).

For example: https://github.com/openwrt/packages/blob/master/libs/libwangle/Makefile#L31
is missing -flto specifically because a package that depends on it
(openr, not in the packages feed yet) fails to link libwangle when
-flto is specified for libwangle (a specific function was optimized
out of the library).
>
> old:
> 202,020 /usr/sbin/dnsmasq
>
> new:
> 185,676 /usr/sbin/dnsmasq
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  package/network/services/dnsmasq/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
> index 5c114eb1c6..e86b031e3f 100644
> --- a/package/network/services/dnsmasq/Makefile
> +++ b/package/network/services/dnsmasq/Makefile
> @@ -127,8 +127,8 @@ endef
>  Package/dnsmasq-dhcpv6/conffiles = $(Package/dnsmasq/conffiles)
>  Package/dnsmasq-full/conffiles = $(Package/dnsmasq/conffiles)
>
> -TARGET_CFLAGS += -ffunction-sections -fdata-sections
> -TARGET_LDFLAGS += -Wl,--gc-sections
I am curious why these were removed.
> +TARGET_CFLAGS += -flto
> +TARGET_LDFLAGS += -flto=jobserver
>
>  COPTS = -DHAVE_UBUS \
>         $(if $(CONFIG_IPV6),,-DNO_IPV6)
> --
> 2.20.1
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
