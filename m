Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FFBF25D9
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 04:10:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JBPVdCFP+Xh8ddGjlL/bXFNGOp0+QJyVNzHyYeHNLGQ=; b=ApFpd4RsMNi7GsNc6HeXBjpFY
	0tRCUPevhXuslymH0haI0forho8V6GodrK+XvyPykuaG6bNDZWs08rfqsah2vv+pesZd1aNSDDuSP
	e2ciyZ1ckcQTVAFws0irkw/XGBvfQUKdgSDb+Yugdg7OAFe59+3ervs+eZNQrQLC+kFiWIOQ0TQMT
	+eexcLukufEH6o5E8achHK060GaJfQUDAV3RZfyz9xkEp94SjVTkgFkLnBLLsE6L6fHo53a9imIr5
	hL3tm24e901iWruRHf+No3xiyYaV2vb/b/6XwX3vwPLrapUOBwOeC5ZQxNeaZ2et9WmNPiglnyQQ8
	OoWSzzd7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSYBH-0000m4-7V; Thu, 07 Nov 2019 03:09:55 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSYBA-0000km-KX
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 03:09:50 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id E7AE73E1B3;
 Wed,  6 Nov 2019 19:09:44 -0800 (PST)
To: Daniel Golle <daniel@makrotopia.org>
References: <20191025035753.10050-1-lede@allycomm.com>
 <20191025035753.10050-2-lede@allycomm.com>
 <20191106224748.GA1330@makrotopia.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <56b20b77-9efa-b116-efd8-0b8f1f611de2@allycomm.com>
Date: Wed, 6 Nov 2019 19:09:43 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106224748.GA1330@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_190948_678200_DAE844E9 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] build: sysupgrade-tar alt-board=
 for legacy upgrades
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

