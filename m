Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A05F5E4E7
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 15:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s31SBr0lNqOZpXvwHAWI1Jnz10S4PlI/yhcgfFQYu98=; b=XonKzjW9F3a7HN
	R68jcQAGdYLMzNDbbnA4AqzMTMpFTS/gLcpVops6A/NdwG22/xHKPHywn5gjzkk8sxv4wHG0zQR6+
	ZNel1FvAyXi79aJ3MmmdJvHkoED11yjPgG/kb/e6O2SPATgosy99DQgPZLwgbqPZBNlhG6LBXV+5a
	VnvwzxdCB2ZKTgJkddPQk/2hNBu0PtfZDBv4qRRfKiO/rjGuWv6XxuKs1kW28YaPFBbYLprlofiSj
	I4Hvyj1zXeyMvvpmXtfZll8HdT9Tw0bnO/XRBh/RipLfqDypYqEi72zh174jnqr0VoF55mioUWSin
	5Cwfmys89ihv98lEghGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hif2I-0004Af-LI; Wed, 03 Jul 2019 13:10:58 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hif25-00041w-2Y
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 13:10:46 +0000
X-Originating-IP: 139.18.242.240
Received: from [172.24.187.150] (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4631024000D;
 Wed,  3 Jul 2019 13:10:33 +0000 (UTC)
To: Henrique de Moraes Holschuh <henrique@nic.br>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <1976f014-56cf-3b16-00b0-638165f71f4b@aparcar.org>
 <8af76b22-8c67-f395-8330-622518aacd9e@nic.br>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <1c7a6dff-623e-f8c5-4253-c44c386f897a@aparcar.org>
Date: Wed, 3 Jul 2019 15:10:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8af76b22-8c67-f395-8330-622518aacd9e@nic.br>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_061045_428701_049D1EA1 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC]split DEVICE_TITLE in multiple variables
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDcvMy8xOSAxOjAyIFBNLCBIZW5yaXF1ZSBkZSBNb3JhZXMgSG9sc2NodWggd3JvdGU6Cj4g
RW0gMDIvMDcvMjAxOSAxNDowMSwgUGF1bCBTcG9vcmVuIGVzY3JldmV1Ogo+PiBzb21lIGRheXMg
YWdvIEkgd3JvdGUgdGhpcyBwcm9wb3NhbFswXSB0byBzcGxpdCBERVZJQ0VfVElUTEUgaW4KPj4g
REVWSUNFX1ZFTkRPUiwgREVWSUNFX01PREVMIGFuZCBERVZJQ0VfVkFSSUFOVCAoaG9sZGluZyBy
ZXZpc2lvbnMgYW5kCj4+IHN0b3JhZ2Ugc2l6ZXMgaWYgYXBwbGljYWJsZSkuCj4+Cj4+IEkgZXh0
ZW5kZWQgdGhlIGltYWdlLm1rIHRvIHRvIHVzZSB0aGUgbmV3bHkgaW50cm9kdWNlZCB2YXJpYWJs
ZXMgaWYKPj4gREVWSUNFX1RJVExFIGlzIGVtcHR5LCBtZWFuaW5nIGl0IGNhbiBiZSB1c2VkIGFz
IGEgZHJvcCBpbi4KPj4KPj4gwqDCoMKgIERFVklDRV9USVRMRSA9ICQkKERFVklDRV9WRU5ET1Ip
ICQkKERFVklDRV9NT0RFTCkkJChpZiAkJCh2YWx1ZQo+PiBERVZJQ0VfVkFSSUFOVCksICQkKERF
VklDRV9WQVJJQU5UKSkKPj4KPj4gVGhpcyBzaW1wbGlmaWVzIGFuZCB1bmlmaWVzIHRoZSBERVZJ
Q0VfVElUTEUgY3JlYXRpb24gYW5kIGludHJvZHVjZXMgdGhlCj4+IHBvc3NpYmlsaXR5IHRvIHNl
YXJjaCBhbmQgc29ydCBkZXZpY2VzIGJhc2VkIG9uIHZlbmRvciBldGMuIEEgcHJvb2Ygb2YKPj4g
Y29uY2VwdCBpcyBhdmFpbGFibGUgaGVyZVsxXS4KPj4KPj4gSW4gZnV0dXJlIFBScyBJJ2QgcmV3
b3JrIGV4aXN0aW5nIHRhcmdldHMgKG5vdCBvbmx5IGF0aDc5IGFzIGluIFswXSkgYW5kCj4+IHN1
Z2dlc3QgZGV2ZWxvcGVycyBhZGRpbmcgbmV3IGRldmljZXMgdG8gdXNlIERFVklDRV9NT0RFTCBy
YXRoZXIgdGhhbgo+PiB0aGUgZnVsbCBERVZJQ0VfVElMRSBpbiB0aGVpciBwYXRjaGVzLgo+Pgo+
PiBJJ2QgYmUgaGFwcHkgdG8gaGVhciBzb21lIGNvbW1lbnRzIQo+Cj4gSWYgdGhpcyBjaGFuZ2Vz
IHRoZSBERVZJQ0VfVElUTEUgb2Ygc29tZXRoaW5nLCBpdCB3b3VsZCBiZSByZWFsbHkKPiBoZWxw
ZnVsIHRvIGhhdmUgYSBsaXN0IG9mIHRoZSBhZmZlY3RlZCBERVZJQ0VfVElUTEVTIChvbGQgYW5k
IG5ldykKPiBwb3N0ZWQgc29tZXdoZXJlLgpUaGUgZGV2aWNlIHRpdGxlIHN0YXlzIHRoZSBzYW1l
Lgo+Cj4gT3RoZXIgdGhhbiB0aGF0IG1pbm9yIGRldGFpbCwgdGhhbmtzIGZvciBkb2luZyB0aGlz
IQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
