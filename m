Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE1C6B0EE
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jul 2019 23:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ggr/+daPB2yY8DUmUSZfyOmLLbjZIDHWcZxU1U8SKGg=; b=crURrFeM+blHw/LXbfZosAbK1
	bwT++67HlfS8tY9wy0/mjVJpNVYD7poeKOrKG2BXbWE7zBegIIpWzi3n8U8W0XbZ2rngeKgHqjnqH
	xEW9G+nYf+wXypp2Zuopk9yXlDiBPBOxoh+bQ/+q6wAnt3qz4MWtofhGY+iWfzAXE2aXSzBg7O2xv
	CeJq2UAsLfBvlkUie9VzRd+ibjGyID7pQqiqCarGpianXAfK/0uP1n6Wm30Pt48skUXDSKmhboZOf
	Ud6vESIyXvfH8h01OKSpLu4BNaMV5/03IrGfce7+3SqQymggVw2Luw+M9cDPScY26VURBORT8SsAR
	9WCbJ+pBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUoN-0000Rk-8g; Tue, 16 Jul 2019 21:16:36 +0000
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUlN-0005iq-1S
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jul 2019 21:13:36 +0000
Received: from player715.ha.ovh.net (unknown [10.108.57.150])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 39EC31FD680
 for <openwrt-devel@lists.openwrt.org>; Tue, 16 Jul 2019 23:13:22 +0200 (CEST)
Received: from RCM-web5.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player715.ha.ovh.net (Postfix) with ESMTPSA id 04CF47D3597C;
 Tue, 16 Jul 2019 21:13:17 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 16 Jul 2019 23:13:16 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
In-Reply-To: <20190712120549.27778-2-zajec5@gmail.com>
References: <20190712120549.27778-1-zajec5@gmail.com>
 <20190712120549.27778-2-zajec5@gmail.com>
Message-ID: <2dbb9f43fee19e7edb60d1b3b72ef859@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 4463067231442669113
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddriedtgdduieefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141329_362249_6980E2DD 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.34.195 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] imx6: get rid of
 platform_pre_upgrade()
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAxOS0wNy0xMiAxNDowNSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBUaGUgb25seSBzdGVwIGJldHdlZW4g
cGxhdGZvcm1fcHJlX3VwZ3JhZGUoKSBhbmQgcGxhdGZvcm1fZG9fdXBncmFkZSgpCj4gaXMgc3dp
dGNoaW5nIHRvIHJhbWRpc2suIEl0IHNob3VsZCBiZSBmaW5lIHRvIGNhbGwgImpmZnMycmVzZXQi
ICYKPiAidW1vdW50IiBmcm9tIHRoZSBsYXRlciBjYWxsYmFjayBhbmQgZ2V0IHJpZCBvZiB0aGUg
Zmlyc3Qgb25lLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWls
ZWNraS5wbD4KClRoYXQgcGF0Y2ggd2FzIHdyb25nLiBPbiBpbXg2ICJqZmZzMnJlc2V0IC15IiBo
YXMgdG8gYmUgY2FsbGVkIGluCnBsYXRmb3JtX3ByZV91cGdyYWRlKCkgQUtBIGJlZm9yZSB0aGUg
c3dpdGNoX3RvX3JhbWZzKCkuCgpqZmZzMnJlc2V0IGZpbmRzICJyb290ZnNfZGF0YSIgdm9sdW1l
IChlbW1jIGYyZnMgcGFydGl0aW9uIHdpdGgKInJvb3Rmc19kYXRhIiBsYWJlbCkgYW5kIGVyYXNl
cyBhbGwgZmlsZXMgZnJvbSBpdDoKPiAvZGV2L2xvb3AwIGlzIG1vdW50ZWQgYXMgL292ZXJsYXks
IG9ubHkgZXJhc2luZyBmaWxlcwoKSXQgY2Fubm90IGJlIGhhbmRsZWQgYWZ0ZXIgc3dpdGNoX3Rv
X3JhbWZzKCkgYXMgdGhhdCBmdW5jdGlvbiB1bW91bnRzCi9vdmVybGF5LgoKQmlnIHRoYW5rcyBm
b3IgUGV0ciBmb3IgY2hlY2tpbmcgdGhhdCB3aXRoIG1lIQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
