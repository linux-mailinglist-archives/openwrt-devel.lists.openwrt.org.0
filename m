Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06590FF8C0
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 11:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUHUMjbXRJ+/UOvKlapwfZBsBjee1pCWsDMtDRiYNQA=; b=qMCLXOcciC29tw
	JrZH6CAxkgDn5SvBilaMbkAM7jGM15+gepekvqQY0EtBIZ5SLBp+W6PH4FoyYxpImMPuxuZh5RCdh
	fnLD3F0dnr7ZVytp/NYEh2dMYnCXCcg5nZzFlqedUjVSm2QSnkTzLX9v1U94HwdnQXW8paaWF5ycC
	BcsQx+CGpCgrayPI5c10yHpiiBt+xa95SgiPRbwpWejxc5v2YvUCcNMwebh157HpaGCE9nnBUOGN5
	c1x6HW+KKLc+GCYD5lXTcf/g/zuwCu6Ya8dLguUAgLX38Z4x5z1Xdgfw82PlbO97S6c7sIq10ArHQ
	5Okb8XFWWb2q9rcysHMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWHij-0003iO-18; Sun, 17 Nov 2019 10:23:53 +0000
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWHiV-0003hq-Jp
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 10:23:42 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id 00119CE0993;
 Sun, 17 Nov 2019 11:23:28 +0100 (CET)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id GBreefpepncl; Sun, 17 Nov 2019 11:23:28 +0100 (CET)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id CD204CE09AA;
 Sun, 17 Nov 2019 11:23:28 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.neratec.com CD204CE09AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neratec.com;
 s=9F5C293A-195B-11E9-BBA5-B4F3B9D999CA; t=1573986208;
 bh=doZvHlvCWjwYBezktPWnkSfD8urK4lu6mFkB8YTHavs=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=pQYJYFXLxuJue9TbDicqN2PyS3+Q3/8oVzDQ6FrBI+91JVVhA4jQ5ATIAARBcOUsq
 rDYu9iVHcy2Wt+9x9wLnFBr7ZxqZpcm367BwmflMsvPAkTgxiioYETqIgH6+4n2vcS
 TVE0nM92btznX2etQNFaTdb/xpveXi/c4lKAUdxNlPpMFg4IGFEHrCUr/mchKXsZhU
 YoYUvsDbyAAAQfJszrsnZKc6GawwNvZ+CZqKsFUSULC467BRi5AfiofbuME90MJx2N
 izeckeWUXYseHWLCNTO5GO383tX3IEqqTeYpKgypT8munuHQZSiMqg6jq97z3pQuV8
 YXyelpPja6U2g==
X-Virus-Scanned: amavisd-new at neratec.com
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Uj3QOMoKTg63; Sun, 17 Nov 2019 11:23:28 +0100 (CET)
Received: from [172.29.80.6] (dynvpn-006.vpn.neratec.com [172.29.80.6])
 by mail.neratec.com (Postfix) with ESMTPSA id 9CCA4CE0993;
 Sun, 17 Nov 2019 11:23:28 +0100 (CET)
To: Piotr Dymacz <pepe2k@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191107115408.13013-1-zefir.kurtisi@neratec.com>
 <745e9302-3688-7f09-1012-14cb5b22ed08@gmail.com>
