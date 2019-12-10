Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15507118B56
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 15:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=temJappgYajYAn9gzETBf7s9K2FkJ1Fwv9alK695080=; b=RtG4rUxQ1K8TpRUGK4pGHXjNUV
	V/woJksRkOkSa7NYpd6NsjEaCLIZcPWlbPXZ+/Dgi0EUpscSDolWxM36xHrVCKHcdXaxbNwp/hU7d
	zXzUzEdYqXFReRotI6uqW88VYlJ3QiHK+BUHEem6KUGS5oavgfeTGHrOIr5vj9OUFICaw68Cllpk0
	ohbvWHdNjTo4bAUAU4j0S6ufWpMeYct3RwTga0ij8bYeV4VozojDvoiHZHPbfxbe+77EcjO3UrME2
	hv1hLBAQoPSdoRlfcD1zhuLk49qpzOxmIGLMN5sEsA/3jU7x0A4O/+zFeT2t9GTctJRWh1A0WqMym
	KkOBGBwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegis-0000I0-Rc; Tue, 10 Dec 2019 14:42:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegih-0000GB-Ei
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 14:42:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 405F34D68;
 Tue, 10 Dec 2019 15:42:23 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0b767b8c;
 Tue, 10 Dec 2019 15:42:13 +0100 (CET)
Date: Tue, 10 Dec 2019 15:42:13 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Fertser <fercerpav@gmail.com>
Message-ID: <20191210144213.GH71465@meh.true.cz>
References: <20191210142420.30748-1-fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210142420.30748-1-fercerpav@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_064235_645578_2EAAB812 
X-CRM114-Status: UNSURE (   4.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [RFC][PATCH] base-files: send informational UDP
 message each second waiting
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

Paul Fertser <fercerpav@gmail.com> [2019-12-10 17:24:20]:

Hi,

> in cases when the interface is brought up faster it leads to two messages

in cases when the interface is brought up slower it leads to no message.

To me it just seems like a workaround to fix your use case, not a proper fix.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
