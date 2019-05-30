Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EF72F9EE
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 12:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87hGS10XWRh/QBopCxUsT/OC0hD02SVnondJXQscTmE=; b=onYRNqkzc42Z6L
	NlKWfeVQ5AfC9R2oV4d/iziP0pbY5j7WMfJwDd2FaUt4ORWvjmYa4uno9P5IdcUrAmJbe06rz6UdQ
	PgkL6h+yuREBKXLnj9Vs86WcBcsD4RTd66hJrhmmst0elp3qx5LnwTip/dcfCvNgoIy+8qs0AISfI
	ctZJRGMTFfDI1m+/3WaRlnAQp48EzvrHCuhCedUpIRZVZx48uBf/559lzsjcetLiviAftX9mR+DiY
	PEkrjlNO0+GSOEmcr+E0lpIGEaktsFFMBhNeXbZK38KN3RGL+bfV1O08+23SSwFz9zcWvCR9/4tdn
	3V3I4zH0RwMCuouNRTdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHtA-0000sR-Qq; Thu, 30 May 2019 10:02:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHt3-0000s7-Tf
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 10:02:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7EC7E4F40;
 Thu, 30 May 2019 12:02:16 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 24b92218;
 Thu, 30 May 2019 12:02:15 +0200 (CEST)
Date: Thu, 30 May 2019 12:02:15 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20190530100215.GA6848@meh.true.cz>
References: <20190527024550.16684-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527024550.16684-1-yszhou4tech@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_030218_109977_23DFE22B 
X-CRM114-Status: UNSURE (   3.44  )
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
Subject: Re: [OpenWrt-Devel] [PATCH uclient] uclient-http: set data_eof when
 content-length is 0
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

WW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+IFsyMDE5LTA1LTI3IDAyOjQ1OjUw
XToKCkhpLAoKPiBPdGhlcndpc2UgdWNsaWVudC1mZXRjaCBjYW4gcmVwb3J0ICJDb25uZWN0aW9u
IHJlc2V0IHByZW1hdHVyZWx5IgoKanVzdCBjaGVja2VkIHRoaXMsIHRoYW5rcyBmb3IgdGFraW5n
IGNhcmUgb2YgdGhpcy4KCkFja2VkLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