From: Zefir Kurtisi <zefir.kurtisi@neratec.com>
Message-ID: <81642625-c521-fe4a-1237-fda66e13d0f2@neratec.com>
Date: Sun, 17 Nov 2019 11:23:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <745e9302-3688-7f09-1012-14cb5b22ed08@gmail.com>
Content-Language: en-CA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_022340_119550_5430F6A9 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] uqmi: add timeout parameter
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
Cc: bjorn@mork.no, malaakso@elisanet.fi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTEvMTYvMTkgMzo1OSBQTSwgUGlvdHIgRHltYWN6IHdyb3RlOgo+IEhpIFplZmlyLAo+IAo+
IE9uIDA3LjExLjIwMTkgMTI6NTQsIFplZmlyIEt1cnRpc2kgd3JvdGU6Cj4+IFdvcmtpbmcgd2l0
aCBRdWVjdGVsIEVNMTIgTFRFLW1vZHVsZSwgd2Ugb2JzZXJ2ZQo+PiByZWd1bGFyIHN0YWxscyBv
ZiB0aGUgUU1JIGludGVyZmFjZSB3aGljaCBjYXVzZQo+PiBhIHJlcXVlc3QgaXNzdWVkIGJ5IHVx
bWkgdG8gaGFuZyBmb3JldmVyLgo+Pgo+PiBNb3N0IHJlcHJvZHVjaWJseSB0aGlzIGhhcHBlbnMg
YWZ0ZXIgdGhlIGRldmljZQo+PiBoYXMgYmVlbiBwb3dlci1jeWNsZWQgYW5kIGxlZnQgdW50b3Vj
aGVkIGZvciBhCj4+IHdoaWxlICh+IDYwcyspLiBNb3N0IG9mIHRoZSB0aW1lIHRoZSB2ZXJ5IGZp
cnN0Cj4+IFFNSSByZXF1ZXN0IGZhaWxzLCBzaW5jZSBpdCBpcyBub3QgcmVzcG9uZGVkIGJ5Cj4+
IHRoZSBtb2R1bGUuIFRoaXMgaXMgdGhlIHN0cmFjZSBmcm9tIHN1Y2ggYSBydW4KPj4gKGZyb20g
LS1nZXQtcGluLXN0YXR1cyk6Cj4+Cj4+IMKgIG9wZW4oIi9kZXYvY2RjLXdkbTAiLCBPX1JEV1J8
T19FWENMfE9fTk9DVFRZfE9fTk9OQkxPQ0t8T19MQVJHRUZJTEUpID0gNgo+PiDCoCBmY250bDY0
KDYsIEZfR0VURkwpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IDB4
MTA4MDIgKGZsYWdzCj4+IE9fUkRXUnxPX05PTkJMT0NLfE9fTEFSR0VGSUxFKQo+PiDCoCBmY250
bDY0KDYsIEZfU0VURkwsIE9fUkRXUnxPX05PTkJMT0NLfE9fTEFSR0VGSUxFKSA9IDAKPj4gwqAg
ZXBvbGxfY3RsKDMsIEVQT0xMX0NUTF9BREQsIDYsIHtFUE9MTElOfEVQT0xMUkRIVVB8RVBPTExF
VCwge3UzMj0yNjg1NjcwNzYsCj4+IHU2ND0xMTUzNDg2ODA4MjAyMzQ2NDk2fX0pID0gMAo+PiDC
oCB3cml0ZSg2LCAiXDFcMTdcMFwwXDBcMFwwXDFcIlwwXDRcMFwxXDFcMFwyIiwgMTYpID0gMTYK
Pj4gwqAgY2xvY2tfZ2V0dGltZShDTE9DS19NT05PVE9OSUMsIHt0dl9zZWM9OTUsIHR2X25zZWM9
NTgzNDQ0Nzg5fSkgPSAwCj4+IMKgIGNsb2NrX2dldHRpbWUoQ0xPQ0tfTU9OT1RPTklDLCB7dHZf
c2VjPTk1LCB0dl9uc2VjPTU4Mzc3MDI2NH0pID0gMAo+PiDCoCBlcG9sbF9wd2FpdCgzLAo+PiDC
oCBbIGhhbmcgZm9yZXZlciBdCj4+Cj4+IEFmdGVyIGtpbGxpbmcgdGhlIGJsb2NrZWQgdXFtaSBw
cm9jZXNzLCB0aGUgbmV4dAo+PiByZXF1ZXN0IHdvcmtzIGFzIGV4cGVjdGVkLgo+Pgo+PiBXZSBk
b24ndCBrbm93IHdoZXRoZXIgdGhpcyBpcyBhIGRldmljZSBGVyBpc3N1ZQo+PiAod2UgdXNlIHRo
ZSBsYXRlc3QgRU0xMkdQQVIwMUExNU00Rykgb3Igd2hldGhlcgo+PiB0aGUgZGV2aWNlIGVudGVy
cyBzb21lIHVuZG9jdW1lbnRlZCBwb3dlci1zYXZlCj4+IG1vZGUgYWZ0ZXIgaWRsaW5nIGZvciBz
b21lIHRpbWUuCj4gCj4gQ291bGQgeW91IHNoYXJlIHRoaXMgZmlybXdhcmUgdmVyc2lvbiwgaXMg
dGhhdCBhIGdlbmVyaWMgUXVlY3RlbCBvciBhIGN1c3RvbWl6ZWQKPiBvbmU/IEkgd291bGQgbGlr
ZSB0byByZXByb2R1Y2UgYW5kIGRlYnVnIHRoZSBwcm9ibGVtIGJ1dCB0aGUgRU0xMiBJIGhhdmUg
aGVyZSBoYXMKPiAnRU0xMkdQQVIwMUFfMTFfTTRHJy4KPiAKPiBBbHNvLCB3aGF0IHBsYXRmb3Jt
IGRvIHlvdSB1c2UgdGhpcyBtb2RlbSB3aXRoPwo+IAoKSGkgUGlvdHIsCgp3ZSB1c2Ugb3VyIG93
biBwcm9kdWN0cyBbMV0sIHdoaWNoIGFyZSBidWlsdCBhcm91bmQgYSBQb3dlclBDICg4NTQwKSBi
YXNlZCBwbGF0Zm9ybS4KClRoZSBGVyB3ZSByZWNlaXZlZCBmcm9tIENvZGljbyBbMl0sIFF1ZWN0
ZWwncyBkaXN0cmlidXRvciBhbmQgc3VwcG9ydCBwcm94eSBmb3IKU3dpdHplcmxhbmQuIFdlIGdl
dCBwcmV2aWV3IHZlcnNpb25zIG9uIHJlcXVlc3QsIHRoZXJlZm9yZSBJIGFtIG5vdCBzdXJlIGlm
IGl0IGNhbgpiZSBwb3N0ZWQgcHVibGljbHkuIEknbGwgY2hlY2sgZm9yIHJlc3RyaWN0aW9ucyBh
bmQgcHJvdmlkZSB0aGUgRlcgaWYgYWJsZS4KCgpDaGVlcnMKCgpbMV0gaHR0cHM6Ly93d3cubmVy
YXRlYy5jb20vcHJvZHVjdHMKWzJdIGh0dHBzOi8vd3d3LmNvZGljby5jb20vCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
