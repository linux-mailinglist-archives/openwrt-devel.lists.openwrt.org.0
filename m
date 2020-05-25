Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06951E0B0A
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 11:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7ql61/Y83bGyc8+PVS2/69/fPtkEUKya3Vhu+pISZwE=; b=G39qCHuS/hqwOEihHrYpl3j6zp
	XxyhrGxRKZnrj1T8l2+wqqS9MJdK39Poetbd7q4VgdNlPUvaaoFDi0ycChuw+lNHRGpSzsK+P3rNk
	JmDSp4H2XvCugu7W5OVJMVtaGqJiP7BiRcQ/QAkN7bFgZiU5twCWKNA435zNwF4KESUyGCJ/ZtSz4
	h4QTFUt/NyRLIuvQyCm7kf1jBSxCL7BZSf2GFon/YA/He/fUDlxfujertTOVyxHjA6jWLZx0dzVR+
	yC0dUmuAydhvrAsq8yBko1DRWxgvdp3ijx+kCdxl1kchWLFYEUosJtpuW0djmjS2ZdknpaEqwNwOV
	f9/iEg7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9mF-0000le-Nw; Mon, 25 May 2020 09:52:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9m6-0000lI-I3
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 09:52:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E0B50542B;
 Mon, 25 May 2020 11:51:58 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4ea666d7;
 Mon, 25 May 2020 11:51:42 +0200 (CEST)
Date: Mon, 25 May 2020 11:51:42 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Felix Fietkau <nbd@nbd.name>
Message-ID: <20200525095142.GB58206@meh.true.cz>
References: <20200525083106.30473-1-zajec5@gmail.com>
 <cac37be8-7340-76b3-4c98-eacd9e3fd24a@nbd.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cac37be8-7340-76b3-4c98-eacd9e3fd24a@nbd.name>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_025202_744988_4BD545FE 