T24gMTEvNi8xOSAyOjQ3IFBNLCBEYW5pZWwgR29sbGUgd3JvdGU6Cgo+IEhpIEplZmYsCj4KPiBP
biBUaHUsIE9jdCAyNCwgMjAxOSBhdCAwODo1Nzo1MlBNIC0wNzAwLCBKZWZmIEtsZXRza3kgd3Jv
dGU6Cj4+IEZyb206IEplZmYgS2xldHNreSA8Z2l0LWNvbW1pdHNAYWxseWNvbW0uY29tPgo+Pgo+
PiBUYXJnZXRzIHRoYXQgdXNlIG5hbmRfZG9fcGxhdGZvcm1fY2hlY2soKSBjYW4ndCB1c2UgU1VQ
UE9SVEVEX0RFVklDRVMKPj4gYXMgdGhlIGNoZWNrIHJlcXVpcmVzIC4vc3lzdXBncmFkZS1sZWdh
Y3lfYm9hcmRuYW1lL0NPTlRST0wgdG8gYmUKPj4gbm9uLXplcm8gbGVuZ3RoIGFzIGV4dHJhY3Rl
ZCBmcm9tIHRoZSB0YXIgZmlsZS4gUHJldmlvdXNseSwgb25seQo+PiAuL3N5c3VwZ3JhZGUtbmV3
X2JvYXJkbmFtZS9DT05UUk9MIHdhcyBwcmVzZW50Lgo+Pgo+PiBbLi4uXQo+Pgo+PiArCj4+ICtm
b3IgYWIgaW4gJGFsdF9ib2FyZHMgOyBkbwo+PiArCVsgIiRhYiIgPSAiJGJvYXJkIiBdICYmIGNv
bnRpbnVlCj4+ICsJbWtkaXIgIiR7dG1wZGlyfS9zeXN1cGdyYWRlLSR7YWJ9LyIKPj4gKwljcCAt
dnAgIiR7dG1wZGlyfS9zeXN1cGdyYWRlLSR7Ym9hcmR9L0NPTlRST0wiICIke3RtcGRpcn0vc3lz
dXBncmFkZS0ke2FifS8iCj4gV2h5IG5vdCBqdXN0IGFkZCBhIHN5bWxpbmsgdG8gdGhlIHRhciBh
cmNoaXZlIGluc3RlYWQgb2YgYSBjb3B5Pwo+IEkga25vdyBpdCBkb2Vzbid0IG1hdHRlciBtdWNo
IGR1ZSB0byBjb21wcmVzcywgamV0IEknZCBjb25zaWRlciBpdCBhCj4gbW9yZSBjbGVhbiBzb2x1
dGlvbi4KPgoKVGhhbmtzIGZvciB0YWtpbmcgYSBsb29rIGF0IHRoaXMhCgpJZi93aGVuIEkgcGlj
ayBpdCB1cCBhZ2FpbiwgSSdsbCBkZWZpbml0ZWx5IHJlLWNoZWNrIGlmIHN5bWxpbmtzIGNhbgpi
ZSB1c2VkLgoKSXQncyBiZWVuIGEgd2hpbGUgc2luY2UgSSBhdXRob3JlZCB0aGlzLCBidXQgbXkg
cmVjb2xsZWN0aW9uIGlzIHRoYXQKc2luY2UgdGhlIHRhciBpcyBub3QgZXh0cmFjdGVkICJpbiB3
aG9sZSIgKHRvIHByZXNlcnZlIHNwYWNlLApJIGFzc3VtZSksIHRoZXJlIGlzIG5vIHRhcmdldCBv
ZiB0aGUgc3ltbGluayB0byByZWZlcmVuY2UuCgpGcm9tOiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmls
ZXMvbGliL3VwZ3JhZGUvbmFuZC5zaCAobWFzdGVyKQoKbmFuZF9kb19wbGF0Zm9ybV9jaGVjaygp
IHsKIMKgwqDCoMKgwqDCoMKgIGxvY2FsIGJvYXJkX25hbWU9IiQxIgogwqDCoMKgwqDCoMKgwqAg
bG9jYWwgdGFyX2ZpbGU9IiQyIgogwqDCoMKgwqDCoMKgwqAgbG9jYWwgY29udHJvbF9sZW5ndGg9
YCh0YXIgeGYgJHRhcl9maWxlIApzeXN1cGdyYWRlLSRib2FyZF9uYW1lL0NPTlRST0wgLU8gfCB3
YyAtYykgMj4gL2Rldi9udWxsYAogwqDCoMKgwqDCoMKgwqAgbG9jYWwgZmlsZV90eXBlPSIkKGlk
ZW50aWZ5ICQyKSIKCiDCoMKgwqDCoMKgwqDCoCBbICIkY29udHJvbF9sZW5ndGgiID0gMCAtYSAi
JGZpbGVfdHlwZSIgIT0gInViaSIgLWEgCiIkZmlsZV90eXBlIiAhPSAidWJpZnMiIF0gJiYgewog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVjaG8gIkludmFsaWQgc3lzdXBncmFkZSBm
aWxlLiIKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gMQogwqDCoMKgwqDC
oMKgwqAgfQoKIMKgwqDCoMKgwqDCoMKgIHJldHVybiAwCn0KCgpBcyB0aGlzIHdhcyBwcmltYXJp
bHkgdG8gaGFuZGxlIHVwZ3JhZGVzIGZyb20gb2xkZXIgZmlybXdhcmUgdmVyc2lvbnMsCnRoZSB1
cGdyYWRlIHRhciBuZWVkcyB0byBiZSBjb21wYXRpYmxlIHdpdGggcHJldmlvdXMgY29kZSwgd2hp
Y2gKYGdpdCBibGFtZWAgc2hvd3MgYXMgY29tbWl0IDNkY2E1YTE1OGQsIFNWTi1SZXZpc2lvbjog
NDEyMjIsIDIwMTQtMDYtMTYKCgpKZWZmCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
