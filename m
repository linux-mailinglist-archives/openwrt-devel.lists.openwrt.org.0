Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42719153DAC
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 04:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQFFYuMrZqSeXJB9bGRZjeHJPGqFNE2y3x2YjEZkTls=; b=p8hNxcSyN9/R1S
	8Q7GQi9c3QrLoYp86y8AY4hQt7XYLf40uRcrHma/ZZ4CvMhw2K5bmQH++6EqjZHhqUYLU2iuuBwt7
	BjPNlKf8xjsyZXNoUIDB+IevFtF5VO1B1k8D5PpGW2KTM2TPghD99VWTJL10FnyEbdwTmg/81bXJl
	IA0V/is8jDYpjRwIT6f14rRf4oPqEuBJ4ziZff0XlKaHi/yjjB5K8QuIU6ms6zF4piRN6fXgISkzN
	eUpkB7LRKquEzHf//pSGyD1T+O+1AjuHGy1JxVsa8c8cF3q75n5EoAgw6jhsAMmpCPDGG0olHl8yK
	W/LoDiZr5NP7Yfm/mPDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izY7u-0004tk-G4; Thu, 06 Feb 2020 03:46:50 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izY7l-0004tB-4P
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 03:46:42 +0000
Received: by mail-oi1-x243.google.com with SMTP id l136so3213463oig.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 19:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ip4fhNh462st9R3JeNHJc1+xbPiVBi5q4+lCJYWtsaM=;
 b=EFoIWPME6IwKDdHcpOYeXisnsJJer4jLVwsO11pevvr6izEjNIEwUnxulFNFarnJ8a
 9xYzD8n4wKnf/WdGIA9Xqk+lG4R734bqWWU2U4zZkcfmrA18n9cAtTboiXPu1zFMYWm4
 I8hIeoAVfUbLp9dc1JTa+a2xMxVJKSIF5gMCoBDxOpOuKsMk3NE5sFYeXbVPRSE097X+
 AuWVHue2V5FhDoKrot4e7uT83OLvLSp2LIcQP/Oy6/Oho3XMqvH2NIeWPvLIAqH/VKS6
 aIQRovixEFWSowV8+RKCbtUuFv/gDFE5GLFufl8rg1f7wBzNpRq/kZYBZS4NR5BqYtgR
 zg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ip4fhNh462st9R3JeNHJc1+xbPiVBi5q4+lCJYWtsaM=;
 b=sOcwBMdK9AYGKzNYmQxOzsyr0oQC7gZL4mATRT5HtVlhhCuH+SZluutIDlmKE0s5vs
 t5LBqlQZQcTdoShYvaJT41EHzuonk0/d7VgbzDclAAntEH3kDtjGVcr6s5Xdxy5H7zuZ
 /3yw7md+q75f1deptv4C7NrBOBiZPhRhx5icLf2Pg3IVQJrsRVU/t565IfhYMVll7e9b
 oZxDDdnYWQ2eZywBx43rJzbgjo0JoNvxS4yH/JTVGvT7Phy4vcHJ2GbRl3PoA4b2VJOu
 pKkK3mmfrCTu5aLpyPjX6CZOAbRIu+xNNLiaEiISE0P7lm28757fJbGq2XZfdsAOFg4Q
 gm5A==
X-Gm-Message-State: APjAAAWbGHudw0xS3kyXRR0odiR96WQEnBpD9nADM63N5phJlxHFf2DT
 k1pD4UX/6E0kPfnK8S8mlcZ1jL0AiU0qip4Gx8w=
X-Google-Smtp-Source: APXvYqzrMuLHrbzopiDPdRtRZgEYLt0N5RVN23GYjBAL/E1o7F3Yqrkt72Zb74Eir6B3QjQg52mapLIcsPcUp9emd1M=
X-Received: by 2002:aca:b70a:: with SMTP id h10mr5882255oif.20.1580960798336; 
 Wed, 05 Feb 2020 19:46:38 -0800 (PST)
MIME-Version: 1.0
References: <20200205193940.6730-1-eduardo.abinader@lancom.de>
In-Reply-To: <20200205193940.6730-1-eduardo.abinader@lancom.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 5 Feb 2020 19:46:27 -0800
Message-ID: <CAKxU2N8KhaNGGuxYeJGbpJ4jT7YyFF7d8qJovD1RymdBRWoSVg@mail.gmail.com>
To: Eduardo Abinader <eduardoabinader@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_194641_202892_E650A431 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] check: bump 0.14.0
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

On Wed, Feb 5, 2020 at 11:40 AM Eduardo Abinader
<eduardoabinader@gmail.com> wrote:
>
> From: Eduardo Abinader <eduardoabinader@gmail.com>
Wrong place. https://github.com/openwrt/packages/

What uses this?
>
> Compiled and run in x86_64.
>
> This release adds support for CMake's FetchContent.
>
> Changes:
>
>     -Add support for FetchContent in CMake
>     -Rename CMake project from 'check' to 'Check'
>     -Fix for checking for wrong tool when building docs in Autotools
>     -Fix compiler warning with printf format
> ---
>  libs/check/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/libs/check/Makefile b/libs/check/Makefile
> index 35f90c3..52a400d 100644
> --- a/libs/check/Makefile
> +++ b/libs/check/Makefile
> @@ -8,12 +8,12 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=check
> -PKG_VERSION:=0.13.0
> +PKG_VERSION:=0.14.0
>  PKG_RELEASE:=1
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
>  PKG_SOURCE_URL:=https://github.com/libcheck/check/releases/download/$(PKG_VERSION)
> -PKG_HASH:=c4336b31447acc7e3266854f73ec188cdb15554d0edd44739631da174a569909
> +PKG_HASH:=bd0f0ca1be65b70238b32f8e9fe5d36dc2fbf7a759b7edf28e75323a7d74f30b
>
>  PKG_MAINTAINER:=Eduardo Abinader <eduardoabinader@gmail.com>
>  PKG_LICENSE:=LGPL-2.1-or-later
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
