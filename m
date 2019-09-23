Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC16CBAD97
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 07:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ejrLWxkZY5FKvyW2mckg3Vdn9OJtHhr7Ng98cTP7lU0=; b=hY92NK5Uzcv3NxNzpnRpdjuN1H
	eq3lNSwNDmXd4jDFvkq/LshRnU+K3At5lHiucNCOt5KpH6qMPi8tW56wtGxHurN3h/mJXkaRwQthM
	uh1NnpaNxkez8ocQu9HQ0unNhz0iUs08xx5EQcAqBxyTR3FRuN/0NKMRYvChQnpWHv0gD03NWHPEh
	ZX2+pfBASACq+011WcsEIKPU8N58V8UKVB7GXqxtVXTyftqvrjh1ALeZixyI2uc60lSh34WB7v34N
	X0D4YkAXKsRnTRzdwgOER+b6WN0YikH0aBH5aMQ2mQn6RCXkdz63NGvsE9+ArjalvhCdaYm8zQ7W0
	HKdq2Zqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCHCS-0000Il-93; Mon, 23 Sep 2019 05:47:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCHCC-0000IB-18
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 05:47:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9EBAB4AD6;
 Mon, 23 Sep 2019 07:47:30 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 921c73bc;
 Mon, 23 Sep 2019 07:47:23 +0200 (CEST)
Date: Mon, 23 Sep 2019 07:47:23 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Eneas Queiroz <cotequeiroz@gmail.com>
Message-ID: <20190923054723.GC40628@meh.true.cz>
References: <20190917135211.21673-1-cotequeiroz@gmail.com>
 <CAPxccB0mH8Upqk3QMSxt91+=Pqowq0k=nYubzpVvD_YSKuL5yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPxccB0mH8Upqk3QMSxt91+=Pqowq0k=nYubzpVvD_YSKuL5yQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_224736_249758_8626A1ED 
X-CRM114-Status: UNSURE (   4.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] openssl: bump to 1.1.1d
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

Eneas Queiroz <cotequeiroz@gmail.com> [2019-09-22 22:29:07]:

Hi,

> Can someone please cherry pick this to 19.07:
> d868d0a5d7e1d76bb1a8980346d222fae55fa18b

done.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
