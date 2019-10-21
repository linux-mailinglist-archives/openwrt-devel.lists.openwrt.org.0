Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F51DF795
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 23:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qqIn/K3imyh3XJajv3z9GfMWYl9GpQRk42WBf+SrLaQ=; b=I/OJyNCWSXSHb7NKNSmsWh/uq
	u9DTcCQDtTv53/JCdIzllppuCkgj/iWzDWgPGk+FPlWtidlZK6ZyqrvvVqNoYghyjacM2dHTsCvmf
	nI5vvnX3X7iI3299wR0kA2b/TbkCQHgiTXOAVoJmmWWXKf7u4kPZn4cyDzX5KhxWTp27hPYVvqC8X
	QNw7e9EJTbfl1Oy2tkKtw2MnOI+M5fJC1S1+u4M40OrRb6fmLMKWC+EJlvTFf3rmDz13p9Epxm7ix
	leCYUfW2qCOhuYkHNtMYoCQMqnbn63SaXcRKw3oGOWffo80CI6ZXsxdIs1kq5eeMT04KJTIDFLD34
	hHbd/Lf+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfTj-00076M-7e; Mon, 21 Oct 2019 21:44:39 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfTb-00075p-Tg
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 21:44:33 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMfTY-0000hm-Qg; Mon, 21 Oct 2019 23:44:28 +0200
To: David Bauer <mail@david-bauer.net>, Hauke Mehrtens <hauke@hauke-m.de>
References: <20191021204712.30307-1-mail@david-bauer.net>
 <02ce7a5c-8c14-ccf4-141a-7440a2a09944@hauke-m.de>
 <087f1edb-5a45-9047-caee-11d8d6d4fa39@phrozen.org>
 <0a1b4fd7-76a8-112e-3c1e-9a18f173ec71@david-bauer.net>
From: John Crispin <john@phrozen.org>
Message-ID: <d712bf1b-72bd-71db-ba8c-1245e65d630b@phrozen.org>
Date: Mon, 21 Oct 2019 23:44:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <0a1b4fd7-76a8-112e-3c1e-9a18f173ec71@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_144432_118067_8BC3E7AA 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] mac80211: add rtw88 driver
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjEvMTAvMjAxOSAyMzo0MSwgRGF2aWQgQmF1ZXIgd3JvdGU6Cj4gCj4gCj4gT24gMTAvMjEv
MTkgMTE6NDAgUE0sIEpvaG4gQ3Jpc3BpbiB3cm90ZToKPj4gT24gMjEvMTAvMjAxOSAyMzoyMCwg
SGF1a2UgTWVocnRlbnMgd3JvdGU6Cj4+Pj4gK2RlZmluZSBLZXJuZWxQYWNrYWdlL3J0dzg4Cj4+
Pj4gK8KgICQoY2FsbCBLZXJuZWxQYWNrYWdlL21hYzgwMjExL0RlZmF1bHQpCj4+Pj4gK8KgIFRJ
VExFOj1SZWFsdGVrIFJUTDg4MjJCRS9SVEw4ODIyQ0UKPj4+PiArwqAgREVQRU5EUys9IEAoUENJ
X1NVUFBPUlQpICtrbW9kLW1hYzgwMjExICtARFJJVkVSXzExTl9TVVBQT1JUICtARFJJVkVSXzEx
V19TVVBQT1JUCj4+PiBQbGVhc2UgYWRkICtARFJJVkVSXzExQUNfU1VQUE9SVAo+Pj4KPj4KPj4g
VjMgaGVyZSB3ZSBnbyAuLi4uCj4gCj4gSSB3aWxsIGxlYXZlIHRoaXMgdjIgaGVyZSBhbmQgd2Fp
dCBmb3IgZnVydGhlciBmZWVkYmFjayB0byBhY2N1bXVsYXRlLgo+IAo+IEJlc3Qgd2lzaGVzCj4g
RGF2aWQKPiAKCmRvdWJ0IHRoZXJlIHdpbGwgYmUgbW9yZSwgaWYgeW91IHNlbmQgYSBhIFYzIHdp
dGggaGF1a2VzIHN1Z2dlc3Rpb25zIApmb2xkZWQgaSdsbCBtZXJnZSBpdAoJSm9obgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