X-CRM114-Status: UNSURE (   5.26  )
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
Subject: Re: [OpenWrt-Devel] [PATCH RFC libubox] blobmsg: another attrs
 iteration fix for blobmsg_check_array_len()
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
Cc: Jo-Philipp Wich <jo@mein.io>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 John Crispin <john@phrozen.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Chris Nisbet <nischris@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPiBbMjAyMC0wNS0yNSAxMDo1MTozNl06CgpIaSwK
Cj4gSSB0aGluayB5b3VyIHByZXZpb3VzIGZpeCBpcyBjb21wbGV0ZWx5IGZpbmUgYXMtaXMuCgpq
dXN0IEZZSSBSYWZhxYIncyBmaXggdHJpZ2dlcmVkIGZ1enplciBDSSBmYWlsdXJlWzFdLCByZWdy
ZXNzaW9uLCBJJ20gYWJsZSB0bwpyZXByb2R1Y2UgaXQgbG9jYWx5IHNvIGl0J3Mgbm90IGZhbHNl
IHBvc2l0aXZlLiBTbyBwZXJoYXBzIHRoZXJlJ3Mgc29tZQphZGRpdGlvbmFsIGNoZWNrIG1pc3Np
bmcgc29tZXdoZXJlPwoKICQgZWNobyBBUVFBQUFBQkFBQTFKUT09IHwgYmFzZTY0IC1kID4gLi90
ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC1lMGY4ZWNjNjk0ZDk2YTA5YTFmY2VkMjdiMmEwODM4YjY3
MGQzNGEwCgogJCB4eGQgLi90ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC1lMGY4ZWNjNjk0ZDk2YTA5
YTFmY2VkMjdiMmEwODM4YjY3MGQzNGEwCiAwMDAwMDAwMDogMDEwNCAwMDAwIDAwMDEgMDAwMCAz
NTI1ICAgICAgICAgICAgICAgICAuLi4uLi4uLjUlCgogJCBnZGIgLS1hcmdzIC4vYnVpbGQvdGVz
dHMvZnV6ei90ZXN0LWZ1enogLi90ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC1lMGY4ZWNjNjk0ZDk2
YTA5YTFmY2VkMjdiMmEwODM4YjY3MGQzNGEwCiBSZWFkaW5nIHN5bWJvbHMgZnJvbSAuL2J1aWxk
L3Rlc3RzL2Z1enovdGVzdC1mdXp6Li4uZG9uZS4KCiAoZ2RiKSByCgogVGhyZWFkIDEgInRlc3Qt
ZnV6eiIgcmVjZWl2ZWQgc2lnbmFsIFNJR1NFR1YsIFNlZ21lbnRhdGlvbiBmYXVsdC4KIDB4MDAw
MDdmZmZmNzBiZTJmYyBpbiBibG9iX2xlbiAoYXR0cj0weDYwMjAwMDAxMDBkNCkgYXQgbGlidWJv
eC9ibG9iLmg6MTAyCiAxMDIgICAgICAgICAgICAgcmV0dXJuIChiZTMyX3RvX2NwdShhdHRyLT5p
ZF9sZW4pICYgQkxPQl9BVFRSX0xFTl9NQVNLKSAtIHNpemVvZihzdHJ1Y3QgYmxvYl9hdHRyKTsK
CiAoZ2RiKSBidAogIzAgIDB4MDAwMDdmZmZmNzBiZTJmYyBpbiBibG9iX2xlbiAoYXR0cj0weDYw
MjAwMDAxMDBkNCkgYXQgL2xpYnVib3gvYmxvYi5oOjEwMgogIzEgIDB4MDAwMDdmZmZmNzBiZGU2
NSBpbiBibG9iX3Jhd19sZW4gKGF0dHI9MHg2MDIwMDAwMTAwZDQpIGF0IC9saWJ1Ym94L2Jsb2Iu
aDoxMTEKICMyICAweDAwMDA3ZmZmZjcwYmU0ODUgaW4gYmxvYl9wYWRfbGVuIChhdHRyPTB4NjAy
MDAwMDEwMGQ0KSBhdCAvbGlidWJveC9ibG9iLmg6MTIwCiAjMyAgMHgwMDAwN2ZmZmY3MGJlMjJi
IGluIGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuIChhdHRyPTB4NjAyMDAwMDAwMGQwLCB0eXBlPTAs
IGJsb2JfbGVuPTEwKSBhdCAvbGlidWJveC9ibG9ibXNnLmM6MTQ1CiAjNCAgMHgwMDAwMDAwMDAw
NTRmNmI2IGluIGZ1enpfYmxvYm1zZ19wYXJzZSAoZGF0YT0weDYwMjAwMDAwMDBkMCAiXDAwMVww
MDQiLCBzaXplPTEwKSBhdCAvbGlidWJveC90ZXN0cy9mdXp6L3Rlc3QtZnV6ei5jOjU3CiAjNSAg
MHgwMDAwMDAwMDAwNTRmM2M4IGluIExMVk1GdXp6ZXJUZXN0T25lSW5wdXQgKGlucHV0PTxvcHRp
bWl6ZWQgb3V0Piwgc2l6ZT0xMCkgYXQgL2xpYnVib3gvdGVzdHMvZnV6ei90ZXN0LWZ1enouYzox
MDQKICM2ICAweDAwMDAwMDAwMDA0NTlmYzIgaW4gRXhlY3V0ZUNhbGxiYWNrICgpIGF0IC90bXAv
ZmluYWwvbGx2bS5zcmMvcHJvamVjdHMvY29tcGlsZXItcnQvbGliL2Z1enplci9GdXp6ZXJMb29w
LmNwcDo1NTMKICM3ICAweDAwMDAwMDAwMDA0NDQ4ZTIgaW4gUnVuT25lVGVzdCAoKSBhdCAvdG1w
L2ZpbmFsL2xsdm0uc3JjL3Byb2plY3RzL2NvbXBpbGVyLXJ0L2xpYi9mdXp6ZXIvRnV6emVyRHJp
dmVyLmNwcDoyOTIKICM4ICAweDAwMDAwMDAwMDA0NGE0YWYgaW4gRnV6emVyRHJpdmVyICgpIGF0
IC90bXAvZmluYWwvbGx2bS5zcmMvcHJvamVjdHMvY29tcGlsZXItcnQvbGliL2Z1enplci9GdXp6
ZXJEcml2ZXIuY3BwOjc3NQogIzkgIDB4MDAwMDAwMDAwMDQ3MzlmMyBpbiBtYWluICgpIGF0IC90
bXAvZmluYWwvbGx2bS5zcmMvcHJvamVjdHMvY29tcGlsZXItcnQvbGliL2Z1enplci9GdXp6ZXJN
YWluLmNwcDoxOQogCjEuIGh0dHBzOi8vZ2l0bGFiLmNvbS9vcGVud3J0L3Byb2plY3QvbGlidWJv
eC8tL2pvYnMvNTY1MzI4OTM1CgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
