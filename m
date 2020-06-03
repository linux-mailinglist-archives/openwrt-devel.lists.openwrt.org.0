Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5751ECE79
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 13:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A+6lDTYBvn4JpXZBmVwWxhk6I+JNMcyV4PctdT8pbBo=; b=R6I1DfiFpIlK5PGsgMWOEaLidR
	QKy8on+gmrR9t9QDqj4fxOS1lzScgd6I2b4M2AjEL3VGmDQtGh+FpeuSBiRTajYKN3M1mMqpmG9wq
	Ud1PrGcKpnUeYjgvRBQCq0yP1XDGOgzB4qOkUUmCHekIzzNKUUAV76GsiXlQNyPtyUyMTQHjf52eW
	J/5zAdDNh6LRkVGOtKfn7vwJIpY1UucefUGC/Er8qTG1Jh7e57zkfZ9Fp1NjIPN5OZintCZFxHC9h
	Jdlno/YON9PnyNhw/mU0xHWyeo7795rc1hjzYB+6Zdjz17/UIJNIqh0WYcC/BRauyBHNThAArtXWC
	/t4SgfKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRgA-0000qV-0i; Wed, 03 Jun 2020 11:35:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRg1-0000ox-QH
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 11:35:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DEDF544E5;
 Wed,  3 Jun 2020 13:35:18 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7e6d01ab;
 Wed, 3 Jun 2020 13:35:02 +0200 (CEST)
Date: Wed, 3 Jun 2020 13:35:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <20200603113517.GA10257@meh.true.cz>
References: <20200409130955.161319-1-t.schramm@manjaro.org>
 <20200409130955.161319-2-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409130955.161319-2-t.schramm@manjaro.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_043522_652925_42C59A52 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/1] ramips: mt7621: use higher SPI
 clock speed on Mikrotik rbm11g and rbm33g
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tobias Schramm <t.schramm@manjaro.org> [2020-04-09 15:09:55]:

> Previously the dts were using a value determined by empirical testing,
> because of a spi driver/clock bug. The bug was fixed quite some time
> ago. 33 MHz is the default clock frequency used by RouterBOOT and thus
> safe.

Saved patch to OpenWrt-Devel-v2-1-1-ramips-mt7621-use-higher-SPI-clock-speed-on-Mikrotik-rbm11g-and-rbm33g
Applying: ramips: mt7621: use higher SPI clock speed on Mikrotik rbm11g and rbm33g
error: target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts: does not exist in index
error: target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts: does not exist in index
Patch failed at 0001 ramips: mt7621: use higher SPI clock speed on Mikrotik rbm11g and rbm33g

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
