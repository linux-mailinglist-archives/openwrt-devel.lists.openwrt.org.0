Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04229150A5
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 17:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAM9tHb6/FKv1XeAcEI5p19wzcS8FT8pUSxQkKYE7Rc=; b=VPN4YUymq+F3VL
	8hdEAzIe7aIwSKPiO9cHK3yTsLnFe/v58xl8aTKtHVeAzyCEhlmQanEck9ZDwRLk79Oie4jKBf8Xv
	yNsDa9pCRWL9biPIh9YLVoNuQnKXzAdE/94hr9E94lboxgCwmyjANIfRCbfh2AgMyAJBRr9aWxeJ5
	0JVyauSbPVS3GnH2AxRPy/NgwiIhw0vuNWCyVqr6q4aQ4wgtuppAm7ebs8yvxWkbOIVbCiltfRy2o
	e0zq8yxT68tSEozjNNfqdjR3GkHzB54Tc8thXf2mg9y5yXEKvfyEPBR+ZDq9bouKXFoR3jrTueJVX
	v2TsFplN6lSjdDPXu68w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfr8-00056T-Fx; Mon, 06 May 2019 15:48:42 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfr0-00055w-9u
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 15:48:36 +0000
Received: (wp-smtpd smtp.tlen.pl 28436 invoked from network);
 6 May 2019 17:48:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557157708; bh=OSZq4MnNbBoN7bNIyEIN3lkr5F0XdPO7Za+ITIweaog=;
 h=Subject:To:Cc:From;
 b=mD7UaANF8EaQs7Eq/9Nggp8T9nf2Kj8wALudyv8QD/q4eGPSrdHkp9wyyBpJ29e0N
 nYuHR8mTKxdJpUkjqrfrTbPekiEwBSVZ6bqkfAj6JaWbM1wEUDrpenJ6eZFZpCuWm2
 nAU/AoD1eiUsiQ8DcqducwCqJtQq4JQPTHXWZVXw=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 May 2019 17:48:28 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
 <69de5f77-e694-d2bd-9c67-a94173c91243@hauke-m.de>
 <20190503223803.GK71477@meh.true.cz>
 <d847ec33-e2b5-b81a-e6fc-b2d98ff23635@o2.pl>
 <20190505204255.GD81826@meh.true.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <921b8f5d-4ee6-8966-3bb0-0fb328890d3c@o2.pl>
