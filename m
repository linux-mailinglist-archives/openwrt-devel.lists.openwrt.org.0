Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F7817D259
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Mar 2020 09:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=qAJiisGb3vk7IuuL0jl0jeIHeWnWrir39YyvJNfuePQ=; b=UTvl+F9aE0qKs5
	kPgq8TDAYx5msXxZSyvEALk+a+CYZo1RFDqmnx8vXK63qahaO5kBnHMEpGPme2Q/FfZgwrek3PWzZ
	C+s210Y86XWt5tTCZAQVc8KCOvW0+RQrTFl+Ta8wc7Jg5y9suI9Z6SVmcVtWNbYa40H3MRLJoLgls
	xl2jA+CPuT/5HZldA5VoYzi4viS44/4KPp4V0SxUjmm5rF4HxjBZf3wrMXGIk9Yx2/sPsyeMOo0SV
	+vdT40VoKgAYeqlx23cndU2iNvES3+xYFmxDmM7U9HKyhAY/FwfVUsfBnfLcZHa5lfbXCuTiIwJAJ
	yPnmD1A8IVgFqd/pA/+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAqtm-0006Ju-Ck; Sun, 08 Mar 2020 08:02:58 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAqtf-0006JU-Cv
 for openwrt-devel@lists.openwrt.org; Sun, 08 Mar 2020 08:02:53 +0000
X-Originating-IP: 72.234.241.177
Received: from localhost (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 32A9D20005;
 Sun,  8 Mar 2020 08:02:33 +0000 (UTC)
In-Reply-To: <20200307103448.GH86312@meh.true.cz>
Date: Sat, 07 Mar 2020 21:55:24 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-Id: <C15AJ958U3YN.1KV3WOJTDYKIL@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_000251_576538_4F02573C 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4] build: refactor JSON info files to
 `profiles.json`
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0IE1hciA3LCAyMDIwIGF0IDE6MzQgQU0gUFNULCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+
IFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4gWzIwMjAtMDMtMDUgMTI6MjY6MDNdOgo+
Cj4gSGksCj4KPiA+ICtqc29uX292ZXJ2aWV3X2ltYWdlX2luZm86IEZPUkNFCj4gPiArCVdPUktf
RElSPSQoQlVJTERfRElSKS9qc29uX2luZm9fZmlsZXMgXAo+ID4gKwkJVEFSR0VUX0RJUj0kKEJJ
Tl9ESVIpIFwKPiA+ICsJCSQoU0NSSVBUX0RJUikvanNvbl9vdmVydmlld19pbWFnZV9pbmZvLnB5
Cj4KPiBpdCB3YXMgc3VnZ2VzdGVkIG9uIElSQyB0byBub3QgY29uZnVzZSBNYWtlIGJ5IHBvcHVs
YXRpbmcgdGhlCj4gcnVsZS90YXJnZXQgaW4KPiBQeXRob24sIHNvbWV0aGluZyBsaWtlIHRoaXMg
d2FzIHN1Z2dlc3RlZCwgaXQgYXBwbGllcyBoZXJlIGFzIHdlbGwuCgpJIHRyaWVkIHNvbWV0aGlu
ZyBsaWtlIHRoZSBmb2xsb3dpbmcgYnV0IGl0IGxvb2tzIG9kZCwgY2FuIHlvdSBnaXZlIG1lCmFu
IGFkdmlzZSBvbiB0aGlzIHBsZWFzZT8KCiskKEJJTl9ESVIpL3Byb2ZpbGVzLmpzb246IEZPUkNF
CisgICAgICAgV09SS19ESVI9JChCVUlMRF9ESVIpL2pzb25faW5mb19maWxlcyBcCisgICAgICAg
ICAgICAgICAkKFNDUklQVF9ESVIpL2pzb25fb3ZlcnZpZXdfaW1hZ2VfaW5mby5weSAkQAorCgoK
Pgo+ICQoU0NSSVBUX0RJUikvanNvbl9vdmVydmlld19pbWFnZV9pbmZvLnB5ICQkQAo+Cj4gSUlS
QyBgZm9vLnB5ID4gJCRAYCB3YXNuJ3QgcmVjb21tZW5kZWQgZHVlIHRvIHRoZSBuZWVkIG9mIDAg
Ynl0ZSBsZW5ndGgKPiBmaWxlCj4gaGFuZGxpbmcuCj4KPiA+ICAgICQoQklOX0RJUikvJChjYWxs
IElNQUdFX05BTUUsJCgxKSwkKDIpKTogJChLRElSKS90bXAvJChjYWxsIElNQUdFX05BTUUsJCgx
KSwkKDIpKQo+ID4gLQljcCAkJF4gJCRACj4gPiAtCSQoaWYgJChDT05GSUdfSlNPTl9BRERfSU1B
R0VfSU5GTyksIFwKPiA+ICsJWyAtZiAkJF4gXSAmJiBjcCAkJF4gJCRAIHx8IHRydWUKPgo+IFRo
aXMgd2FzIGV4cGxhaW5lZCBpbiB0aGUgcHJldmlvdXMgcmV2aWV3IHN0ZXAuCgpJIGFkZGVkIHRo
ZSBmb2xsb3dpbmcgYXQgaXQgd29ya3MgYXMgZXhjZXB0ZWQuIEhvd2V2ZXIgaXQgYXBwZWFycyBi
YWRseQppbXBsZW1lbnRlZCB0aGF0IHRoZSBKU09OIHN1YnRhcmdldCBpcyBjYWxsZWQgYW5kIG9u
bHkgdGhlbiB0aGUKY29uZGl0aW9uYWwgaWYgY2hlY2tlZC4KCi0gICQkKF9UQVJHRVQpOiAkKEJJ
Tl9ESVIpLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSkkJChHWl9TVUZGSVgpCisgICQkKF9U
QVJHRVQpOiAkKEJJTl9ESVIpLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSkkJChHWl9TVUZG
SVgpIFwKKyAgICAgICAkKEJVSUxEX0RJUikvanNvbl9pbmZvX2ZpbGVzLyQoY2FsbCBJTUFHRV9O
QU1FLCQoMSksJCgyKSkuanNvbgoKKyAgJChCVUlMRF9ESVIpL2pzb25faW5mb19maWxlcy8kKGNh
bGwgSU1BR0VfTkFNRSwkKDEpLCQoMikpLmpzb246ICQoS0RJUikvdG1wLyQoY2FsbCBJTUFHRV9O
QU1FLCQoMSksJCgyKSkKKyAgICAgICAkKGlmICQoQ09ORklHX0pTT05fT1ZFUlZJRVdfSU1BR0Vf
SU5GTyksIFwKCj4gPiArCSQoaWYgJChDT05GSUdfSlNPTl9PVkVSVklFV19JTUFHRV9JTkZPKSwg
XAo+Cj4gWW91IGdvdCBhbHJlYWR5IHNhbWUgaGludCBmcm9tIG1lIHZpYSBlbWFpbCBhbmQgZnJv
bSBKbyBvbiBJUkMsIHRoaXMKPiBzaG91bGQgYmUKPiB0dXJuZWQgaW50byBzZXBhcmF0ZSBNYWtl
IHJ1bGUuCgpUaGFua3MgZm9yIHlvdXIgcGF0aWVuY2UhCgpCZXN0LApQYXVsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
