Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EE01D6685
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 10:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mmNbwzmQz1X7PvCnOe2lXrz5Qs2BhKLLZ/5xv5OAMEQ=; b=oktifOdTP3wnuzF54cWo7ajJB4
	f2LyRM4ZQ3x5GnOy6d4YkYfo9WnO8LAYDUKejzPMl917VfxjsacaNC1IhnWi8TpbaJvkkUep+iLe2
	JTcDr+/fMc0WgolMcV28nGt+ros8Bthw2ZP7POTXFw26hLNNTJqIODKUcM2tPwlLZzHSU4l5ACTum
	75/Ll7PdgfGOq+kUhkICwqMS3fTV8JDNQlM1KseVMUJuYueLcZ/zECXeHTdEZJbJxublEi1J57OXK
	vijAFKAe5QjNv91qSDDQXFXE/W87zt5fQrccHqvQpnABS7CbCU7JkxTJg/KhydLT1Hjeh/XcAr6dz
	azZHYOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaER9-000797-Lj; Sun, 17 May 2020 08:14:19 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaER2-00078Q-GS
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 08:14:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BE30E394D;
 Sun, 17 May 2020 10:14:06 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id afd7470e;
 Sun, 17 May 2020 10:13:50 +0200 (CEST)
Date: Sun, 17 May 2020 10:13:50 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Message-ID: <20200517081350.GG69771@meh.true.cz>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
 <c40509001d8fedcd1a1ad7ad694766cd8ac92111.1589662192.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c40509001d8fedcd1a1ad7ad694766cd8ac92111.1589662192.git.mschiffer@universe-factory.net>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_011412_696196_41C2FD62 
X-CRM114-Status: UNSURE (   4.98  )
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
Subject: Re: [OpenWrt-Devel] [PATCH libubox] blob: make blob_parse_untrusted
 more permissive
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Matthias Schiffer <mschiffer@universe-factory.net> [2020-05-16 23:13:50]:

Hi,

> Some tools like ucert use concatenations of multiple blobs. Account for
> this case by allowing the underlying buffer length to be greater than
> the blog length.

in order to prevent future regression, could you please add a test case for
this as well? Probably into tests/cram/test_blob_parse.t, thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
