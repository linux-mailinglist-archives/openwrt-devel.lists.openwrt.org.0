Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6EDF0AF0
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 01:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KEjIPrRodhxrGCGFTH6c00WD3YxqXWivhS5xDdlF6Zs=; b=Ug/g+CLcbBygRwGNAKHkE1Rdn
	xXNzKqq16r06Hv2+MMum9c9NgDebGrIAUOpb5eJ5BTbxu73NMXUhbkoOlr8uPe0sR+TqtwZF9aJJX
	dShbMn061CsAyYl3rxlwo4OU3Bb55xyReSwZ+b5QHRd0xHn8vGy+EjnleEcqefZxu7eZQ9vd8Z11N
	SnqSpBg4VPZ0hBn0zwxv6UqnR7vi2s7n9noISMW4Y0ft3pMUVTcz6ljjnr8wezboq56HAX3mL21Mz
	3si1P3YY4teYQQdJDRp7cc4RsvT3wAgAosbtk4wzj6+zCUavt9rCtUQsGFnPghAtn3IWtcCbuA0QB
	sbDMnf4Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8zG-0001xO-4D; Wed, 06 Nov 2019 00:15:50 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8z7-0001wi-Rj
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 00:15:43 +0000
Received: from [168.105.239.25] (unknown [168.105.239.25])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 157A1240005;
 Wed,  6 Nov 2019 00:15:31 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191105232348.4710-1-ynezz@true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <fb5b2ac9-3914-a293-1e11-caa737c65c0e@aparcar.org>
Date: Tue, 5 Nov 2019 14:15:29 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191105232348.4710-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_161542_033500_E1FCD954 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] build: image: fix build breakage of
 some images
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

VGhhbmtzIGZvciBkZWJ1Z2dpbmcgdGhpcyEKCk9uIDExLzUvMTkgMToyMyBQTSwgUGV0ciDFoHRl
dGlhciB3cm90ZToKPiBDb21taXQgODgxZWQwOWVlNmUyICgiYnVpbGQ6IGNyZWF0ZSBKU09OIGZp
bGVzIGNvbnRhaW5pbmcgaW1hZ2UgaW5mbyIpCj4gaGFzIHJlbW92ZWQgdGhlIGNydWNpYWwgZW1w
dHkgbmV3IGxpbmUgZnJvbSB0aGUgaW1hZ2UgY29weSBzdGVwCj4gcmVzdWx0aW5nIGluIHRoZSBm
b2xsb3dpbmcgZXJyb3JzIGR1cmluZyBtYWtlIGZ1bmN0aW9uIGV4cGFuc2lvbjoKPgo+ICAgR1pf
U1VGRklYIDo9Cj4gICBiYXNoOiBHWl9TVUZGSVg6IGNvbW1hbmQgbm90IGZvdW5kCj4gICBNYWtl
ZmlsZTo4NjogcmVjaXBlIGZvciB0YXJnZXQgJ29wZW53cnQtYXRoNzktZ2VuZXJpYy10cGxpbmtf
YXJjaGVyLWM3LXY1LXNxdWFzaGZzLXN5c3VwZ3JhZGUuYmluJyBmYWlsZWQKPgo+IEZpeGVzOiA4
ODFlZDA5ZWU2ZTIgKCJidWlsZDogY3JlYXRlIEpTT04gZmlsZXMgY29udGFpbmluZyBpbWFnZSBp
bmZvIikKPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0t
LQo+ICAgaW5jbHVkZS9pbWFnZS5tayB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9pbWFnZS5tayBiL2luY2x1ZGUvaW1hZ2Uu
bWsKPiBpbmRleCA5NDBhZTgxMmVhOTUuLjc3ZDQ1NjcxOTcxMSAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2ltYWdlLm1rCj4gKysrIGIvaW5jbHVkZS9pbWFnZS5tawo+IEBAIC01OTcsNiArNTk3LDcg
QEAgZGVmaW5lIERldmljZS9CdWlsZC9pbWFnZQo+ICAgCQlTVVBQT1JURURfREVWSUNFUz0iJChT
VVBQT1JURURfREVWSUNFUykiIFwKPiAgIAkJJChUT1BESVIpL3NjcmlwdHMvanNvbl9hZGRfaW1h
Z2VfaW5mby5weSBcCj4gICAJKQo+ICsKPiAgIGVuZGVmCj4gICAKPiAgIGRlZmluZSBEZXZpY2Uv
QnVpbGQvYXJ0aWZhY3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
