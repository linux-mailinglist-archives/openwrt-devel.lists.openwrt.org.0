Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CA81C2B86
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 13:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9/aF1VTXoYYjFarodfNsEsNeTa8ZiJEdclHCBHvP7vk=; b=BrSs4Jgd557gpgA/yT/aSDqeYp
	bVNYhexjN/KFlVBnjGAdlDg1hxqCsrgQJQLaFz2WHrqrFBSnV61L/geXrsIMCURJuzKNXMYXvVg5O
	xnp9caZMd6tNuN3FfMN1lxGHNb4L8I4v7BalMB13Fu4+hyvVP8CLN0LgCZU7R/NQHhMCUT6XV8Af4
	RIByJdLlaIfOSpPk8eO5skexavM7sqSJgYKeYSyxNwbxr6YjX/ykoRwcuQAVd61k+R9GlB77O8dTJ
	eOd+F9SZopCpSPgZnydrm/HlCKRgLsC08uUiKXglSWyTNbrtW3Q687DE6OkFbAftmO5giPBt+k7Ua
	9HRQezeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVCLp-0007se-BL; Sun, 03 May 2020 11:00:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVCLj-0007rN-VP
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 10:59:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 47FEC4270;
 Sun,  3 May 2020 12:59:46 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9ef09f3a;
 Sun, 3 May 2020 12:59:32 +0200 (CEST)
Date: Sun, 3 May 2020 12:59:32 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: "b.l.huang" <banglang.huang@foxmail.com>
Message-ID: <20200503105932.GA2108@meh.true.cz>
References: <tencent_1D0EFD4AD05C546C38A79290A0495C97BD06@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_1D0EFD4AD05C546C38A79290A0495C97BD06@qq.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_035956_158000_3854ED1A 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Kernel hang on rk3328 at branch master
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

b.l.huang <banglang.huang@foxmail.com> [2020-05-03 13:53:54]:

Hi,

>     I am trying to run openwrt on rk3328, but the kernel hanged when booting, below is the log.Any hints will be appreciated.

see https://github.com/openwrt/openwrt/pull/2945 ("rk3328: add Pine64 Rock64 board")

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
