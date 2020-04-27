Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FB61BAAAA
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 19:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMCVp7KIFoExhzlzc2UyF7FRcsxWGOIfguPJqAMCcSk=; b=M+vyHW2ozAcvpg
	Rm7bGoPxlnu9dfGuYh7OSJjAx6GT8YpavcAY30KHPFWGeKI8HZjeW8PwrGNyns59xab6jfG/4/Qjn
	imWHEgM+FpqMu1mSL0caBl0atKmUBSpSMI8FRRWvvfI9/GlMwxNLck+ZRpv0OuCuGjifPsZCmnCQe
	cZtp7XdU7PUuE/pe9bkBG/AVHFuxBBUWnVaucZ4VI+rubIuK0akpbl2JT7cq/NNtbiIrsTRYUkqKL
	mLVrWrpcw5t1pOjccMYZka7arnUEccspLWb7T1a73NUyDJz5QMbYBvj8Z72ud9F8lWWv7/+JemVKN
	Sze2Sc+0VQ9+BLvShf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Av-0002ok-Qj; Mon, 27 Apr 2020 17:04:09 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7AP-0002Ky-Ta
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 17:03:40 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 34CADC0002;
 Mon, 27 Apr 2020 17:03:35 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:03:33 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20200427190334.75c63bb6@xps13>
In-Reply-To: <20200419125140.1307309-2-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-2-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_100338_148714_1B1E720A 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/9] mtd: rawnand: Add an is_last flag
 to nand_subop
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDE5IEFwcgoyMDIwIDE0OjUxOjMyICswMjAwOgoKPiBTb21lIGNvbnRy
b2xsZXJzIG5lZWQgdG8ga25vdyB3aGVuIHRoZXkncmUgcGFzc2VkIHRoZSBsYXN0IHN1Ym9wIHNv
Cj4gdGhleSBjYW4gZGUtYXNzZXJ0IHRoZSBDRSBwaW4uCj4gCj4gU2lnbmVkLW9mZi1ieTogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiAtLS0KClJldmll
d2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
