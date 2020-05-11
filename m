Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC5A1CDFB8
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 17:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MeXS5JYj7uePu0fkPW5wAbC7vXT6h8MlBktDZSl7P0=; b=gZ36K3zWCVgzjw
	wIhfFxs/MCvHknLHpaMtJZRjWV5B3Fc7TNoO1/o/LUayG2wx9sZ1Zvv4Cg7jvKfdU0u2RTIQR59V0
	/U+hflLkCsHWpxRn0pc4pNZ0IVF4sdn4uAXjn9IZ/u2DPiyDd7tWmpNreXO1/Yvxpc0/bEAPc3nDG
	sppLqHlBFT1eDJrhw7wvg7InVVdL5rC1QcHRRu4Tc+hwKShysKTVupN2zXHoq2egVbRvj033Dv2b+
	FoyqOTALa5sZFYIrEeZ8sad3paNujVj/hBwtlELVDsyVC5wDE6XVvKsFI7LgUarnKw0OUoAhPFJ7q
	GmovP4b+N+E47gqGqtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYAkH-0003Qm-Cl; Mon, 11 May 2020 15:53:33 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYAk7-0003QR-HX
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 15:53:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id r17so4884676lff.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 08:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LOo5lg63ZZlZp1hvlzOmadpqtOBEu5BAOvnklzGW9QM=;
 b=OwbptuddUlDjmIaqCud8jNbkEBwMfYKs9CqVG7U7P1LEZhOgqQUkrOdlFwMCXPE83M
 H0hNKYi1rInmcke9rBZGQKnslz8yXMDw8IRuGPdT0og8SKGnDoJOs/HQgzTdvY3VrnbK
 XqjzgctaF5tm/tPD+RneH+mGp1ERGjPpV4ROIGmKMgAd/yxdF3dbpAscEm+ThVc8SU8W
 GIG9oFRFsPYL8QEqa3i4Okt3dVpbMyY6KVgdP2OcG819Pxi1Wtfq4eNphbsWkKlIrrT2
 +KkUNaXomfXvpHzmZAm1kRLGIouotGpLj+VqbqIKfg2Snfg4iVoelm7URmBc/q/bXkX9
 YsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LOo5lg63ZZlZp1hvlzOmadpqtOBEu5BAOvnklzGW9QM=;
 b=d/xjuY//R2GKFz+YFxq6jPs/9/WIXYsrANB8UzLyNW9XLdBtXsgyOhl3NO/CzErfm/
 uAIWYpSiCBOHw4sbNI52dfgcxn7O9spLDIt71F1zRvVuQK7SDPPi9OfgAq6GaE/EdyzW
 ehRX3hUFly5IltS+vWK25xTXrQgECQ3xJ7NL/EeFeCoyKRpylbGpWXsGJuHjbtjhgp0Z
 WWXVSCWFpNuJtVt3o2x2804H1Ewf6caCRsK3Frs+8Ioa3tMGUcx9rfqZgLkCTeh7m8PR
 2jArIbXgYsLRHjRkPOkWmwx38gvL64zYAhXHNobZ0I1UbW67Rkbqmi1KonmQdmLGuP76
 NpXQ==
X-Gm-Message-State: AOAM531hzymHDnwxD1tRF3f3bacQgaN2DcTWb3cT+8xfnHVBJkBb5xoA
 xWHxOJ6A4gZPsGXplME8O30=
X-Google-Smtp-Source: ABdhPJyds1vDaSDRf6hCgWQED5w8gqmhNnSEvatuc2Z0RNc/XAVKnwIMg/9TgVvFdFX3jgVfM7hIyw==
X-Received: by 2002:a19:ae10:: with SMTP id f16mr6866644lfc.74.1589212401661; 
 Mon, 11 May 2020 08:53:21 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id e16sm12696666lfc.63.2020.05.11.08.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:53:20 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 04BFrHFi020421; Mon, 11 May 2020 18:53:18 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 04BFrHaH020420;
 Mon, 11 May 2020 18:53:17 +0300
Date: Mon, 11 May 2020 18:53:16 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200511155316.GQ16976@home.paul.comp>
References: <20200511113702.10975-1-fe@dev.tdt.de>
 <20200511142542.GB69771@meh.true.cz>
 <20200511144355.GP16976@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511144355.GP16976@home.paul.comp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_085323_611643_59EC6A01 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard-tools: fix version
 indicator
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
Cc: dedeckeh@gmail.com, Jason@zx2c4.com, openwrt-devel@lists.openwrt.org,
 Eckert.Florian@googlemail.com, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 11, 2020 at 05:43:56PM +0300, Paul Fertser wrote:
> Probably the right way to solve this would be to have means to
> override the default git describe behaviour (and force specific
> version string instead) by a configure (or similar) flag.

Another (probably sick) idea: after cloning from git OpenWrt can
remove original .git/ and add to the archive a fake one with just a
single object and tag. I've just checked and it seems to have "git
describe --tags" working it's enough to add just three files:

refs/tags/<versionstring>
HEAD
objects/xx/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

First two files with identical content, the last should be a valid
object of type "commit" (no need to store a tree object even though
it's referenced from it).

To make "git rev-parse --verify --short HEAD" work as expected too one
can preserve just the HEAD commit object (not a tree). This way the
space requirements to store additional data inside the source archives
will be really small. This would require moving and unpacking the pack
that's usually created by git fetch --depth=1 and then removing all
the objects but one. Does this sound like a plan?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
