Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36214170F
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35qjUHxF4D0wD9CDZxQEoLZjH88VMznDqBvusMuzKGE=; b=Ilw/A4Buep0oLj
	Ic7YKH/wwL8ryxtUZICguFizVbFqKgehmn13IfzS9n+nC6ST3DrFsPmByZZRK7iUpoYUuzksRGbfZ
	whc+xmE8ATXyrXGvMKeeIJv4TmCTrx/Qs3yXIMkvbD0KbDcsQJAjiL2iqPfh3FsmQLRbur9V8egy3
	UUNMkjPETy45B9RZRbwkmzaXX7awvFoQIHpdyp77OxDwRoaGr8iaQ4x4xd2XJgSa094XgFw/rBaj7
	bvXIK9IALnhuTWOohg6fm26Htrj3fMr7EJpqAAgM6VfRcqF7DtO//Ozt+7L7xAOoeXUUSCNhzobte
	s/SgMDa8Bu+jYX0Hg65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoYU-0004Fb-LE; Tue, 11 Jun 2019 21:43:46 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoYO-0004FV-Dv
 for openwrt-devel@bombadil.infradead.org; Tue, 11 Jun 2019 21:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ECDA/CiYJ896Uq8B1k8YahjIOmVrURsLfQbj20AnPuQ=; b=hdIsP0Jc/eKWBofJLq1Pt0GCO
 HIiWuVNGs1a/Kx00lzFWJizJmvw5HCODtTrpJ3R8uzbGPNU5JqM3Tz4+CIBjH+5YfLCX/ls+MTdzh
 PctyUpurCJWYgFjROQrvCL9MALIEDBQ9zN5dc+9bKO3bhrBKtIfiYsBR49zMewFtSuN+e5wgJbNP2
 x2AU41XVy0btjOfsXSJMR/OjiweZ6uJIDVXDaR2FUEKAq2WLDitPd3G2IrVxIBpR4MOxr1khxhdT+
 9U8zXc5ntLxc14xxRw773K+bb9Y0x0x98QNQjJr+scl1ZaEjuHoo9YX5aJK0Y74dBQRVUEM2hpVCJ
 zYGe+DPfQ==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hao6V-0008Ru-UZ
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:14:53 +0000
Received: by mail-wr1-x432.google.com with SMTP id x4so11922709wrt.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ECDA/CiYJ896Uq8B1k8YahjIOmVrURsLfQbj20AnPuQ=;
 b=Aa9c3/SJr2sBGqIT9SXAW9L0ATDQVGlkGc0d0NHWpp4TVbzTl+gVBbeaI0xYOneMaa
 QLQK1plV9F1PaVZEGIwq3JlxSbGAfdfDVcziE/UcGF9TQSDDwu0u5uQa5nRe/+hVOhoh
 upDhGWm171oaogtcqolwkK1anxSiZAqD+9zVDZhMfmidxp6w1UDRdN3GyVIMIi/nXats
 JXVtcErPET8ffTQD3geEKlycNou3v2wOMWVjiktc+nEqRVUTD3EdhrG4Ioo2IKoVFcD6
 RtuPmkGmH1t6sDHiyasjFjSj7rkpUd4YsyMhybJagcYDPdKtA/E8pswyIpnCYNYzXgK6
 1qBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ECDA/CiYJ896Uq8B1k8YahjIOmVrURsLfQbj20AnPuQ=;
 b=j7ovkCleagTp0Y0mSz2VoU242ZxItSQzfFZO8BON8Zd54T+UyyrAub8P8rp0cUU2vT
 1KpS8q781QTJyOMoJZpE5wN26/fQbwTYHoX8lJ7bDe5jT9Gx/81M0/UlmFOwXo6aydsT
 d13tgc5MnsPjfBqXpojqX52iaHF8CgzdeaBJQghfcwRXvGcmMp4LrDnrOB46MC2vI0bv
 nGc9iAw8jdfJBxT/Ntt3zAlOGg41SvbLGval8diFtxX1d+ahS9LTnf6S1+18V5lDVvF1
 aUdQKRTnokKPchXRr2vgqeY/pD37vlS8t4ZOFFtfTTwYo6AsrUC0eq0/X7AVuu9jtjRj
 nD0Q==
X-Gm-Message-State: APjAAAWzNy4GGqxBur+N8ZNRwmNbGLkx0w1d6+dqQ018dzfwnBVdU6dA
 Dm9Wrukh0w2LHhOa5hyugmPw1ok1qBS+zlnXFJw=
X-Google-Smtp-Source: APXvYqy6pMPDSaSFLXUJenExtVf14D3UdS880tSmRAugvGTK46ln1h1GPTK1fTMy5kdRPiOn3X78S8k4SmT9etFg1XU=
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr2510107wrr.56.1560287564745; 
 Tue, 11 Jun 2019 14:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <f81aabc8-e8e5-42ea-37ab-2adeb4728896@linux-ipv6.be>
In-Reply-To: <f81aabc8-e8e5-42ea-37ab-2adeb4728896@linux-ipv6.be>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 11 Jun 2019 23:12:36 +0200
Message-ID: <CAOiHx=mbuuiL5G1Ay8oedPMhRFsLJZKOP06ZNfxT1ocmyrU3ZQ@mail.gmail.com>
To: Stijn Tintel <stijn@linux-ipv6.be>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] KERNEL_PATCHVER in master
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

Hi,

On Tue, 11 Jun 2019 at 23:08, Stijn Tintel <stijn@linux-ipv6.be> wrote:
>
> Hi,
>
> Since we now have a 19.07 branch, is it OK to switch KERNEL_PATCHVER for
> targets in master that have 4.19 support to 4.19?

Fine by me. The earlier we start testing 4.19, the faster we can iron
out the kinks, hopefully reducing the maturation phase of the next
release.


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
