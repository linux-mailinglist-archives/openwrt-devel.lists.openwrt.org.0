Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC04D4A6ED
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 18:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKYsN9JTFJgWWLXnJvG5YTm3+uLPQ6eAvweKOOi+wM0=; b=M5yA/bmYm79v6T
	eURBDj/6sw2sFgGSfX5ilZDs97uCBJ47H+Pi/PhTt02bcR2tqCjTrabPkwS2OQgxzjwjq9RRYxMOe
	rXjZCzkz4MXynVEq2fP9A7/cYeEZ+oK9Bm0XEGRY1U56gyV817FLwezzLz+fXoTAqoePtrMCeemFt
	oBeWoGYsABekf3XIj1FYGKopVksLQf5OJHqiWOF/SAY6o7L+TtAbSy5gmtKTsfPGFBjPIMlj63U5M
	JPvgECOZIRPOsxcEdncv6d18skj8HUdfEDAUW8WWyLWpaSbuP6jv/PHb8xRW4BztmoOfs+FEl+z9X
	iYVlQBmiQ1N1MErRNvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdH0o-0008F8-T0; Tue, 18 Jun 2019 16:31:10 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdH0Q-0007n0-SF; Tue, 18 Jun 2019 16:30:48 +0000
Received: from p5dcfbabb.dip0.t-ipconnect.de ([93.207.186.187]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hdH0O-00042F-BL; Tue, 18 Jun 2019 18:30:44 +0200
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <10485eb8-934c-cbb7-d636-5cd18b2be03e@phrozen.org>
Date: Tue, 18 Jun 2019 18:30:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_093047_124117_451D0A26 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] download server downtime
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgp0aGUgREwgc2VydmVyIHdpbGwgZ28gZG93biBpbiBhIGZldyBtaW51dGVzIGZvciBtYWlu
dGVuYW5jZSwgaWYgYWxsIGdvZXMgCndlbGwgaXQnbGwgYmUgYmFjayB1cCB3aXRoaW4gdGhlIGhv
dXIKCiDCoMKgwqAgSm9obgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