Date: Mon, 6 May 2019 17:48:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190505204255.GD81826@meh.true.cz>
Content-Language: en-US
X-WP-MailID: 5a5117854f7325deae79a5b21aa2ebde
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IeOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_084834_662552_5E9E5E57 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDA1LjA1LjIwMTkgb8KgMjI6NDIsIFBldHIgxaB0ZXRpYXIgcGlzemU6Cj4gVG9tYXN6
IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gWzIwMTktMDUtMDQgMTY6MDE6MTFdOgo+IAo+
PiBXIGRuaXUgMDQuMDUuMjAxOSBvwqAwMDozOCwgUGV0ciDFoHRldGlhciBwaXN6ZToKPj4+Cj4+
PiBTVVBQT1JURURfREVWSUNFUyB2YXJpYWJsZSBpcyB1c2VkIGZvciB0aGlzLCBzbyBpdCdzIHBy
b2JhYmx5IGdvaW5nIHRvIHdvcmssCj4+PiBidXQgaWYgd2UncmUgd2lsbGluZyB0byByZW5hbWUg
aXQsIGl0IG1pZ2h0IGJlIGEgZ29vZCBpZGVhIHRvIGZvbGxvdyB0aGUgRFQKPj4+IGNvbXBhdGli
bGUgbmFtaW5nIHNjaGVtZSBhcyB1c2VkIGluIG90aGVyIHRhcmdldHMuCj4+Pgo+Pj4gU28gaW5z
dGVhZCBvZiB0aGlzIGluIHBhdGNoIDQvODoKPj4+Cj4+PiAgLSAgU1VQUE9SVEVEX0RFVklDRVMg
PSAkJChERVZJQ0VfRFRTKQo+Pj4gICsgIFNVUFBPUlRFRF9ERVZJQ0VTID0gJCQoZmlyc3R3b3Jk
ICQkKERFVklDRV9EVFMpKQo+Pj4KPj4+IFRvbWFzeiBzaG91bGQgYmUgZG9pbmcgZm9sbG93aW5n
Ogo+Pj4KPj4+ICAtICBTVVBQT1JURURfREVWSUNFUyA9ICQkKERFVklDRV9EVFMpCj4+PiAgKyAg
U1VQUE9SVEVEX0RFVklDRVMgPSAkKHN1YnN0IF8sJChjb21tYSksJCgxKSkKPj4KPj4gSWRlYWxs
eSB0aGF0IHdvdWxkIGJlIHRoZSBjYXNlLCB1bmZvcnR1bmF0ZWx5IHRoZXJlIGlzIGluY29uc2lz
dGVuY3kgaW4gdGhlIHVwc3RyZWFtCj4+IGR0c2VzLCBmb3IgZXhhbXBsZSAoc3RhbmQgYWZ0ZXIg
bXkgcGF0Y2ggcmVuYW1pbmcgZGV2aWNlIG5hbWVzKToKPiAKPiBmcm9tIG15IFBPViwgaXQgc2Vl
bXMgbW9yZSBjb252ZW5pZW50IHRvIHN0aWNrIHRvIERUIGNvbXBhdGlibGUsIGFzIGl0J3MgdGhl
bgo+IGdvaW5nIHRvIGJlIHJlZmVyZW5jZWQgaW4gdGhlIG90aGVyIHBsYWNlcyBhcyB3ZWxsLCBz
byBpdCdzIHByb2JhYmx5IGdvaW5nIHRvCj4gbWVhbiBsZXNzIGNvbmZ1c2lvbi4KPiAKPj4gbGlu
a3N5cy13cnQxMjAwYWMgaGFzIGNvbXBhdGlibGUgbGlua3N5cyxjYWltYW4sCj4gCj4gSSBjb3Vs
ZCBzdGlsbCBncmVwIGZvciB3cnQxMjAwYWMgd2l0aCB0aGUgZm9sbG93aW5nIGNvZGUgYW5kIGZp
bmQgb3V0IHRoZQo+IHByb3BlciBkZXZpY2UvaW1hZ2U6Cj4gCj4gIERldmljZS9saW5rc3lzX2Nh
aW1hbgo+ICAgICQoY2FsbCBEZXZpY2UvbGlua3N5cyxXUlQxMjAwQUMgKENhaW1hbikpCj4gICAg
U1VQUE9SVEVEX0RFVklDRVMgKz0gbGlua3N5cy13cnQxMjAwYWMKPiAgICAuLi4KPiAgZW5kZWYK
PiAgVEFSR0VUX0RFVklDRVMgKz0gbGlua3N5c19jYWltYW4KClRoYXQgd291bGQgYmUgY29udmVu
aWVudCBmb3IgdXMgYnV0IG5vdCBmb3IgdGhlIHBlcnNvbiBzZWFyY2hpbmcgZm9yIGZpcm13YXJl
IGluCmRvd25sb2FkIGRpcmVjdG9yeS4gUGxlYXNlIHJlYWQgdGhlIGNvbW1pdCBtZXNzYWdlIHdo
YXQgd2FzIHRoZSBpbnRlbnRpb24gb2YgdGhpcyBwYXRjaC4KCj4gCj4gYW5kIGlmIHdlJ3JlIGdv
aW5nIHRvIHJlbmFtZSBpdCwgd2Ugc2hvdWxkIGZpeCBhbGwgdGhlIHJlZmVyZW5jZXMgaW4gdGhl
IHdpa2kgYXMgd2VsbC4KPiAKPj4gbWFydmVsbC1hcm1hZGEtMzg1LWRiLWFwIC0+IG1hcnZlbGws
YTM4NS1kYi1hcAo+PiBtYXJ2ZWxsLWFybWFkYS0zNzIwLWRiIC0+IG1hcnZlbGwsYXJtYWRhLTM3
MjAtZGIKPj4gbWFydmVsbC1hcm1hZGEtODA0MC1kYiAtPiBtYXJ2ZWxsLGFybWFkYTgwNDAtZGIK
PiAKPiBzZWVtcyBvayB0byBtZS4KClRoYXQncyBhbHNvIG9rIHdpdGggbWUuIFRoZXNlIGFyZSBk
ZXYgYm9hcmRzIHNvIHNvbWVvbmUgcG9zc2Vzc2luZyBpdCwgd291bGQKaWRlbnRpZnkgdGhlbSB3
aXRob3V0IHByb2JsZW0uCgo+IAo+PiBtYXJ2ZWxsLW1hY2NoaWF0b2JpbiAtPiBtYXJ2ZWxsLGFy
bWFkYTgwNDAtbWNiaW4KPiAKPiBxdWl0ZSB3ZWlyZCwgYnV0IHRoYXQncyBhIGxpZmUsIHN0aWxs
IERFVklDRV9USVRMRSBpcyBnb2luZyB0byBtYWtlIGl0IGNsZWFyLgoKREVWSUNFX1RJVExFIGlz
IG5vdCB2aXNpYmxlIGluIGRvd25sb2FkIGRpcmVjdG9yeSwgd2l0aCB0aGlzIHdlJ2xsIGFkZCB0
byB0aGUKY29uZnVzaW9uIGluc3RlYWQgb2YgcmVkdWNpbmcgaXQuCgpJJ2xsIHByZXBhcmUgdjIg
d2l0aCBzb21ldGhpbmcgaW4gdGhlIG1pZGRsZSBvZiB3aGF0IHdhcyBkaXNjdXNzZWQuCgotLSAK
VE1OCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
